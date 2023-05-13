load("@bazel_skylib//lib:dicts.bzl", "dicts")
load("@bazel_skylib//lib:structs.bzl", "structs")
load("@rules_proto//proto/private:common.bzl", "common")
load("@rules_proto//proto:defs.bzl", "proto_common")

def _cc_proto_impl(ctx):

    protoc = ctx.toolchains["@rules_proto//proto:toolchain_type"]
    lang_cc = ctx.toolchains["@rules_proto//lang/cc:toolchain_type"]

    # A workaround
    lang_toolchain_info = proto_common.ProtoLangToolchainInfo(
        **dicts.add(
            structs.to_dict(lang_cc.lang_toolchain_info),
            {
                "proto_compiler": protoc.protoc_info.protoc
            }
        )
    )


    outputs = []
    for dep in ctx.attr.deps:
        sources = proto_common.declare_generated_files(
            actions = ctx.actions,
            proto_info = dep[ProtoInfo],
            extension = ".pb.cc",
        )

        headers = proto_common.declare_generated_files(
            actions = ctx.actions,
            proto_info = dep[ProtoInfo],
            extension = ".pb.h",
        )


        proto_common.compile(
            actions = ctx.actions,
            proto_info = dep[ProtoInfo],
            proto_lang_toolchain_info = lang_toolchain_info,
            generated_files = sources + headers,
            plugin_output = ctx.bin_dir.path
        )

        outputs.extend(sources)
        outputs.extend(headers)

    return DefaultInfo(
        files = depset(outputs)
    )



cc_proto_library = rule(
    implementation = _cc_proto_impl,
    attrs = dicts.add(
        common.STD_ATTRS,
        {}
    ),
    toolchains = [
        "@rules_proto//lang/cc:toolchain_type",
        "@rules_proto//proto:toolchain_type"
    ]
)

