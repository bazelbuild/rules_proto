PLATFORMS = {
    "osx-x86_64": struct(
        compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
    ),
    "osx-aarch_64": struct(
        compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:aarch64",
        ],
    ),
    "linux-aarch_64": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:aarch64",
        ],
    ),
    "linux-x86_32": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_32",
        ],
    ),
    "linux-s390_64": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:s390x",
        ],
    ),
    "linux-x86_64": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
    ),
    # TODO: windows
    "windows_armv6": struct(
        compatible_with = [
            "@platforms//os:windows",
            "@platforms//cpu:arm64",
        ],
    ),
    "windows_amd64": struct(
        compatible_with = [
            "@platforms//os:windows",
            "@platforms//cpu:x86_64",
        ],
    ),
}



ProtocInfo = provider(
    doc = "Information about how to invoke the protoc.",
    fields = {
        "protoc": "Executable protoc binary",
    },
)

def _protoc_toolchain_impl(ctx):
    protoc = ctx.executable.protoc

    template_variables = platform_common.TemplateVariableInfo({
        "PROTOC_BIN": protoc.path,
    })
    default = DefaultInfo(
        files = depset([protoc]),
        runfiles = ctx.runfiles(files = [protoc]),
    )
    protoc_info = ProtocInfo(
        protoc = protoc
    )
    toolchain_info = platform_common.ToolchainInfo(
        protoc_info = protoc_info,
        template_variables = template_variables,
        default = default,
    )
    return [
        default,
        toolchain_info,
        template_variables,
    ]

protoc_toolchain = rule(
    implementation = _protoc_toolchain_impl,
    attrs = {
        "protoc": attr.label(
            doc = "A hermetically downloaded protoc executable for the target platform.",
            mandatory = True,
            executable = True,
            cfg = "exec",
            allow_single_file = True,
        ),
    },
    doc = "Defines a protoc toolchain. See: https://docs.bazel.build/versions/main/toolchains.html#defining-toolchains.",
)
