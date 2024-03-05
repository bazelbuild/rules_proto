"Module extensions for use under bzlmod"

load(":toolchains.bzl", "rules_proto_toolchains")

DEFAULT_REPOSITORY = "rules_proto_protoc"

protoc_tag = tag_class(attrs = {
    "name": attr.string(doc = """\
Base name for generated repositories, allowing more than one toolchain to be registered.
Overriding the default is only permitted in the root module.
""", default = DEFAULT_REPOSITORY),
    "version": attr.string(doc = "A tag of protocolbuffers/protobuf repository."),
})

def _proto_extension_impl(module_ctx):
    registrations = {}
    root_name = None
    for mod in module_ctx.modules:
        for toolchain in mod.tags.protoc:
            if toolchain.name != DEFAULT_REPOSITORY and not mod.is_root:
                fail("""\
                Only the root module may override the default name for the rules_py_tools toolchain.
                This prevents conflicting registrations in the global namespace of external repos.
                """)

            # Ensure the root wins in case of differences
            if mod.is_root:
                rules_proto_toolchains(toolchain.name, register = False, version = toolchain.version)
                root_name = toolchain.name
            else:
                registrations[toolchain.name] = toolchain.version
    for name, version in registrations.items():
        if name != root_name:
            rules_proto_toolchains(name, register = False, version = version)

proto = module_extension(
    implementation = _proto_extension_impl,
    tag_classes = {"protoc": protoc_tag},
)
