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

"""Dependencies and toolchains required to use rules_proto."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//proto/private:dependencies.bzl", "dependencies", "maven_dependencies", "protobuf_workspace")

load("//proto/private:versions.bzl", "PROTOC_VERSIONS")
load(":toolchain.bzl", "PLATFORMS")


def rules_proto_dependencies():
    """An utility method to load all dependencies of `rules_proto`.

    Loads the remote repositories used by default in Bazel.
    """

    for name in dependencies:
        maybe(http_archive, name, **dependencies[name])
    for name in maven_dependencies:
        maybe(java_import_external, name, **maven_dependencies[name])
    protobuf_workspace(name = "com_google_protobuf")



PROTOC_BUILD_TMPL = """\
load("@rules_proto//proto:toolchain.bzl", "protoc_toolchain")

protoc_toolchain(
    name = "toolchain", 
    protoc = "bin/protoc",
)
"""

def _protoc_repo_impl(rctx):
    url = "https://github.com/protocolbuffers/protobuf/releases/download/v{version}/protoc-{version}-{platform}.zip".format(
        version = rctx.attr.protoc_version,
        platform = rctx.attr.platform,
    )
    rctx.download_and_extract(
        url = url,
        integrity = PROTOC_VERSIONS[rctx.attr.protoc_version][rctx.attr.platform],
    )
    rctx.file("BUILD.bazel", PROTOC_BUILD_TMPL)

protoc_repositories = repository_rule(
    _protoc_repo_impl,
    attrs = {
        "protoc_version": attr.string(mandatory = True, values = PROTOC_VERSIONS.keys()),
        "platform": attr.string(mandatory = True, values = PLATFORMS.keys())
    },
)



TOOLCHAIN_TMPL = """\
toolchain(
    name = "{platform}_toolchain",
    target_compatible_with = {compatible_with},
    toolchain = "{toolchain}",
    toolchain_type = "{toolchain_type}",
)
"""

def _toolchains_repo_impl(rctx):
    build_content = ""

    for [platform, meta] in PLATFORMS.items():
        build_content += TOOLCHAIN_TMPL.format(
            platform = platform,
            name = rctx.attr.name,
            compatible_with = meta.compatible_with,
            toolchain_type = rctx.attr.toolchain_type,
            toolchain = rctx.attr.toolchain.replace("$platform$", platform),
        )

    rctx.file("BUILD.bazel", build_content)

toolchains_repo = repository_rule(
    _toolchains_repo_impl,
    doc = "Creates a repository with toolchain definitions for all known platforms which can be registered or selected.",
    attrs = {
        "toolchain": attr.string(doc = "Label of the toolchain with {platform} left as placeholder"),
        "toolchain_type": attr.string(doc = "Label of the toolchain_type"),
    },
)

def rules_proto_toolchains(name = "protoc", protoc_version = PROTOC_VERSIONS.keys()[0]):
    """An utility method to load all Protobuf toolchains."""

    for platform in PLATFORMS.keys():
        protoc_repositories(
            name = "{name}_{platform}".format(name = name, platform = platform),
            platform = platform,
            protoc_version = protoc_version,
        )
        native.register_toolchains("@protoc_toolchains//:{}_toolchain".format(platform))
    
    toolchains_repo(
        name = "protoc_toolchains",
        toolchain_type = "@rules_proto//proto:toolchain_type",
        toolchain = "@{}_$platform$//:toolchain".format(name),
    )

    # language toolchains, ideally they go into their own language rule repos
    native.register_toolchains("@rules_proto//lang/go:default_toolchain")
    native.register_toolchains("@rules_proto//lang/ts:default_toolchain")
    native.register_toolchains("@rules_proto//lang/cc:default_toolchain")
    pass
    