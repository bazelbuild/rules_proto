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
        "sha256": "4a7e87e4166c358c63342dddcde6312faee06ea9d5bb4e2fa87d3478076f6639",
        "strip_prefix": "protobuf-21.5",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v21.5.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v21.5.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "60744ee6be123f86921c86d83d0060a7261410e246eca9e7a5c195100a89d391",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "72d6a66a8dc865928f5b4f33817fae650f3be53c79d762f9d1a9004d23981803",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "a80dadac9b4fa1e4db01a64423e36af5c336fb124dbfab15e8db7be86a611211",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "d5bf7641794e13e808c5b4a78facee1802fc2b9d5936c808440d213f1b6dcb84",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "92fb4f5066a6f7b870e09c73115a2c861852af8f6555d8da9955fdb80710bf7f",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b22aed8dce62656687c6c4a323aab4e6baf1cb81ee423e77bc671bd69679e2c3",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-osx-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-osx-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "495d86aaaf5e8b536fbf04471ee9d7b21addeee5f1e949742c67bd09bb59c890",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "aebf80fc77f1b7e6e3f46b737dffdc5fb8bcb8e75e89c8b56bf37c88aaa044ad",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "1ecae2968d2f28364c3f43c55f687dd159568dc6b1b0dc7e1e93d99bccb896a6",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.5/protoc-21.5-win64.zip",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_cc": {
        "sha256": "4aeb102efbcfad509857d7cb9c5456731e8ce566bfbf2960286a2ec236796cc3",
        "strip_prefix": "rules_cc-2f8c04c04462ab83c545ab14c0da68c3b4c96191",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/2f8c04c04462ab83c545ab14c0da68c3b4c96191.tar.gz",
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
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.5/protobuf-java-3.21.5.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.5/protobuf-java-3.21.5.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "89a9038e7994b739cb86a37d22bc4e3feb4473fb041dfc9962263701d193debb",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.5/protobuf-java-3.21.5-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.5/protobuf-java-3.21.5-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "0b16133638b1455bea3449c002c7769c75962007d55e9a39c0bed55128da7f70",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.5/protobuf-java-util-3.21.5.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.5/protobuf-java-util-3.21.5.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "d186e9c3a86d1bdc40594b6373968f5f511a163af029c3dad9a91b9728c3b525",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.5/protobuf-java-util-3.21.5-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.5/protobuf-java-util-3.21.5-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "af39f44ff50d8f1ab4cc12b8a25d69638e7b42e6809c09073d8c02e32526993e",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.5/protobuf-javalite-3.21.5.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.5/protobuf-javalite-3.21.5.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "184da632538ac0ede0bbf28ab014d193f4ca3e473979cd9ac4807a857e7bc089",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.5/protobuf-javalite-3.21.5-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.5/protobuf-javalite-3.21.5-sources.jar",
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
