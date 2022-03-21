load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")

bool_flag(
    name = "recompile-protoc",
    build_setting_default = 0,
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
