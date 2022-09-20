load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def remote_coverage_tools():
    http_archive(
        name = "remote_coverage_tools",
        sha256 = "cd14f1cb4559e4723e63b7e7b06d09fcc3bd7ba58d03f354cdff1439bd936a7d",
        urls = ["https://mirror.bazel.build/bazel_coverage_output_generator/releases/coverage_output_generator-v2.5.zip"],
    )

def _coverage_deps_extension_impl(ctx):
    remote_coverage_tools()

coverage_deps_ext = module_extension(
    implementation = _coverage_deps_extension_impl,
)
