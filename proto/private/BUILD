load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("//proto:defs.bzl", "proto_toolchain")
load("//proto/private/rules:proto_toolchain_alias.bzl", "proto_toolchain_alias")

proto_toolchain(
    name = "toolchain_impl",
    protoc = "@com_google_protobuf//:protoc",
)

toolchain(
    name = "toolchain",
    toolchain = ":toolchain_impl",
    toolchain_type = "//proto:toolchain_type",
)

proto_toolchain_alias(
    name = "toolchain_alias",
)

bzl_library(
    name = "dependencies",
    srcs = ["dependencies.bzl"],
    visibility = ["//proto:__subpackages__"],
)

bzl_library(
    name = "native",
    srcs = ["native.bzl"],
    visibility = ["//proto:__subpackages__"],
)
