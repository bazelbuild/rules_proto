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

"""Dependencies required to use rules_proto."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_proto_dependencies():
    """An utility method to load all dependencies of `rules_proto`.

    Loads the remote repositories used by default in Bazel.
    """
    maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        ],
    )
    maybe(
        http_archive,
        name = "rules_license",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_license/releases/download/0.0.7/rules_license-0.0.7.tar.gz",
            "https://github.com/bazelbuild/rules_license/releases/download/0.0.7/rules_license-0.0.7.tar.gz",
        ],
        sha256 = "4531deccb913639c30e5c7512a054d5d875698daeb75d8cf90f284375fe7c360",
    )

    maybe(
        http_archive,
        name = "bazel_features",
        sha256 = "0f23d75c7623d6dba1fd30513a94860447de87c8824570521fcc966eda3151c2",
        strip_prefix = "bazel_features-1.4.1",
        url = "https://github.com/bazel-contrib/bazel_features/releases/download/v1.4.1/bazel_features-v1.4.1.tar.gz",
    )

    maybe(
        http_archive,
        name = "rules_cc",
        sha256 = "4aeb102efbcfad509857d7cb9c5456731e8ce566bfbf2960286a2ec236796cc3",
        strip_prefix = "rules_cc-2f8c04c04462ab83c545ab14c0da68c3b4c96191",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
        ],
    )
