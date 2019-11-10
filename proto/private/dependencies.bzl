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
        "sha256": "9245b0549e88e356cd6a25bf79f97aa19332083890b7ac6481a2affb6ada9752",
        "strip_prefix": "bazel-skylib-0.9.0",
        "urls": [
            "https://github.com/bazelbuild/bazel-skylib/archive/0.9.0.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "45276570e524c50f6ce82ed71ba87c75f0c8c69ca89adbf86ce0000049df27e5",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "7ab112ca489dcdd3cb5d3e5868707831ed96e913d9978523f2cb890ff1835324",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390x": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "0bf0d954d6cb97ec9fe8a1605e71f23cf2e8171ce0580ec6bd1b68197590a621",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-linux-s390x_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "c1488147122a3b176f1b3f19d3b296eb807b0214df4588ad26d36dd852af8bc8",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "213a591b42acb9e145ef9f3fe5f6037f14a14686065c508fcd547031243cc5d5",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "49c732a8431fb5bd377082014162e24c7d09216797cf447ddffb74cd6adf2ef8",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-osx-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "345d0b7652e37b7811e31b9659dee2b5418375197ab60d3cdc49213187310525",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc_windows",
        "sha256": "0533a9f0236988a128219e9568b35a7eead51c5c6f7df2d25c179ef031977fa2",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86-64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc_windows",
        "sha256": "eca7c20ad11ae31abffee1f593dc5a0b2e3b97e5eff275125413d196a7513090",
        "urls": [
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protoc-3.10.0-win64.zip",
        ],
    },
    "com_github_protocolbuffers_protobuf": {
        "sha256": "758249b537abba2f21ebc2d02555bf080917f0f2f88f4cbe2903e0e28c4187ed",
        "strip_prefix": "protobuf-3.10.0",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.10.0.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.10.0.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_cc": {
        "sha256": "bb8320b0bc1d8d01dc8c8e8c50edced8553655c03776960c1287d03dfbcac3e5",
        "strip_prefix": "rules_cc-401380cd2279b83da0dcb86ecbac04a04805405b",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/401380cd2279b83da0dcb86ecbac04a04805405b.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/401380cd2279b83da0dcb86ecbac04a04805405b.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "rules_java": {
        "sha256": "4e2f33528a66e3a9909910eaa5a562fb22f5b422513cdc3816fd01fbb6e2d08d",
        "strip_prefix": "rules_java-166a046a27e118d578127759b413ee0b06aca3cd",
        "urls": [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/166a046a27e118d578127759b413ee0b06aca3cd.tar.gz",
            "https://github.com/bazelbuild/rules_java/archive/166a046a27e118d578127759b413ee0b06aca3cd.tar.gz",
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
            "https://pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz",
        ],
    },
    # Dependency of `com_github_protocolbuffers_protobuf`.
    "zlib": {
        "build_file": "@com_github_protocolbuffers_protobuf//:third_party/zlib.BUILD",
        "sha256": "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
        "strip_prefix": "zlib-1.2.11",
        "urls": [
            "https://zlib.net/zlib-1.2.11.tar.gz",
        ],
    },
}

maven_dependencies = {
    "com_google_protobuf_protobuf_java": {
        "artifact": "com.google.protobuf:protobuf-java:3.10.0",
        "sha1": "410b61dd0088aab4caa05739558d43df248958c9",
        "sha1_src": "3ee94b1a2c1a74d9a27196e39c4bcf8dd0101e70",
    },
    "com_google_protobuf_protobuf_javalite": {
        "artifact": "com.google.protobuf:protobuf-javalite:3.10.0",
        "sha1": "a7e0350493910f45a208732992f8e519ade2fde5",
        "sha1_src": "e43e8517029380185acc014f5dc6ee2ade484fb1",
    },
}

def _protobuf_workspace_impl(ctx):
    ctx.symlink(ctx.attr._build, "BUILD")

protobuf_workspace = repository_rule(
    implementation = _protobuf_workspace_impl,
    attrs = {
        "_build": attr.label(default = "@rules_proto//proto/private:BUILD.release"),
    },
)

def _protoc_binary_impl(ctx):
    args = ctx.actions.args()
    args.add(ctx.file.src)
    args.add(ctx.outputs.executable)
    ctx.actions.run_shell(
        inputs = [ctx.file.src],
        outputs = [ctx.outputs.executable],
        command = "cp $1 $2&&chmod +x $2",
        arguments = [args],
    )
    return [DefaultInfo(executable = ctx.outputs.executable)]

protoc_binary = rule(
    implementation = _protoc_binary_impl,
    attrs = {
        "src": attr.label(
            allow_single_file = True,
            executable = True,
            cfg = "target",
        ),
        "executable": attr.output(mandatory = True),
    },
)
