load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_applicable_licenses = ["//third_party/bazel_rules/rules_proto:license"])

cc_library(
    name = "workspace_constants",
    testonly = True,
    hdrs = [
        "workspace_constants.h",
    ],
    visibility = [
        "//tests:__subpackages__",
    ],
)
