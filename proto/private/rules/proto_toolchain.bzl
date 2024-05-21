# Copyright 2023 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Macro wrapping the proto_toolchain implementation.

The macro additionally creates toolchain target when toolchain_type is given.
"""

load(":proto_toolchain_rule.bzl", _proto_toolchain_rule = "proto_toolchain")

def proto_toolchain(*, name, proto_compiler, exec_compatible_with = []):
    """Creates a proto_toolchain and toolchain target for proto_library.

    Toolchain target is suffixed with "_toolchain".

    Args:
      name: name of the toolchain
      proto_compiler: (Label) of either proto compiler sources or prebuild binaries
      exec_compatible_with: ([constraints]) List of constraints the prebuild binary is compatible with.
    """
    _proto_toolchain_rule(name = name, proto_compiler = proto_compiler)

    native.toolchain(
        name = name + "_toolchain",
        toolchain_type = "//proto:toolchain_type",
        exec_compatible_with = exec_compatible_with,
        target_compatible_with = [],
        toolchain = name,
    )

def _current_proto_toolchain_impl(ctx):
    toolchain = ctx.toolchains[ctx.attr._toolchain]

    direct = [toolchain.proto.proto_compiler.executable]
    transitive = []
    files = depset(direct, transitive = transitive)
    return [
        toolchain,
        platform_common.TemplateVariableInfo({
            "PROTOC": str(toolchain.proto.proto_compiler.executable.path),
        }),
        DefaultInfo(
            runfiles = ctx.runfiles(transitive_files = files),
            files = files,
        ),
    ]

current_proto_toolchain = rule(
    doc = """
    This rule exists so that the current protoc toolchain can be used in the `toolchains` attribute of
    other rules, such as genrule. It allows exposing a protoc toolchain after toolchain resolution has
    happened, to a rule which expects a concrete implementation of a toolchain, rather than a
    toolchain_type which could be resolved to that toolchain.
    """,
    implementation = _current_proto_toolchain_impl,
    attrs = {
        "_toolchain": attr.string(default = str(Label("@rules_proto//proto:toolchain_type"))),
    },
    toolchains = [
        str(Label("@rules_proto//proto:toolchain_type")),
    ],
)
