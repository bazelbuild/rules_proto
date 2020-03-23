workspace(name = "rules_proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

http_archive(
    name = "bazel_toolchains",
    sha256 = "1342f84d4324987f63307eb6a5aac2dff6d27967860a129f5cd40f8f9b6fd7dd",
    strip_prefix = "bazel-toolchains-2.2.0",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/2.2.0/bazel-toolchains-2.2.0.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/2.2.0.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(name = "buildkite_config")
