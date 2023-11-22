load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//proto:proto_common.bzl", "toolchains")

def _test_toolchains(ctx):
    env = unittest.begin(ctx)

    asserts.equals(env, {}, toolchains.if_legacy_toolchain({}))
    asserts.equals(env, None, toolchains.if_legacy_toolchain(None))
    asserts.equals(env, False, toolchains.if_legacy_toolchain(False))
    asserts.equals(env, False, toolchains.if_legacy_toolchain(False))

    return unittest.end(env)

toolchains_test = unittest.make(_test_toolchains)

# buildifier: disable=unnamed-macro
def unittest_toolchains():
    unittest.suite(
        "test_toolchains",
        toolchains_test
    )
