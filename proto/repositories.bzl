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

"""Dependencies and toolchains required to use rules_proto."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")
load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//proto/private:dependencies.bzl", "dependencies", "maven_dependencies", "protobuf_workspace")

def rules_proto_dependencies():
    """An utility method to load all dependencies of `rules_proto`.

    Loads the remote repositories used by default in Bazel.
    """

    for name in dependencies:
        maybe(http_archive, name, **dependencies[name])
    for name in maven_dependencies:
        maybe(java_import_external, name, **maven_dependencies[name])

    # TODO: Add this to proto/private/dependencies.bzl when it's released on
    # GitHub (should be available since 3.20.0).
    maybe(
        http_file,
        name = "com_google_protobuf_protoc_macos_aarch64",
        executable = True,
        urls = [
            "https://repo1.maven.org/maven2/com/google/protobuf/protoc/3.17.3/protoc-3.17.3-osx-aarch_64.exe",
        ],
        sha256 = "2bfa83d8f881f8535d209dc3d2da9e84298390b80b723c00304f235a1b5fdba3",
    )

    protobuf_workspace(name = "com_google_protobuf")

def rules_proto_toolchains():
    """An utility method to load all Protobuf toolchains."""

    # Nothing to do here (yet).
    pass
