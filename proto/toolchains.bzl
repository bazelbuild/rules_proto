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

"""Toolchains required to use rules_proto."""

load("//proto/private/protoc:prebuilt_protoc_toolchain.bzl", "prebuilt_protoc_repo")
load("//proto/private/protoc:protoc_toolchains.bzl", "protoc_toolchains_repo")
load("//proto/private/protoc:versions.bzl", "PROTOC_PLATFORMS")

def rules_proto_toolchains(name, version, register = True):
    """A utility method to load all Protobuf toolchains.

    Args:
        name: base name for generated repositories, allowing multiple protoc versions.
        version: a release tag from protocolbuffers/protobuf, e.g. 'v25.3'
        register: whether to register the resulting toolchains.
            Should be True for WORKSPACE and False under bzlmod.
    """

    for platform in PROTOC_PLATFORMS.keys():
        prebuilt_protoc_repo(name = ".".join([name, platform]), platform = platform, version = version)
    protoc_toolchains_repo(name = name, user_repository_name = name)
    if register:
        native.register_toolchains("@{}//:all".format(name))
