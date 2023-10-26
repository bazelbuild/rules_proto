load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

exports_files(
    glob(["*.bzl"]),
    visibility = ["//docs:__pkg__"],
)

bzl_library(
    name = "defs",
    srcs = [
        "defs.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":proto_lang_toolchain",
        ":proto_toolchain",
        "//proto/private:native",
        "//proto/private/rules:proto_descriptor_set",
    ],
)

bzl_library(
    name = "proto_lang_toolchain",
    srcs = [
        "proto_lang_toolchain.bzl",
    ],
    deps = [
        ":proto_common",
    ],
)

bzl_library(
    name = "proto_common",
    srcs = [
        "proto_common.bzl",
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

bzl_library(
    name = "repositories",
    srcs = [
        "repositories.bzl",
    ],
    visibility = ["//visibility:public"],
)

# Toolchain type provided by proto_toolchain rule and used by proto_library
toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)
