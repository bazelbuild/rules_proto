load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "proto_descriptor_set",
    srcs = [
        "proto_descriptor_set.bzl",
    ],
    visibility = [
        "//proto:__subpackages__",
    ],
    deps = [
        "//proto/private:native",
    ],
)

bzl_library(
    name = "proto_toolchain_bzl",
    srcs = [
        "proto_toolchain.bzl",
        "proto_toolchain_rule.bzl",
        "@bazel_features//:features",
    ],
    visibility = [
        "//proto:__subpackages__",
    ],
)
