load("//proto:defs.bzl", "proto_library")

WORKSPACE_PREFIX = ""  # copybara-workspace-prefix(WORKSPACE_PREFIX)

proto_library(
    name = "multiple_srcs_proto",
    srcs = [
        "empty.proto",
        "prefix/empty.proto",
    ],
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_proto",
    srcs = [
        "empty.proto",
    ],
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_prefix_proto",
    srcs = [
        "prefix/empty.proto",
    ],
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_absolute_strip_prefix_proto",
    srcs = [
        "empty.proto",
    ],
    strip_import_prefix = "/" + WORKSPACE_PREFIX + "tests",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_relative_strip_prefix_proto",
    srcs = [
        "prefix/empty.proto",
    ],
    strip_import_prefix = "prefix",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_empty_strip_prefix_proto",
    srcs = [
        "empty.proto",
    ],
    strip_import_prefix = "",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_add_and_absolute_strip_prefix_proto",
    srcs = [
        "empty.proto",
    ],
    import_prefix = "foo",
    strip_import_prefix = "/" + WORKSPACE_PREFIX + "tests",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_add_and_relative_strip_prefix_proto",
    srcs = [
        "prefix/empty.proto",
    ],
    import_prefix = "foo",
    strip_import_prefix = "prefix",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_add_and_empty_strip_prefix_proto",
    srcs = [
        "empty.proto",
    ],
    import_prefix = "foo",
    strip_import_prefix = "",
    visibility = [
        "//tests:__subpackages__",
    ],
)

proto_library(
    name = "empty_with_add_and_empty_strip_prefix_proto_in_subdir",
    srcs = [
        "prefix/empty.proto",
    ],
    import_prefix = "foo",
    strip_import_prefix = "",
    visibility = [
        "//tests:__subpackages__",
    ],
)
