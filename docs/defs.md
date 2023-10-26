<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Starlark rules for building protocol buffers.

<a id="proto_descriptor_set"></a>

## proto_descriptor_set

<pre>
proto_descriptor_set(<a href="#proto_descriptor_set-name">name</a>, <a href="#proto_descriptor_set-deps">deps</a>)
</pre>

Collects all `FileDescriptorSet`s from `deps` and combines them into a single
`FileDescriptorSet` containing all the `FileDescriptorProto`.

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="proto_descriptor_set-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="proto_descriptor_set-deps"></a>deps |  Sequence of <code>ProtoInfo</code>s to collect <code>FileDescriptorSet</code>s from.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | <code>[]</code> |


<a id="proto_lang_toolchain"></a>

## proto_lang_toolchain

<pre>
proto_lang_toolchain(<a href="#proto_lang_toolchain-name">name</a>, <a href="#proto_lang_toolchain-toolchain_type">toolchain_type</a>, <a href="#proto_lang_toolchain-exec_compatible_with">exec_compatible_with</a>, <a href="#proto_lang_toolchain-target_compatible_with">target_compatible_with</a>, <a href="#proto_lang_toolchain-attrs">attrs</a>)
</pre>

Creates a proto_lang_toolchain and corresponding toolchain target.

Toolchain target is only created when toolchain_type is set.

https://docs.bazel.build/versions/master/be/protocol-buffer.html#proto_lang_toolchain


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="proto_lang_toolchain-name"></a>name |  name of the toolchain   |  none |
| <a id="proto_lang_toolchain-toolchain_type"></a>toolchain_type |  The toolchain type   |  <code>None</code> |
| <a id="proto_lang_toolchain-exec_compatible_with"></a>exec_compatible_with |  ([constraints]) List of constraints the prebuild binaries is compatible with.   |  <code>[]</code> |
| <a id="proto_lang_toolchain-target_compatible_with"></a>target_compatible_with |  ([constraints]) List of constraints the target libraries are compatible with.   |  <code>[]</code> |
| <a id="proto_lang_toolchain-attrs"></a>attrs |  Rule attributes   |  none |


<a id="proto_library"></a>

## proto_library

<pre>
proto_library(<a href="#proto_library-attrs">attrs</a>)
</pre>

Bazel proto_library rule.

https://docs.bazel.build/versions/master/be/protocol-buffer.html#proto_library


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="proto_library-attrs"></a>attrs |  Rule attributes   |  none |


<a id="proto_toolchain"></a>

## proto_toolchain

<pre>
proto_toolchain(<a href="#proto_toolchain-name">name</a>, <a href="#proto_toolchain-proto_compiler">proto_compiler</a>, <a href="#proto_toolchain-exec_compatible_with">exec_compatible_with</a>)
</pre>

Creates a proto_toolchain and toolchain target for proto_library.

Toolchain target is suffixed with "_toolchain".


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="proto_toolchain-name"></a>name |  name of the toolchain   |  none |
| <a id="proto_toolchain-proto_compiler"></a>proto_compiler |  (Label) of either proto compiler sources or prebuild binaries   |  none |
| <a id="proto_toolchain-exec_compatible_with"></a>exec_compatible_with |  ([constraints]) List of constraints the prebuild binary is compatible with.   |  <code>[]</code> |


