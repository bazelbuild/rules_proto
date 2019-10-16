# Releasing rules_proto

`cd` to `//dist` and run the following commands to build the release:

```
bazel clean
bazel build :relnotes
cat ../bazel-bin/dist/relnotes.txt
tar tzf ../bazel-bin/dist/rules_proto-*.tar.gz
```

- Create a new release
- Copy/paste relnotes.txt into the notes. Adjust as needed.
- Upload the tar.gz file as an artifact.
- Upload the tar.gz to bazel-mirror.
- Publish the release on GitHub.
- Update WORKSPACE-snipped in `//:README.md`.
- Bump `version` in `//proto:defs.bzl`
- Send announcement to proto-bazel-discuss@googlegroups.com
  (with bazel-discuss@googlegroups.com in cc).
