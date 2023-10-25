load(":stardoc_with_diff_test.bzl", "stardoc_with_diff_test", "update_docs")

stardoc_with_diff_test(
    name = "defs",
    bzl_library_target = "//proto:defs",
    out_label = "//docs:defs.md",
)

update_docs(
    name = "update",
    docs_folder = "docs",
)
