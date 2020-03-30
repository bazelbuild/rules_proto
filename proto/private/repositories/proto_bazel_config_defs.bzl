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

"""Implementation of `@proto_bazel_config//:defs.bzl`."""

load("@bazel_skylib//lib:versions.bzl", "versions")
load("//:config.bzl", "bazel_version")

def proto_toolchain_type(name, visibility):
    """Helper function for creating the proto toolchain type.

    This macro creates an alias target if
    `@bazel_tools//tools/proto:toolchain_type` exists,
    and a new toolchain type otherwise.

    Args:
      name: The name of the target.
      visibility: The visibility of the target.
    """

    if versions.is_at_least("3.1.0", bazel_version):
        native.alias(
            name = name,
            actual = "@bazel_tools//tools/proto:toolchain_type",
            visibility = visibility,
        )
        return

    native.toolchain_type(
        name = name,
        visibility = visibility,
    )
