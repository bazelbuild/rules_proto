load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")
load("//proto:defs.bzl", "proto_library")
load("//proto:proto_common.bzl", "proto_common")

config_setting(
    name = "incompatible_enable_proto_toolchain_resolution",
    flag_values = {
        ":incompatible_enable_proto_toolchain_resolution_flag": "true",
    },
)

bool_flag(
    name = "incompatible_enable_proto_toolchain_resolution_flag",
    build_setting_default = getattr(proto_common, "INCOMPATIBLE_ENABLE_PROTO_TOOLCHAIN_RESOLUTION", False),
)

proto_library(
    name = "empty_proto",
    srcs = [
        "empty.proto",
    ],
)
