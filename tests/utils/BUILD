load(
    "//tests/utils:direct_source_infos_tests.bzl",
    "compute_import_path_test",
    "exclude_provided_sources_test",
)

WORKSPACE_PREFIX = ""  # copybara-workspace-prefix(WORKSPACE_PREFIX)

compute_import_path_test(
    name = "compute_import_path_test",
    deps = {
        "//tests:empty_proto": WORKSPACE_PREFIX + "tests/empty.proto",
        "//tests:empty_with_absolute_strip_prefix_proto": "empty.proto",
        "//tests:empty_with_add_and_absolute_strip_prefix_proto": "foo/empty.proto",
        "//tests:empty_with_add_and_empty_strip_prefix_proto": "foo/empty.proto",
        "//tests:empty_with_add_and_empty_strip_prefix_proto_in_subdir": "foo/prefix/empty.proto",
        "//tests:empty_with_add_and_relative_strip_prefix_proto": "foo/empty.proto",
        "//tests:empty_with_empty_strip_prefix_proto": "empty.proto",
        "//tests:empty_with_prefix_proto": WORKSPACE_PREFIX + "tests/prefix/empty.proto",
        "//tests:empty_with_relative_strip_prefix_proto": "empty.proto",
        # WKPs are not excluded by default, so their import path must be correct.
        "@com_google_protobuf//:any_proto": "google/protobuf/any.proto",
        "@com_google_protobuf//:compiler_plugin_proto": "google/protobuf/compiler/plugin.proto",
        "@com_google_protobuf//:timestamp_proto": "google/protobuf/timestamp.proto",
        "@com_google_protobuf//:type_proto": "google/protobuf/type.proto",
    },
)

exclude_provided_sources_test(
    name = "exclude_proto_test",
    dep = "@com_google_protobuf//:any_proto",
    # No direct sources expected.
    import_path = [],
    provided_sources = [
        "@com_google_protobuf//:any_proto",
    ],
)

exclude_provided_sources_test(
    name = "exclude_some_direct_sources_test",
    dep = "//tests:multiple_srcs_proto",
    import_path = [
        WORKSPACE_PREFIX + "tests/prefix/empty.proto",
    ],
    provided_sources = [
        "//tests:empty_proto",
    ],
)

exclude_provided_sources_test(
    name = "exclude_non_deps_test",
    dep = "//tests:empty_proto",
    import_path = [
        WORKSPACE_PREFIX + "tests/empty.proto",
    ],
    provided_sources = [
        "@com_google_protobuf//:any_proto",
    ],
)

exclude_provided_sources_test(
    name = "exclude_direct_deps_test",
    dep = "@com_google_protobuf//:type_proto",
    import_path = [
        "google/protobuf/type.proto",
    ],
    provided_sources = [
        "@com_google_protobuf//:any_proto",
    ],
)

exclude_provided_sources_test(
    name = "exclude_indirect_deps_test",
    dep = "@com_google_protobuf//:api_proto",
    import_path = [
        "google/protobuf/api.proto",
    ],
    provided_sources = [
        "@com_google_protobuf//:any_proto",
    ],
)
