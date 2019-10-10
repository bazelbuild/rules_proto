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

"""Unit-test to verify that the Starlark `proto_common` shim contains all fields
of the native version of `proto_common`, excluding fields that are considered
to be an implementation detail (thus not part of the public API).
"""

load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//proto:defs.bzl", "proto_common")
load("//proto/private:native.bzl", "native_proto_common")  # buildifier: disable=bzl-visibility

def _impl(ctx):
    """Verifies that the Starlark `proto_common` contains all necessary fields.

    Args:
      ctx: The rule context.

    Returns: A (not further specified) sequence of providers.
    """

    env = unittest.begin(ctx)

    for field in dir(native_proto_common):
        # Starlark `proto_common` only exports fields that are part of the
        # stable and supported API of native `proto_common`.
        if not field.endswith("_do_not_use_or_we_will_break_you_without_mercy"):
            asserts.true(env, hasattr(proto_common, field))
        else:
            asserts.false(env, hasattr(proto_common, field))

    return unittest.end(env)

proto_common_contains_native_fields_test = unittest.make(_impl)
