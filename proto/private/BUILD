load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_applicable_licenses = ["//third_party/bazel_rules/rules_proto:license"])

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
