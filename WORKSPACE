workspace(name = "rules_proto")

load("//proto:repositories.bzl", "rules_proto_dependencies")

rules_proto_dependencies()

load("//proto:setup.bzl", "rules_proto_setup")

rules_proto_setup()

load("//proto:toolchains.bzl", "rules_proto_toolchains")

rules_proto_toolchains()

# Dev-only dependencies. USERS SHOULD NOT INSTALL THESE!
load(":dev_deps.bzl", "rules_proto_dev_deps")

rules_proto_dev_deps()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@bazelci_rules//:rbe_repo.bzl", "rbe_preconfig")

rbe_preconfig(
    name = "buildkite_config",
    toolchain = "ubuntu1804-bazel-java11",
)
