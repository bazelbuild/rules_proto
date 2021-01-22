load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

# The toolchain type used to distinguish Protobuf toolchains.
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
        "//proto/private/rules:proto_toolchain",
    ],
)
