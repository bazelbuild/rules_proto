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

"""A Starlark implementation of the proto_toolchain rule."""

load("@bazel_features//:features.bzl", "bazel_features")
load("//proto:proto_common.bzl", "ProtoLangToolchainInfo", "proto_common")

def _impl(ctx):
    kwargs = {}
    if getattr(proto_common, "INCOMPATIBLE_PASS_TOOLCHAIN_TYPE", False):
        kwargs["toolchain_type"] = "//proto:toolchain_type"

    # allowlist_different_package is only available after Bazel versions > 6.4.0
    # therefore needs to be set conditionally. We are using bazel_features for this
    # but there's no specific feature flag for `allowlist_different_package` so we'll
    # just use module_extension_has_os_arch_dependent which checks if Bazel version >= 6.4.0
    # See: https://github.com/protocolbuffers/protobuf/pull/14590#discussion_r1398778415
    # See: https://github.com/bazel-contrib/bazel_features/blob/443861571a389ddc16d17690ab8e46ee87b4ea57/features.bzl#L25C5-L25C43
    if True:  # bazel_features.external_deps.module_extension_has_os_arch_dependent:
        kwargs["allowlist_different_package"] = None

    return [
        DefaultInfo(
            files = depset(),
            runfiles = ctx.runfiles(),
        ),
        platform_common.ToolchainInfo(
            proto = ProtoLangToolchainInfo(
                out_replacement_format_flag = ctx.attr.command_line,
                output_files = ctx.attr.output_files,
                plugin = None,
                runtime = None,
                proto_compiler = ctx.attr.proto_compiler.files_to_run,
                protoc_opts = ctx.fragments.proto.experimental_protoc_opts,
                progress_message = ctx.attr.progress_message,
                mnemonic = ctx.attr.mnemonic,
                **kwargs
            ),
        ),
    ]

proto_toolchain = rule(
    _impl,
    attrs =
        {
            "progress_message": attr.string(default = "Generating Descriptor Set proto_library %{label}"),
            "mnemonic": attr.string(default = "GenProtoDescriptorSet"),
            "command_line": attr.string(default = "--descriptor_set_out=%s"),
            "output_files": attr.string(values = ["single", "multiple", "legacy"], default = "single"),
            "proto_compiler": attr.label(
                cfg = "exec",
                executable = True,
                allow_files = True,  # Used by mocks in tests. Consider fixing tests and removing it.
            ),
        },
    provides = [platform_common.ToolchainInfo],
    fragments = ["proto"],
)
