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
        "sha256": "b07772d38ab07e55eca4d50f4b53da2d998bb221575c60a4f81100242d4b4889",
        "strip_prefix": "protobuf-3.20.0",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.20.0.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.20.0.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "9bf7091569462e8349fe7d7584502b5d2c3bf8f4aafb4fcbdc465895158fd13e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "22936d06bfccad88aefb4277c11b73c64c2a84b54c4a80541a79012e0fcb967e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "df7bedb7ed67b35c22ebd06ccf9d5d20c2cb66ae6409d041a7fc977a46fe5280",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b2e29ac3f25fe22e8681c368c18860f610022105df8b64640e24f4e2eb9eaa48",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "75d8a9d7a2c42566e46411750d589c51276242d8b6247a5724bac0f9283e05a8",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-osx-aarch64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-osx-aarch64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "8b35a679c99b36caef5899e596281fe0b943ed248f7d5f70b3e705684bf67cb4",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b4558739ad46d47c2e2b9529726e9d035850cda01c5d32a22d7e6a19c6322c20",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "70fbfdb38f2337c44da00b69eb4ba5d68182bbaab3f805a1a07ccdf1ff3923cc",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.20.0/protoc-3.20.0-win64.zip",
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
        "sha256": "a89e203d3cf264e564fcb96b6e06dd70bc0557356eb48400ce4b5d97c2c3720d",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
            "https://github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
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
        "sha256": "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
        "strip_prefix": "zlib-1.2.11",
        "urls": [
            "https://mirror.bazel.build/zlib.net/zlib-1.2.11.tar.gz",
            "https://zlib.net/zlib-1.2.11.tar.gz",
        ],
    },
}

maven_dependencies = {
    "com_google_protobuf_protobuf_java": {
        "jar_sha256": "cb9256793672c937a09e38b84dcf36f9a8bed7995e49f01898a9eda72649113f",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.20.0/protobuf-java-3.20.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.20.0/protobuf-java-3.20.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "c5240ffc85d924948a3fa508037e4d3e36c3e0e466ee083da87ce1c0d8c5c7ef",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.20.0/protobuf-java-3.20.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.20.0/protobuf-java-3.20.0-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "6c78fb24344da44e0ada1952322e4d7ebe2ed32b4270355fc8d66ea69eb8412a",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.20.0/protobuf-java-util-3.20.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.20.0/protobuf-java-util-3.20.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "af75212e29f12af383957aa9bbfbc5e37fb94bac57d7498be2035e807c25698f",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.20.0/protobuf-java-util-3.20.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.20.0/protobuf-java-util-3.20.0-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "26b98b9f8471b1859447c7a3572b51f56088ef74b144464a2e8d1e33e5e7a92e",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.20.0/protobuf-javalite-3.20.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.20.0/protobuf-javalite-3.20.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "eb243cf79b2f80069a68a41b03eb915e4daa956aa22308551c0cab66e3646dd7",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.20.0/protobuf-javalite-3.20.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.20.0/protobuf-javalite-3.20.0-sources.jar",
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
