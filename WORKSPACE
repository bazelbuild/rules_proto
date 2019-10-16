workspace(name = "rules_proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

load("//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()

http_archive(
    name = "bazel_toolchains",
    sha256 = "dcb58e7e5f0b4da54c6c5f8ebc65e63fcfb37414466010cf82ceff912162296e",
    strip_prefix = "bazel-toolchains-0.28.2",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/0.28.2.tar.gz",
        "https://github.com/bazelbuild/bazel-toolchains/archive/0.28.2.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")
rbe_autoconfig(name = "buildkite_config")

http_archive(
    name = "bazel_federation",
    url = "https://github.com/bazelbuild/bazel-federation/archive/f0e5eda7f0cbfe67f126ef4dacb18c89039b0506.zip", # 2019-09-30
    sha256 = "33222ab7bcc430f1ff1db8788c2e0118b749319dd572476c4fd02322d7d15792",
    strip_prefix = "bazel-federation-f0e5eda7f0cbfe67f126ef4dacb18c89039b0506",
    type = "zip",
)

load("@bazel_federation//:repositories.bzl", "rules_pkg")

rules_pkg()
load("@bazel_federation//setup:rules_pkg.bzl", "rules_pkg_setup")
rules_pkg_setup()
