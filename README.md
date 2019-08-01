# Protobuf Rules for [Bazel](https://bazel.build)

This repository contains Starlark implementation of Protobuf rules in Bazel.

For the list of Proto rules, see the Bazel
[documentation](https://docs.bazel.build/versions/master/be/overview.html).

## Getting Started

To get started with `rules_proto`, add the following to your `WORKSPACE` file:

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_proto",
    sha256 = "88b0a90433866b44bb4450d4c30bc5738b8c4f9c9ba14e9661deb123f56a833d",
    strip_prefix = "rules_proto-b0cc14be5da05168b01db282fe93bdf17aa2b9f4",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/b0cc14be5da05168b01db282fe93bdf17aa2b9f4.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/b0cc14be5da05168b01db282fe93bdf17aa2b9f4.tar.gz",
    ],
)
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
rules_proto_dependencies()
rules_proto_toolchains()
```

Then, in your `BUILD` files, import and use the rules:

```python
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
