load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")

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

bool_flag(
    name = "universal_tools",
    build_setting_default = False,
)

config_setting(
    name = "universal_tools_config",
    flag_values = {
        ":universal_tools": "true",
    },
)
