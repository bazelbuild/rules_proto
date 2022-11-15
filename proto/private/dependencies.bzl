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
        "sha256": "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
        "urls": [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        ],
    },
    "com_github_protocolbuffers_protobuf": {
        "sha256": "75be42bd736f4df6d702a0e4e4d30de9ee40eac024c4b845d17ae4cc831fe4ae",
        "strip_prefix": "protobuf-21.7",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v21.7.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v21.7.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "2696a8f9a61ce67c510d000c88e2d0a8b5adf1f90514e461e8d8943c46d04737",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "ffa8298f1e64d25e09e2389edf8093fa1a70d34a042623aca769b4f7815e5490",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "983c1139e0e4ce6121028e0408919cd7a35a5c813f2df40066b05f822c1df226",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "f245128a20586fc24dcd3f64a417313a228372fb37fe108d039b8927489b1b88",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "0a260c6df439bcf1ecdd5e38e7a7648e4edf99c1a22a4cc66ce8e62c53bdb837",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "f79a67d708aba6ff2c6208578a6f2bf94f1528795aed646b65e99d4a678c97f8",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-osx-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-osx-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "cd3609fa1efc73db9c58fc63e40b240558eb2a8080b4fbfbe1c4b93bbedecc20",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "1e3856cc5fc5074e566c7b8da90f74d2b5b6a80e3df9eafb4a86f7bb8ab32772",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "954cc5dfdb1d95d4c448c40f274d3720c018f73187b0c19b3c4f9bacc48d1ff0",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v21.7/protoc-21.7-win64.zip",
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
        "jar_sha256": "a204ec68748a7b26351ae37a311e8de468f248d1916d5f8dbe812c1289d0a0ff",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.7/protobuf-java-3.21.7.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.7/protobuf-java-3.21.7.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "c664e12e6e3fea801477edf95014980a8a96528d3904d2add90c68b5d047a6c2",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.7/protobuf-java-3.21.7-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.21.7/protobuf-java-3.21.7-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "9b98a2a4eb9ebc6103b14ab81badb82e32c8fe1d751aa4055830424974b7e142",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.7/protobuf-java-util-3.21.7.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.7/protobuf-java-util-3.21.7.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "43b9188848b01cec71d34326868e25c102b2a344c6ef1072d54c3681559c5f57",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.7/protobuf-java-util-3.21.7-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.21.7/protobuf-java-util-3.21.7-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "43945d791ece2012bb9086907e124ff814afd4014209f67cc89e7f324390c061",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.7/protobuf-javalite-3.21.7.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.7/protobuf-javalite-3.21.7.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "e1c557e98c59d10dbd657c69a1e15b7585a592402f12c78026f9d0bfb605c310",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.7/protobuf-javalite-3.21.7-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.21.7/protobuf-javalite-3.21.7-sources.jar",
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
