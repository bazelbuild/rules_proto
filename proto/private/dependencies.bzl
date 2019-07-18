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

dependencies = {
    "bazel_skylib": {
        "sha256": "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
        "urls": [
            "https://github.com/bazelbuild/bazel-skylib/archive/0.8.0.tar.gz",
        ],
    },
    "com_google_protobuf": {
        "sha256": "2ee9dcec820352671eb83e081295ba43f7a4157181dad549024d7070d079cf65",
        "strip_prefix": "protobuf-3.9.0",
        "urls": [
            "https://mirror.bazel.build/github.com/google/protobuf/archive/v3.9.0.tar.gz",
            "https://github.com/protocolbuffers/protobuf/archive/v3.9.0.tar.gz",
        ],
    },
    "zlib": {
        "sha256": "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
        "build_file": "@com_google_protobuf//:third_party/zlib.BUILD",
        "strip_prefix": "zlib-1.2.11",
        "urls": [
            "https://zlib.net/zlib-1.2.11.tar.gz",
        ],
    },
}
