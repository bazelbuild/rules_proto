# Copyright 2019 The Bazel Authors. All rights reserved.
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

"""Contains the implementation for `proto_common.direct_source_infos`."""

# TODO(yannic): Remove this suppression when
# https://github.com/bazelbuild/buildtools/issues/774 has been fixed.
# buildifier: disable=function-docstring-args
def direct_source_infos(proto_info, *, provided_sources = []):
    """Returns information about `proto_info`'s direct sources.

    Files that are both in `proto_info`'s direct sources and in
    `provided_sources` are skipped. This is useful, e.g., for well-known
    protos that are already provided by the Protobuf runtime.

    Args:
      proto_info: An instance of `ProtoInfo`.
      provided_sources: Optional. A sequence of import paths to ignore.

    Returns:
      A sequence of structs containing information about `proto_info`'s direct
      sources. Each struct contains the following fields:
        - `file`: The `.proto` file.
        - `import_path`: The import path of the `.proto` file.
    """

    files = [_info(f, proto_info) for f in proto_info.direct_sources]
    return [f for f in files if f.import_path not in provided_sources]

def _info(file, proto_info):
    """Computes information about a single `.proto` file.

    Args:
      file: The `.proto` file to generate info for. Must be in
          `direct_sources` of `proto_info`.
      proto_info: An instance of `ProtoInfo`.

    Returns: A struct. Consult the documented return type of
        `direct_source_infos` for documentation about its fields.
    """

    if "." == proto_info.proto_source_root:
        # The `proto_library` didn't specify `import_prefix` or
        # `strip_import_prefix`, and `file` is a regular source file
        # (i.e. not generated) in the main workspace.

        return struct(
            file = file,
            import_path = file.path,
        )

    source_root = proto_info.proto_source_root
    offset = len(source_root) + 1  # + '/'.
    return struct(
        file = file,
        import_path = file.path[offset:],
    )
