# Copyright 2024 The Bazel Authors. All rights reserved.
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

"unit tests for proto_common.toolchains"

load("@bazel_skylib//lib:partial.bzl", "partial")
load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//proto/modules:proto_common.bzl", "toolchains")

def _test_toolchains_without_incompatible_flag(ctx):
    env = unittest.begin(ctx)

    asserts.equals(env, {}, toolchains.if_legacy_toolchain({}))
    asserts.equals(env, None, toolchains.if_legacy_toolchain(None))
    asserts.equals(env, False, toolchains.if_legacy_toolchain(False))

    return unittest.end(env)

toolchains_without_incompatible_flags_test = unittest.make(_test_toolchains_without_incompatible_flag)

def _test_toolchains_with_incompatible_flag(ctx):
    env = unittest.begin(ctx)

    asserts.equals(env, {}, toolchains.if_legacy_toolchain({}))
    asserts.equals(env, {}, toolchains.if_legacy_toolchain(None))
    asserts.equals(env, {}, toolchains.if_legacy_toolchain(False))
    toolchain = toolchains.use_toolchain("//nonexistent:toolchain_type")
    asserts.equals(env, 1, len(toolchain))
    asserts.equals(env, False, toolchain[0].mandatory)
    asserts.equals(env, str(Label("//nonexistent:toolchain_type")), str(toolchain[0].toolchain_type))

    return unittest.end(env)

toolchains_with_incompatible_flag_test = unittest.make(_test_toolchains_with_incompatible_flag)

# buildifier: disable=unnamed-macro
def unittest_toolchains():
    unittest.suite(
        "test_toolchains",
        partial.make(
            toolchains_without_incompatible_flags_test,
            target_compatible_with = select({
                "//tests:incompatible_enable_proto_toolchain_resolution": ["@platforms//:incompatible"],
                "//conditions:default": [],
            }),
        ),
        partial.make(
            toolchains_with_incompatible_flag_test,
            target_compatible_with = select({
                "//tests:incompatible_enable_proto_toolchain_resolution": [],
                "//conditions:default": ["@platforms//:incompatible"],
            }),
        ),
    )
