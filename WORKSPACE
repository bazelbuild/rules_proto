workspace(name = "rules_proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

load("//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()

http_archive(
    name = "bazel_toolchains",
    sha256 = "e9bab54199722935f239cb1cd56a80be2ac3c3843e1a6d3492e2bc11f9c21daf",
    strip_prefix = "bazel-toolchains-1.0.0",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/1.0.0.tar.gz",
        "https://github.com/bazelbuild/bazel-toolchains/archive/1.0.0.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")
rbe_autoconfig(name = "buildkite_config")
