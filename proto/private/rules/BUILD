load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_applicable_licenses = ["//third_party/bazel_rules/rules_proto:license"])

bzl_library(
    name = "proto_descriptor_set",
    srcs = [
        "proto_descriptor_set.bzl",
    ],
    visibility = [
        "//proto:__subpackages__",
    ],
    deps = [
        "//proto/private:native",
    ],
)
