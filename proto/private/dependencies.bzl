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
        "sha256": "14e8042b5da37652c92ef6a2759e7d2979d295f60afd7767825e3de68c856c54",
        "strip_prefix": "protobuf-3.18.0",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.18.0.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.18.0.tar.gz",
        ],
    },
    "com_google_protobuf_protoc_linux_aarch64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "d635e9ab32d5b33fb1e5f7e4964709b2f42a281c464c9cd7ded3743a11bf6af8",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-aarch_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-aarch_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_ppc": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "1c4adfbf4ba67a16353dd5f4ebaa9abb998684f9c0fbdccea7313e256afcc65e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-ppcle_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-ppcle_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_s390_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "783e2e642ffb9bcb58c5af017978aed15decc8827d1c8a2700138eb1e3987e55",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-s390_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-s390_64.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "5288bbef761f3ffdadeaa824e0d5a1b4a7794780ed6849cdedb7184bdf1f5b7a",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-x86_32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-x86_32.zip",
        ],
    },
    "com_google_protobuf_protoc_linux_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "aad5cfd2daf9d49f5ec9b14c4e7e7af0392324706c0e5bb3e44ad5e70a7add5e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-linux-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_macos_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "f51e7d285e9e8fcfe04ac6834d9dab56571e39dbcb01d0437b0eb3ee8a5a76c9",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-osx-x86_64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-osx-x86_64.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_32": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "72db1c20665fb1a47bf11b68866be228b2e7901e179288dd17db401cb6903f23",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-win32.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-win32.zip",
        ],
    },
    "com_google_protobuf_protoc_windows_x86_64": {
        "build_file": "@rules_proto//proto/private:BUILD.protoc",
        "sha256": "f504bd885835c10d3adc819d8cd442567b7145454f4aaff0caabd341868be90e",
        "urls": [
            "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-win64.zip",
            "https://github.com/protocolbuffers/protobuf/releases/download/v3.17.0/protoc-3.17.0-win64.zip",
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
        "jar_sha256": "351c33d79f7fc5cba1f8197408c6bcf5a428c84f9d84caa479a0086d1598b08d",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.17.0/protobuf-java-3.17.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.17.0/protobuf-java-3.17.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "f0611e98cdd8a117c3651864c5fdd3f96febd405e700398cf3e1890aa4663679",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.17.0/protobuf-java-3.17.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/3.17.0/protobuf-java-3.17.0-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_java_util": {
        "jar_sha256": "2b886e18cb1f7f773ecafd79afe80d702618415331332d5e959112eb2ccb570f",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.17.0/protobuf-java-util-3.17.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.17.0/protobuf-java-util-3.17.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "cc111e90dd1de06aeceb2745b852fd6da795c796d3e69f5d397a085787257fe6",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.17.0/protobuf-java-util-3.17.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/3.17.0/protobuf-java-util-3.17.0-sources.jar",
        ],
    },
    "com_google_protobuf_protobuf_javalite": {
        "jar_sha256": "f95c413952d02debaa2c09e4773b0057c9c3bdf0f0c2c5d13b80cf1e8664b611",
        "jar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.17.0/protobuf-javalite-3.17.0.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.17.0/protobuf-javalite-3.17.0.jar",
        ],
        "licenses": ["notice"],
        "srcjar_sha256": "a2115a41b3a5cb4f3a0c2cd536d5f28667d44c52ee993b44698e793c77cc75fe",
        "srcjar_urls": [
            "https://mirror.bazel.build/repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.17.0/protobuf-javalite-3.17.0-sources.jar",
            "https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/3.17.0/protobuf-javalite-3.17.0-sources.jar",
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
