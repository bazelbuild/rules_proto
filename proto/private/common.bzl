load("@rules_proto//proto:defs.bzl", "ProtoInfo")

def _generate():    
    pass



_STD_ATTRS = {
    "deps": attr.label_list(providers = [ProtoInfo])
}

common = struct(
    STD_ATTRS = _STD_ATTRS
)