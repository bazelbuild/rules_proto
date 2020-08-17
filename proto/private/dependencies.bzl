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
        "sha256": "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        ],
    },
    "com_github_protocolbuffers_protobuf": {
        "sha256": "cf754718b0aa945b00550ed7962ddc167167bd922b842199eeb6505e6f344852",
        "strip_prefix": "protobuf-3.11.3",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.11.3.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.11.3.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "3994233e61c287a377a9134e658ca3034924849f0e3a82d12b0e6efa2bed4b46",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "0dc5bf7eea3ee742ea7f56f51a229dac18e2deef330d5ccaef75c6d629469be7",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390x": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "81d8647b168af8f2cb3b1c2a665e35648a2c2906f3cb59382f39c7842ae639e3",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-s390x_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-s390x_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "840d0f8ef9886707b12414de4c100f62e6a5135b533040d3117e4b80db09e8ac",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "39f5d64b0f31117c94651c880d0a776159e49eab42b2066229569934b936a5e7",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "b9684666c28cb37b532470df4df85f0238a3df610d3b9a5d03ce4222b0cd5e12",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-osx-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-osx-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "a02dc07c3776de214c3dff4025b33269aebd0fc03aa8e791e7025df43c06e219",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "63755dd0018e005293b8ef0cd21e348f420d466b94c54285e3e2593c22e8a74c",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "1490944d3bbf77b58bcbd175fef6fbf14cc9c20f79be06c4be827641af1c6ca2",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-win64.zip",
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
        "sha256": "f5a3e477e579231fca27bf202bb0e8fbe4fc6339d63b38ccb87c2760b533d1c3",
        "strip_prefix": "rules_java-981f06c3d2bd10225e85209904090eb7b5fb26bd",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/981f06c3d2bd10225e85209904090eb7b5fb26bd.tar.gz",
            "https://github.com/bazelbuild/rules_java/archive/981f06c3d2bd10225e85209904090eb7b5fb26bd.tar.gz",
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
    "six": {
        "build_file": "@com_github_protocolbuffers_protobuf//:third_party/six.BUILD",
        "sha256": "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73",
        "urls": [
            "https://mirror.bazel.build/pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz",
            "https://pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz",
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
        "jar_sha256": "4e567f364f5608606616ef764e801d66a52e5241577ad7405f519a3a8a6802bb",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.11.3/protobuf-java-3.11.3.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.11.3/protobuf-java-3.11.3.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "9d2ee817e71c63f197271d425b11dac1414926302eea1d2eaae5e4fd2ca31d5d",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.11.3/protobuf-java-3.11.3-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.11.3/protobuf-java-3.11.3-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "5650c66dc2c617fd0b8f58e148b42a6c6a1f57ddbef4cbe86302aefff99ea025",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.11.3/protobuf-java-util-3.11.3.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.11.3/protobuf-java-util-3.11.3.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "7a4750176c46541429da8374be5fbb4b6665f9c59e17d062cfe098d74296bd40",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.11.3/protobuf-java-util-3.11.3-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.11.3/protobuf-java-util-3.11.3-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "5ff32ba40ce12b859898600a967a69094ae38bb57f619cf08c2160ae376174b6",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.11.3/protobuf-javalite-3.11.3.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.11.3/protobuf-javalite-3.11.3.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "6eeb3fa7f7bae8b41847cf49858454b1dd1a6859f0cfe50ffb6f846c5e027d49",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.11.3/protobuf-javalite-3.11.3-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.11.3/protobuf-javalite-3.11.3-sources.jar",
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
