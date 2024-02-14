load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

exports_files(
    glob(["*.bzl"]),
    visibility = ["//docs:__pkg__"],
)

bzl_library(
    name = "defs",
    srcs = [
        "defs.bzl",
        "proto_descriptor_set.bzl",
        "proto_library.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private:native",
        "//proto/private/rules:proto_descriptor_set",
        "//proto/toolchains:proto_lang_toolchain",
        "//proto/toolchains:proto_toolchain",
    ],
)

bzl_library(
    name = "repositories",
    srcs = ["repositories.bzl"],
    visibility = ["//visibility:public"],
)

# Toolchain type provided by proto_toolchain rule and used by proto_library
toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)
