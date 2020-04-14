#!/usr/bin/bash

set -e
VERSION=$1
if [ -z "$VERSION" ]; then
  echo "usage: $0 version"
  exit 1
fi

URLS=("https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v${VERSION}.tar.gz"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-aarch_64.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-ppcle_64.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-s390x_64.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-x86_32.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-x86_64.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-osx-x86_32.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-osx-x86_64.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-win32.zip"
"https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-win64.zip"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/${VERSION}/protobuf-java-${VERSION}.jar"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/${VERSION}/protobuf-java-${VERSION}-sources.jar"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/${VERSION}/protobuf-java-util-${VERSION}.jar"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java-util/${VERSION}/protobuf-java-util-${VERSION}-sources.jar"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/${VERSION}/protobuf-javalite-${VERSION}.jar"
"https://repo1.maven.org/maven2/com/google/protobuf/protobuf-javalite/${VERSION}/protobuf-javalite-${VERSION}-sources.jar"
)

for U in ${URLS[@]}; do
  MU="https://mirror.bazel.build/${U#"https://"}"
  SUM=$(wget -q -O - $U|shasum -a 256|cut -d' ' -f1)
  echo
  echo '        "sha256": "'${SUM}'",'
  echo '        "urls": ['
  echo '            "'"$MU"'",'
  echo '            "'"$U"'",'
  echo '        ],'
done

echo
echo "https://raw.githubusercontent.com/protocolbuffers/protobuf/v${VERSION}/protobuf_deps.bzl"