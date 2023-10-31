#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
readonly TAG=${GITHUB_REF_NAME}
# The prefix is chosen to match what GitHub generates for source archives.
# This guarantees that users can easily switch from a released artifact to a source archive
# with minimal differences in their code (e.g. strip_prefix remains the same)
readonly PREFIX="rules_proto-${TAG}"
readonly ARCHIVE="${PREFIX}.tar.gz"

# Configuration for 'git archive'
# see https://git-scm.com/docs/git-archive/2.40.0#ATTRIBUTES
cat >.git/info/attributes <<EOF
# Omit folders that users don't need, making the distribution artifact smaller
tests export-ignore
EOF

git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE
SHA=$(shasum -a 256 $ARCHIVE | awk '{print $1}')

# The stdout of this program will be used as the top of the release notes for this release.
cat << EOF
## Using bzlmod with Bazel 6 or later:

1. Add \`common --enable_bzlmod\` to \`.bazelrc\`.

2. Add to your \`MODULE.bazel\` file:

\`\`\`starlark
bazel_dep(name = "rules_proto", version = "${TAG}")
\`\`\`

## Using WORKSPACE:

\`\`\`starlark

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_proto",
    sha256 = "${SHA}",
    strip_prefix = "${PREFIX}",
    url = "https://github.com/bazelbuild/rules_proto/releases/download/${TAG}/${ARCHIVE}",
)
\`\`\`starlark
EOF
