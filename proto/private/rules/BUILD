load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "proto_toolchain",
    srcs = ["proto_toolchain.bzl"],
    visibility = ["//proto:__subpackages__"],
    deps = [":proto_toolchain_rule"],
)

bzl_library(
    name = "proto_toolchain_rule",
    srcs = ["proto_toolchain_rule.bzl"],
    visibility = ["//proto:__subpackages__"],
    deps = ["//proto:proto_common"],
)

bzl_library(
    name = "proto_descriptor_set",
    srcs = ["proto_descriptor_set.bzl"],
    visibility = ["//proto:__subpackages__"],
    deps = ["//proto/private:native"],
)
