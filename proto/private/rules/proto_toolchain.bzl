# Copyright 2021 The Bazel Authors. All rights reserved.
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

"""A toolchain for Protobuf rules."""

def _proto_toolchain_impl(ctx):
    return [
        platform_common.ToolchainInfo(
            protoc = ctx.attr.protoc[DefaultInfo].files_to_run,
            protoc_options = ctx.attr.protoc_options,
        ),
    ]

proto_toolchain = rule(
    implementation = _proto_toolchain_impl,
    attrs = {
        "protoc": attr.label(
            mandatory = True,
            executable = True,
            cfg = "exec",
            doc = """
The label to the `protoc` binary.
""",
        ),
        "protoc_options": attr.string_list(
            mandatory = False,
            doc = """
Additional options to pass to `protoc`.
""",
        ),
    },
    provides = [
        platform_common.ToolchainInfo,
    ],
    fragments = [
        "proto",
    ],
    doc = """
Defines a Protobuf toolchain.
""",
)
