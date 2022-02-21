# Copyright 2020 The Bazel Authors. All rights reserved.
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

"""A rule for generating a `FileDescriptorSet` with all transitive dependencies.

This module contains the definition of `proto_descriptor_set`, a rule that
collects all `FileDescriptorSet`s from its transitive dependencies and generates
a single `FileDescriptorSet` containing all the `FileDescriptorProto` from them.
"""

load("//proto/private:native.bzl", ProtoInfo = "NativeProtoInfo")

def _proto_descriptor_set_impl(ctx):
    args = ctx.actions.args()

    output = ctx.actions.declare_file("{}.pb".format(ctx.attr.name))
    args.add(output)

    descriptor_sets = depset(
        transitive = [dep[ProtoInfo].transitive_descriptor_sets for dep in ctx.attr.deps],
    )
    args.add_all(descriptor_sets)

    ctx.actions.run(
        executable = ctx.executable._file_concat,
        mnemonic = "ConcatFileDescriptorSet",
        inputs = descriptor_sets,
        outputs = [output],
        arguments = [args],
    )

    return [
        ctx.attr.internal_export_lib[ProtoInfo],
        DefaultInfo(
            files = depset([output]),
            runfiles = ctx.runfiles(files = [output]),
        ),
    ]

_proto_descriptor_set = rule(
    implementation = _proto_descriptor_set_impl,
    attrs = {
        "deps": attr.label_list(
            mandatory = False,
            providers = [ProtoInfo],
            doc = """
Sequence of `ProtoInfo`s to collect `FileDescriptorSet`s from.
""".strip(),
        ),
        "internal_export_lib": attr.label(
            mandatory = True,
            providers = [ProtoInfo],
            doc = """
Merged `ProtoInfo` with all deps for re-export.

This is an internal attribute set from the macro below until we can construct
`ProtoInfo` from Starlark. Do not set manually.
""".strip(),
        ),
        "_file_concat": attr.label(
            default = "//tools/file_concat",
            executable = True,
            cfg = "exec",
        ),
    },
    doc = """
Collects all `FileDescriptorSet`s from `deps` and combines them into a single
`FileDescriptorSet` containing all the `FileDescriptorProto`.
""".strip(),
)

# TODO(yannic): Remove this macro when we can construct `ProtoInfo` from Starlark.
def proto_descriptor_set(name, deps = None, **kwargs):
    """Wrapper for `_proto_descriptor_set` for setting `internal_export_lib`.

    See definition above for supported attributes.
    """

    export_lib_name = "{}.proto_info_export_lib".format(name)

    # buildifier: disable=native-proto
    native.proto_library(name = export_lib_name, deps = deps)
    _proto_descriptor_set(name = name, deps = deps, internal_export_lib = export_lib_name, **kwargs)
