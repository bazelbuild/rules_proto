workspace(name = "rules_proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

load("@bazel_skylib//lib:unittest.bzl", "register_unittest_toolchains")

register_unittest_toolchains()

http_archive(
    name = "bazel_toolchains",
    sha256 = "b663c411acc9cf191679823aa1eb9d665358239e8bf9e6f7cbb302b41f57317c",
    strip_prefix = "bazel-toolchains-2.0.4",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/2.0.4/bazel-toolchains-2.0.4.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/2.0.4.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(name = "buildkite_config")
