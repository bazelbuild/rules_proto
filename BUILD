load("@bazel_gazelle//:def.bzl", "gazelle", "gazelle_binary")

gazelle_binary(
    name = "gazelle_bin",
    languages = [
        "@bazel_skylib_gazelle_plugin//bzl",
    ],
)

# gazelle:exclude tests/**
# gazelle:exclude dev_deps.bzl
gazelle(
    name = "gazelle",
    gazelle = "gazelle_bin",
)
