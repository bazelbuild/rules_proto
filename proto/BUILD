load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)

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
    name = "repositories",
    srcs = [
        "repositories.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//proto/private:dependencies",
    ],
)
