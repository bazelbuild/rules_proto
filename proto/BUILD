load("@proto_bazel_config//:defs.bzl", "proto_toolchain_type")
load("//proto:defs.bzl", "proto_toolchain")

# The toolchain type used to distinguish proto toolchains.
#
# For Bazel versions that have `@bazel_tools//tools/proto:toolchain_type`, this
# is an alias for that target.
# Otherwise, it is a normal `toolchain_type` target.
proto_toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)

proto_toolchain(
    name = "default_toolchain",
)

toolchain(
    name = "toolchain",
    toolchain = ":default_toolchain",
    toolchain_type = ":toolchain_type",
)
