# Copyright 2022 The Bazel Authors. All rights reserved.
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

# Redefine native symbols with a new name as a workaround for
# exporting them in `//proto:defs.bzl` with their original name.
#
# While we cannot force users to load these symbol due to the lack of a
# allowlisting mechanism, we can still export them and tell users to
# load it to make a future migration to pure Starlark easier.


"""Adding missing bzlmod dependencies."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def remote_coverage_tools():
    http_archive(
        name = "remote_coverage_tools",
        sha256 = "cd14f1cb4559e4723e63b7e7b06d09fcc3bd7ba58d03f354cdff1439bd936a7d",
        urls = ["https://mirror.bazel.build/bazel_coverage_output_generator/releases/coverage_output_generator-v2.5.zip"],
    )

def _coverage_deps_extension_impl(_ctx):
    remote_coverage_tools()

coverage_deps_ext = module_extension(
    implementation = _coverage_deps_extension_impl,
)
