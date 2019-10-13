load("//proto:defs.bzl", "proto_toolchain")

toolchain_type(
    name = "toolchain",
    visibility = ["//visibility:public"],
)

proto_toolchain(
    name = "default_toolchain_impl",
    visibility = ["//visibility:public"],
)

toolchain(
    name = "default_toolchain",
    toolchain = ":default_toolchain_impl",
    toolchain_type = "@rules_proto//proto:toolchain",
)
