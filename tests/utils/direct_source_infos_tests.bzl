# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Unit-tests for `proto_common.direct_source_infos`."""

load("@bazel_skylib//lib:new_sets.bzl", "sets")
load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//proto:defs.bzl", "ProtoInfo", "proto_common")

def _compute_import_path_test_impl(ctx):
    """Verifies that `direct_source_infos` computes the correct import paths.

    Args:
      ctx: The rule context.

    Returns: A (not further specified) sequence of providers.
    """

    env = unittest.begin(ctx)

    for target, expected_import_path in ctx.attr.deps.items():
        proto_info = target[ProtoInfo]
        asserts.equals(
            env,
            1,
            len(proto_info.direct_sources),
            "Target under test must have exactly one direct source",
        )

        file_infos = proto_common.direct_source_infos(proto_info)
        asserts.equals(env, 1, len(file_infos))
        file_info = file_infos[0]

        asserts.equals(env, proto_info.direct_sources[0], file_info.file)
        asserts.equals(env, expected_import_path, file_info.import_path)

    return unittest.end(env)

compute_import_path_test = unittest.make(
    impl = _compute_import_path_test_impl,
    attrs = {
        "deps": attr.label_keyed_string_dict(
            mandatory = True,
            providers = [ProtoInfo],
        ),
    },
)

def _exclude_provided_sources_test_impl(ctx):
    """Verifies that `direct_source_infos` excludes provided sources.

    Args:
      ctx: The rule context.

    Returns: A (not further specified) sequence of providers.
    """

    env = unittest.begin(ctx)

    provided_sources = sets.make()
    for target in ctx.attr.provided_sources:
        info = target[ProtoInfo]
        infos = [f.import_path for f in proto_common.direct_source_infos(info)]
        provided_sources = sets.union(provided_sources, sets.make(infos))

    file_infos = proto_common.direct_source_infos(
        proto_info = ctx.attr.dep[ProtoInfo],
        provided_sources = sets.to_list(provided_sources),
    )
    asserts.equals(env, len(ctx.attr.import_path), len(file_infos))
    asserts.new_set_equals(
        env,
        sets.make(ctx.attr.import_path),
        sets.make([info.import_path for info in file_infos]),
    )

    return unittest.end(env)

exclude_provided_sources_test = unittest.make(
    impl = _exclude_provided_sources_test_impl,
    attrs = {
        "dep": attr.label(
            mandatory = True,
            providers = [ProtoInfo],
        ),
        "import_path": attr.string_list(
            mandatory = True,
        ),
        "provided_sources": attr.label_list(
            mandatory = True,
            providers = [ProtoInfo],
        ),
    },
)
