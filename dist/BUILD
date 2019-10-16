load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("@rules_pkg//releasing:defs.bzl", "print_rel_notes")
load("//proto:defs.bzl", "version")

# TODO(yannic): Run CI against this archive to verify everything works.
pkg_tar(
    name = "rules_proto-" + version,
    srcs = [
        "//:dist_files",
    ],
    extension = "tar.gz",
    # It is all source code, so make it read-only.
    mode = "0444",
    # Make it owned by root so it does not have the uid of the CI robot.
    owner = "0.0",
    package_dir = ".",
    strip_prefix = ".",
)

print_rel_notes(
    name = "relnotes",
    outs = ["relnotes.txt"],
    deps_method = "rules_proto_dependencies",
    repo = "rules_proto",
    setup_file = "proto:repositories.bzl",
    toolchains_method = "rules_proto_toolchains",
    version = version,
)
