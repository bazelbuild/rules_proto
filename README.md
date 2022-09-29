# Protobuf Rules for [Bazel](https://bazel.build)

* Postsubmit [![Build status](https://badge.buildkite.com/26d40f574d6f6026928bc271780782e5f168fe7e3595ea6d79.svg?branch=master)](https://buildkite.com/bazel/rules-proto)

This repository contains Starlark implementation of Protobuf rules in Bazel.

For a high-level overview of using Protocol Buffers and gRPC with Bazel, see
<https://bazel-contrib.github.io/SIG-rules-authors/proto-grpc.html>.

For the list of Proto rules, see the Bazel
[documentation](https://docs.bazel.build/versions/master/be/overview.html).

## Getting Started

To get started with `rules_proto`, add the following to your `WORKSPACE` file:

```starlark
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_proto",
    sha256 = "e017528fd1c91c5a33f15493e3a398181a9e821a804eb7ff5acdd1d2d6c2b18d",
    strip_prefix = "rules_proto-4.0.0-3.20.0",
    urls = [
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0-3.20.0.tar.gz",
    ],
)
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()
```

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
