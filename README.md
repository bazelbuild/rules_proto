# Protobuf Rules for [Bazel](https://bazel.build)

* Postsubmit [![Build status](https://badge.buildkite.com/26d40f574d6f6026928bc271780782e5f168fe7e3595ea6d79.svg)](https://buildkite.com/bazel/rules-proto)

This repository contains a Starlark implementation of `proto_library` and related "base layer" rules in Bazel.
It does **not** provide rules for any specific languages. These are typically expected to be provided in the ruleset for the language.

For a high-level overview of using Protocol Buffers and gRPC with Bazel, see
<https://bazel-contrib.github.io/SIG-rules-authors/proto-grpc.html>.

For the list of Proto rules, see the Bazel
[documentation](https://docs.bazel.build/versions/master/be/overview.html).

## Roadmap

As of September 2023, this repo is mostly empty and contains stubs for `proto_library`, `ProtoInfo` and other proto toolchain support rules.

This will change soon, around the time Bazel 7 is released (in Oct/Nov 2023), because the stubs will be replaced with actual implementations.
We plan to remove the native implementations in Bazel 8, at which point rules_proto will be the only way to build Protobuf rules.

As such it's recommended to use this repository now, so that the removal of implementations from Bazel 8 does not cause you problems.

## Getting Started

To get started with `rules_proto`, add the `WORKSPACE` file snippet from the
[latest release](https://github.com/bazelbuild/rules_proto/releases).

Then, in your `BUILD` files, import and use the rules:

```starlark
load("@rules_proto//proto:defs.bzl", "proto_library")
proto_library(
    ...
)
```

If you're migrating from the native proto rules to `rules_proto`, you can use
the following [buildifier](https://github.com/bazelbuild/buildtools/blob/master/buildifier/README.md)
command to automate the changes to your `BUILD` and `.bzl` files:

```bash
buildifier --lint=fix --warnings=native-proto <path/to/BUILD>
```

## Contributing

Bazel and `rules_proto` are the work of many contributors.
We appreciate your help!

To contribute, please read the contribution guidelines:
[CONTRIBUTING.md](https://github.com/bazelbuild/rules_proto/blob/master/CONTRIBUTING.md).

Note that the `rules_proto` use the GitHub issue tracker for bug reports and
feature requests only.

For asking questions see:

* [rules_proto mailing list](https://groups.google.com/forum/#!forum/proto-bazel-discuss)
* Slack channel `#proto` on [slack.bazel.build](https://slack.bazel.build)
