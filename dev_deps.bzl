# Copyright 2023 The Bazel Authors. All rights reserved.
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

"""dev dependencies needed to develop rules_proto"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_proto_dev_deps():
    http_archive(
        name = "io_bazel_stardoc",
        sha256 = "dfbc364aaec143df5e6c52faf1f1166775a5b4408243f445f44b661cfdc3134f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.6/stardoc-0.5.6.tar.gz",
            "https://github.com/bazelbuild/stardoc/releases/download/0.5.6/stardoc-0.5.6.tar.gz",
        ],
    )

    http_archive(
        name = "rules_cc",
        sha256 = "4aeb102efbcfad509857d7cb9c5456731e8ce566bfbf2960286a2ec236796cc3",
        strip_prefix = "rules_cc-2f8c04c04462ab83c545ab14c0da68c3b4c96191",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
        ],
    )

    http_archive(
        name = "com_google_googletest",
        sha256 = "81964fe578e9bd7c94dfdb09c8e4d6e6759e19967e397dbea48d1c10e45d0df2",
        strip_prefix = "googletest-release-1.12.1",
        urls = [
            "https://mirror.bazel.build/github.com/google/googletest/archive/refs/tags/release-1.12.1.tar.gz",
            "https://github.com/google/googletest/archive/refs/tags/release-1.12.1.tar.gz",
        ],
    )

    http_archive(
        name = "bazelci_rules",
        sha256 = "eca21884e6f66a88c358e580fd67a6b148d30ab57b1680f62a96c00f9bc6a07e",
        strip_prefix = "bazelci_rules-1.0.0",
        urls = [
            "https://github.com/bazelbuild/continuous-integration/releases/download/rules-1.0.0/bazelci_rules-1.0.0.tar.gz",
        ],
    )

    http_archive(
        name = "com_google_protobuf",
        sha256 = "75be42bd736f4df6d702a0e4e4d30de9ee40eac024c4b845d17ae4cc831fe4ae",
        strip_prefix = "protobuf-21.7",
        urls = [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v21.7.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v21.7.tar.gz",
        ],
    )
