# Copyright 2024 The Bazel Authors. All rights reserved.
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
"""proto_library rule"""

_MIGRATION_TAG = "__PROTO_RULES_MIGRATION_DO_NOT_USE_WILL_BREAK__"

def _add_migration_tag(attrs):
    if "tags" in attrs and attrs["tags"] != None:
        attrs["tags"] = attrs["tags"] + [_MIGRATION_TAG]
    else:
        attrs["tags"] = [_MIGRATION_TAG]
    return attrs

def proto_library(**attrs):
    """Bazel proto_library rule.

    https://docs.bazel.build/versions/master/be/protocol-buffer.html#proto_library

    Args:
      **attrs: Rule attributes
    """

    # buildifier: disable=native-proto
    native.proto_library(**_add_migration_tag(attrs))
