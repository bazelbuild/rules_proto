load("@rules_cc//cc:defs.bzl", "cc_test")
load("//proto:defs.bzl", "proto_descriptor_set", "proto_library")

proto_descriptor_set(
    name = "no_deps",
)

proto_descriptor_set(
    name = "no_deps_reexport",
    deps = [
        ":no_deps",
    ],
)

proto_library(
    name = "empty_proto_library",
)

proto_descriptor_set(
    name = "no_protos",
    deps = [
        ":empty_proto_library",
    ],
)

proto_descriptor_set(
    name = "no_protos_reexport",
    deps = [
        ":empty_proto_library",
    ],
)

proto_descriptor_set(
    name = "well_known_protos",
    deps = [
        "@com_google_protobuf//:any_proto",
        "@com_google_protobuf//:api_proto",
        "@com_google_protobuf//:compiler_plugin_proto",
        "@com_google_protobuf//:descriptor_proto",
        "@com_google_protobuf//:duration_proto",
        "@com_google_protobuf//:empty_proto",
        "@com_google_protobuf//:field_mask_proto",
        "@com_google_protobuf//:source_context_proto",
        "@com_google_protobuf//:struct_proto",
        "@com_google_protobuf//:timestamp_proto",
        "@com_google_protobuf//:type_proto",
        "@com_google_protobuf//:wrappers_proto",
    ],
)

proto_descriptor_set(
    name = "well_known_protos_reexport",
    deps = [
        ":well_known_protos",
    ],
)

cc_test(
    name = "proto_descriptor_set_test",
    srcs = [
        "proto_descriptor_set_test.cc",
    ],
    data = [
        ":no_deps",
        ":no_deps_reexport",
        ":no_protos",
        ":no_protos_reexport",
        ":well_known_protos",
        ":well_known_protos_reexport",
    ],
    deps = [
        "//tests/utils:workspace_constants",
        "@bazel_tools//tools/cpp/runfiles",
        "@com_google_googletest//:gtest",
        "@com_google_googletest//:gtest_main",
        "@com_google_protobuf//:protobuf",
    ],
)
