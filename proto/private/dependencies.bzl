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
        "sha256": "0b6494b6e1a8d197f6626ca0c5aa9ab35fc1e5aa3f724787133ce4fa4aa78499",
        "strip_prefix": "protobuf-22.1",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v22.1.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v22.1.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "204e23069dc59bda1df5d66425c12373be39d71946fa378c3d7af44abbd651e9",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b96c22e4b69dab9b255fd666431b7c99a4817710a1134e14d867475db9139a79",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "7b8b4cc34cde81ff93d34b2d9f045e9b33d3a229f3efff75cd41e4f05910a6a8",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b7164b6fdcb90ddd96da92934b498e5ecd52495e261ecd48201ec802e2f6efbf",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "3c830b09192a8c40c599856eb184c89ee5029d7dab9df8ec6d3d6741dcb94b93",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "213e82e423baf44bad1eef99cf3e21d52ce1ac2942e3bbd25a63b1f737cf6ec6",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-osx-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-osx-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "3cc8d30d8bffc63bb2b8b0aea0d6a126acb4f69d4c720c142f7de6b9f4f562c6",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b76945901343f414685641b00638d14b05b7ffb282696f0e7d5d7aa1af77ed9f",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "359a390f6124c067026e212995e402d2e6fcd525d07e3b69d1d81cb06b5690f2",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v22.1/protoc-22.1-win64.zip",
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
        "jar_sha256": "59d388ea6a2d2d76ae8efff7fd4d0c60c6f0f464c3d3ab9be8e5add092975708",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.22.1/protobuf-java-3.22.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.22.1/protobuf-java-3.22.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "c664e12e6e3fea801477edf95014980a8a96528d3904d2add90c68b5d047a6c2",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.22.1/protobuf-java-3.22.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.22.1/protobuf-java-3.22.1-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "c615f76879dc5c303e4df5b94a6afa39534058c7545db2d483fd95d9f63c8bfe",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.22.1/protobuf-java-util-3.22.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.22.1/protobuf-java-util-3.22.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "5bb8af97af2131a2594c836baf3aadc0fd9640bdcf386c99bab901f6065e518f",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.22.1/protobuf-java-util-3.22.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.22.1/protobuf-java-util-3.22.1-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "9d26bebd2607fd0553cedbfc3e4a3d3f06c6e7a207d2b74c87fa6181838ed1bf",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.22.1/protobuf-javalite-3.22.1.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.22.1/protobuf-javalite-3.22.1.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "a1b3e64ca87b47698b6f844a4b40738a0c32999547d5bab9178bd37224258ccc",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.22.1/protobuf-javalite-3.22.1-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.22.1/protobuf-javalite-3.22.1-sources.jar",
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
