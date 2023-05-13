# Copyright 2021 The Bazel Authors. All rights reserved.
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

"""A Starlark implementation of the proto_lang_toolchain rule."""

load("@rules_proto//proto:defs.bzl", "proto_common", "ProtoInfo")

def _rule_impl(ctx):
    provided_proto_sources = depset(transitive = [bp[ProtoInfo].transitive_proto_sources() for bp in ctx.attr.blacklisted_protos]).to_list()

    plugin = None
    if ctx.attr.plugin != None:
        plugin = ctx.attr.plugin[DefaultInfo].files_to_run

    template_variables = platform_common.TemplateVariableInfo({

    })
    default_info = DefaultInfo(
        files = depset(),
        runfiles = ctx.runfiles(),
    )
    lang_toolchain_info = proto_common.ProtoLangToolchainInfo(
        out_replacement_format_flag = ctx.attr.out_replacement_format_flag,
        plugin_format_flag = ctx.attr.plugin_format_flag,
        plugin = plugin,
        runtime = ctx.attr.runtime,
        provided_proto_sources = provided_proto_sources,
        protoc_opts = ctx.fragments.proto.experimental_protoc_opts,
        progress_message = ctx.attr.progress_message,
        mnemonic = ctx.attr.mnemonic,
    )
    toolchain_info = platform_common.ToolchainInfo(
        lang_toolchain_info = lang_toolchain_info,
        template_variables = template_variables,
        default = default_info,
    )
    return [
        default_info,
        lang_toolchain_info,
        toolchain_info
    ]

proto_lang_toolchain = rule(
    _rule_impl,
    attrs = {
        "progress_message": attr.string(default = "Generating proto_library %{label}"),
        "mnemonic": attr.string(default = "GenProto"),
        "out_replacement_format_flag": attr.string(),
        "plugin_format_flag": attr.string(),
        "plugin": attr.label(
            executable = True,
            cfg = "exec",
        ),
        "runtime": attr.label(),
        "blacklisted_protos": attr.label_list(
            providers = [ProtoInfo],
        ),
    },
    fragments = ["proto"]
)
