load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

# Toolchain type provided by proto_toolchain rule and used by proto_library
toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)

bzl_library(
    name = "defs",
    srcs = ["defs.bzl"],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private:native",
        "//proto/private/rules:proto_descriptor_set",
    ],
)

bzl_library(
    name = "repositories",
    srcs = ["repositories.bzl"],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private:dependencies",
        "@bazel_tools//tools/build_defs/repo:http.bzl",
        "@bazel_tools//tools/build_defs/repo:java.bzl",
        "@bazel_tools//tools/build_defs/repo:utils.bzl",
    ],
)

bzl_library(
    name = "proto_common",
    srcs = ["proto_common.bzl"],
    visibility = ["//visibility:public"],
    deps = ["//proto/private:native"],
)

bzl_library(
    name = "proto_toolchain",
    srcs = ["proto_toolchain.bzl"],
    visibility = ["//visibility:public"],
    deps = ["//proto/private/rules:proto_toolchain"],
)

bzl_library(
    name = "proto_lang_toolchain",
    srcs = ["proto_lang_toolchain.bzl"],
    visibility = ["//visibility:public"],
)
