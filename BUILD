load("@rules_license//rules:license.bzl", "license")
load("//proto:defs.bzl", "proto_toolchain")

license(
    name = "license",
    package_name = "rules_proto",
)

licenses(["notice"])

exports_files(["LICENSE"])

proto_toolchain(
    name = "proto_toolchain",
    proto_compiler = "@com_google_protobuf//:protoc",
)
