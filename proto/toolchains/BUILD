load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "proto_lang_toolchain",
    srcs = [
        "proto_lang_toolchain.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/modules:proto_common",
    ],
)

bzl_library(
    name = "proto_toolchain",
    srcs = [
        "proto_toolchain.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private/rules:proto_toolchain_bzl",
    ],
)
