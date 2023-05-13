load("@bazel_skylib//lib:dicts.bzl", "dicts")
load("@bazel_skylib//lib:structs.bzl", "structs")
load("@rules_proto//proto/private:common.bzl", "common")
load("@rules_proto//proto:defs.bzl", "proto_common")

def _ts_proto_impl(ctx):

    protoc = ctx.toolchains["@rules_proto//proto:toolchain_type"]
    lang_ts = ctx.toolchains["@rules_proto//lang/ts:toolchain_type"]

    # A workaround
    lang_toolchain_info = proto_common.ProtoLangToolchainInfo(
        **dicts.add(
            structs.to_dict(lang_ts.lang_toolchain_info),
            {
                "proto_compiler": protoc.protoc_info.protoc
            }
        )
    )

    outputs = []
    for dep in ctx.attr.deps:
        generated_files = proto_common.declare_generated_files(
            actions = ctx.actions,
            proto_info = dep[ProtoInfo],
            extension = ".ts",
        )

        proto_common.compile(
            actions = ctx.actions,
            proto_info = dep[ProtoInfo],
            proto_lang_toolchain_info = lang_toolchain_info,
            generated_files = generated_files,
            plugin_output = ctx.bin_dir.path
        )

        outputs.extend(
            generated_files
        )
        

    return DefaultInfo(
        files = depset(outputs)
    )



ts_proto_library = rule(
    implementation = _ts_proto_impl,
    attrs = dicts.add(
        common.STD_ATTRS,
        {}
    ),
    toolchains = [
        "@rules_proto//lang/ts:toolchain_type",
        "@rules_proto//proto:toolchain_type"
    ]
)

