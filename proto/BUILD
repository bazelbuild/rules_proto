load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "defs",
    srcs = [
        "defs.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private:native",
        "//proto/private/rules:proto_descriptor_set",
    ],
)

bzl_library(
    name = "proto_toolchain_bzl",
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
    deps = [
        "//proto/private:dependencies",
    ],
)

# Toolchain type provided by proto_toolchain rule and used by proto_library
toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)
