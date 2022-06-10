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

"""All development and production dependencies of rules_proto."""

dependencies = {
    "bazel_skylib": {
        "sha256": "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
        "urls": [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        ],
    },
    "com_github_protocolbuffers_protobuf": {
        "sha256": "f1a83673cbcaff6346a8fba87a9c02c0f943a4a696b6c7d1b71586d97609db12",
        "strip_prefix": "protobuf-21.1",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v21.1.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v21.1.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b8add83f1908d417c1089167ee0e6d946d84600887ded4240e837b8b0c84202e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "4d6553ae8ce04864870415ddd6990386cd7182042f0ef2586048e4d471f0f639",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "6b4c03e1e3abc08d64fed66ea763011597317509a39096017b365d275a12551a",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "760982dee747cb9bd942ddf3501d81f4494c7581e90e48b79549c062a48c787e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "c9ac47cddd90d4c79bc55964ca9aec2f7fa06034f9bcc8215dd655b975ffd425",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "885915096dfcdbc3462bd41a88505f6cba6255bf8425b07f4857e6762e1e41ae",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-osx-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-osx-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "47c69e483148423de93aa466d7b7b763ca90d7ce699c5393b0025a678d396021",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b2cdd7fbcea687bc5c5fa5923f06266c5ec1070997cfeb6cd81d738f1bd77863",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "f27e4646a5b1aab9e2c16024f909da50bd4ae28744c6d0162e6af5fa48676fce",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-21.1-win64.zip",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_cc": {
        "sha256": "29daf0159f0cf552fcff60b49d8bcd4f08f08506d2da6e41b07058ec50cfeaec",
        "strip_prefix": "rules_cc-b7fe9697c0c76ab2fd431a891dbb9a6a32ed7c3e",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/b7fe9697c0c76ab2fd431a891dbb9a6a32ed7c3e.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/b7fe9697c0c76ab2fd431a891dbb9a6a32ed7c3e.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_java": {
        "sha256": "9a72d1bade803e1913d1e0a6f8beb35786fa3e8e460c98a56d2054200b9f6c5e",
        "strip_prefix": "rules_java-385292fcfd244186e5e5811122ed32cf214a9024",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/385292fcfd244186e5e5811122ed32cf214a9024.tar.gz",
            "https://github.com/bazelbuild/rules_java/archive/385292fcfd244186e5e5811122ed32cf214a9024.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_pkg": {
        "sha256": "8a298e832762eda1830597d64fe7db58178aa84cd5926d76d5b744d6558941c2",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.7.0/rules_pkg-0.7.0.tar.gz",
            "https://github.com/bazelbuild/rules_pkg/releases/download/0.7.0/rules_pkg-0.7.0.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_python": {
        "sha256": "e5470e92a18aa51830db99a4d9c492cc613761d5bdb7131c04bd92b9834380f6",
        "strip_prefix": "rules_python-4b84ad270387a7c439ebdccfd530e2339601ef27",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_python/archive/4b84ad270387a7c439ebdccfd530e2339601ef27.tar.gz",
            "https://github.com/bazelbuild/rules_python/archive/4b84ad270387a7c439ebdccfd530e2339601ef27.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "zlib": {
        "build_file": "@com_github_protocolbuffers_protobuf//:third_party/zlib.BUILD",
        "sha256": "91844808532e5ce316b3c010929493c0244f3d37593afd6de04f71821d5136d9",
        "strip_prefix": "zlib-1.2.12",
        "urls": [
            "https://mirror.bazel.build/zlib.net/zlib-1.2.12.tar.gz",
            "https://zlib.net/zlib-1.2.12.tar.gz",
        ],
    },
}

maven_dependencies = {
    "com_google_protobuf_protobuf_java": {
        "jar_sha256": "ad275e75ee79e6c6388198dcb9acf0db2edee64782e11b508f379c3a2a17d168",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.1/protobuf-java-3.21.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.1/protobuf-java-3.21.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "76b4340b0815e48d2b7f9c50172eb5327dbe562075d36c1514291abd96fe74aa",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.1/protobuf-java-3.21.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.1/protobuf-java-3.21.1-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "0b16133638b1455bea3449c002c7769c75962007d55e9a39c0bed55128da7f70",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.1/protobuf-java-util-3.21.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.1/protobuf-java-util-3.21.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "8696329b8367d88c61f4d639ee5c43f74de0e7a9eec8defbe8aed0064bdd28b2",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.1/protobuf-java-util-3.21.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.1/protobuf-java-util-3.21.1-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "101fd28d111ad1b95550ba45ab295cd1e8e8eb0676f66ed6705adba6042597ff",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.1/protobuf-javalite-3.21.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.1/protobuf-javalite-3.21.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "edeba9b729a6d04d751cd5d2a62694ea07dc92be9e2732594dcc9887945be7e5",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.1/protobuf-javalite-3.21.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.1/protobuf-javalite-3.21.1-sources.jar",
        ],
    },
}

def _protobuf_workspace_impl(ctx):
    ctx.symlink(ctx.attr._build, "BUILD")
    ctx.symlink(ctx.attr._protobuf_bzl, "protobuf.bzl")
    ctx.symlink(ctx.attr._protobuf_deps_bzl, "protobuf_deps.bzl")

protobuf_workspace = repository_rule(
    implementation = _protobuf_workspace_impl,
    attrs = {
        "_build": attr.label(default = "@rules_proto//proto/private:BUILD.release"),
        "_protobuf_bzl": attr.label(default = "@com_github_protocolbuffers_protobuf//:protobuf.bzl"),
        "_protobuf_deps_bzl": attr.label(default = "@com_github_protocolbuffers_protobuf//:protobuf_deps.bzl"),
    },
)

def protoc_binary(name, srcs, executable, **kwargs):
    """protoc_binary makes a copy of the protoc binary to bazel-bin.

This is a workaround to make sure protoc can be used with attributes
which don't allow files."""

    # TODO(yannic) replace this with a symlink after https://github.com/bazelbuild/bazel/pull/10695
    native.genrule(
        name = name,
        executable = True,
        srcs = srcs,
        outs = [executable],
        cmd_bash = "cp $< $@ && chmod +x $@",
        cmd_bat = "copy $< $@",
        **kwargs
    )
