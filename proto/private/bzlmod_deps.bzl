"""bzlmod extension that loads prebuilt protoc binaries as repositories"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//proto/private:dependencies.bzl", "prebuilt_binaries", "protobuf_workspace")

def _prebuilt_binaries_ext_impl(ctx):
    """An extension to add prebuilt protoc binaries as dependencies to bzlmod."""
    for name in prebuilt_binaries:
        maybe(http_archive, name, **prebuilt_binaries[name])
    protobuf_workspace(name = "com_google_protobuf")

prebuilt_binaries_ext = module_extension(
    implementation = _prebuilt_binaries_ext_impl,
)
