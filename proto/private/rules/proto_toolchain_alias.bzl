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

"""A toolchain alias for Protobuf rules.

Exposes the Protobuf toolchain to rules that cannot add the proto toolchain as
a required toolchain (yet).

This is for migration only, do not expose rule definition publicly!
"""

def _proto_toolchain_alias_impl(ctx):
    return [
        ctx.toolchains["@rules_proto//proto:toolchain_type"],
    ]

proto_toolchain_alias = rule(
    implementation = _proto_toolchain_alias_impl,
    provides = [
        platform_common.ToolchainInfo,
    ],
    toolchains = [
        "@rules_proto//proto:toolchain_type",
    ],
    # TODO(yannic): Remove after `--incompatible_override_toolchain_transition` is flipped.
    # https://github.com/bazelbuild/bazel/issues/11584
    incompatible_use_toolchain_transition = True,
)
