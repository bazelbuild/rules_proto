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

"""Contains a repository rule for configuring rules_proto."""

_config = """
# GENERATED CODE -- DO NOT EDIT!

bazel_version = "{bazel_version}"
""".strip()

def _proto_bazel_config_impl(repository_ctx):
    repository_ctx.file("BUILD")
    repository_ctx.symlink(repository_ctx.attr.defs, "defs.bzl")

    config = _config.format(
        bazel_version = native.bazel_version,
    )
    repository_ctx.file("config.bzl", config)

proto_bazel_config = repository_rule(
    implementation = _proto_bazel_config_impl,
    attrs = {
        "defs": attr.label(
            mandatory = True,
        ),
    },
)
