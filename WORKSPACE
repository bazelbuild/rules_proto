workspace(name = "rules_proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

http_archive(
    name = "bazel_toolchains",
    sha256 = "1caf8584434d3e31be674067996be787cfa511fda2a0f05811131b588886477f",
    strip_prefix = "bazel-toolchains-3.7.2",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/3.7.2/bazel-toolchains-3.7.2.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/3.7.2.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

rbe_autoconfig(name = "buildkite_config")
