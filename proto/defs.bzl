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

def proto_lang_toolchain(**attrs):
    """Bazel proto_lang_toolchain rule.

    https://docs.bazel.build/versions/master/be/protocol-buffer.html#proto_lang_toolchain

    Args:
      **attrs: Rule attributes
    """
    native.proto_lang_toolchain(**attrs)

def proto_library(**attrs):
    """Bazel proto_library rule.

    https://docs.bazel.build/versions/master/be/protocol-buffer.html#proto_library

    Args:
      **attrs: Rule attributes
    """
    native.proto_library(**attrs)
