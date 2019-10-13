# Copyright 2019 The Bazel Authors. All rights reserved.
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

"""Contains the implementation of `proto_toolchain`."""

load("//proto/private:native.bzl", "native_proto_common")

_has_protoc_key = "has_protoc_do_not_use_or_we_will_break_you_without_mercy"
_protoc_key = "protoc_do_not_use_or_we_will_break_you_without_mercy"
_protocopt_key = "protocopt_do_not_use_or_we_will_break_you_without_mercy"
_strict_deps_key = "strict_deps_do_not_use_or_we_will_break_you_without_mercy"

def _proto_toolchain_impl(ctx):
    config = ctx.fragments.proto
    return [
        platform_common.ToolchainInfo(
            compiler = ctx.attr._compiler.files_to_run,
            compiler_options = getattr(config, _protocopt_key, []),
            strict_deps = getattr(config, _strict_deps_key, "ERROR"),
        ),
    ]

def _compiler_default_value():
    """Helper for accessing the value of `--proto_compiler`.

    In case Bazel does not or allow accessing the actual value of the
    command-line option, `@com_google_protobuf//:protoc` is used (which is the
    default value of `--proto_compiler`).

    Returns: The value of `--proto_compiler`.
    """

    if not hasattr(native_proto_common, _has_protoc_key):
        # Use a sane default in case the value of `--proto_compiler` is not
        # available.
        return "@com_google_protobuf//:protoc"

    return configuration_field("proto", _protoc_key)

proto_toolchain = rule(
    implementation = _proto_toolchain_impl,
    attrs = {
        # Currently configured by `--proto_compiler`.
        "_compiler": attr.label(
            mandatory = False,
            executable = True,
            cfg = "host",
            default = _compiler_default_value(),
        ),
    },
    fragments = [
        "proto",
    ],
    provides = [
        platform_common.ToolchainInfo,
    ],
)
