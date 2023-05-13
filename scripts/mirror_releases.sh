#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

JQ_FILTER=\
'map({
    "key": .tag_name | ltrimstr("v"), 
    "value": .assets 
        | map( select( .name | startswith("protoc-") ) )
        | map({ key: .name | ltrimstr("protoc-") | ltrimstr("23.0-") | rtrimstr(".zip"), value: "sha256-" })
        | from_entries 
}) | from_entries
'


INFO="$(curl --silent -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/protocolbuffers/protobuf/releases?per_page=1 | jq "$JQ_FILTER")"

for VERSION in $(jq -r 'keys | join("\n")' <<< $INFO); do 
    for PLATFORM in $(jq -r ".[\"$VERSION\"] | keys | join(\"\n\")" <<< $INFO); do 
        echo "https://github.com/protocolbuffers/protobuf/releases/download/$VERSION/protoc-$VERSION-$PLATFORM.zip"
        SHA256=$(curl -fLs "https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protoc-$VERSION-$PLATFORM.zip" | sha256sum | xxd -r -p | base64)
        INFO=$(jq ".[\"$VERSION\"][\"$PLATFORM\"] = \"sha256-$SHA256\"" <<< $INFO)
    done
done

echo -n "PROTOC_VERSIONS = "
echo $INFO | jq -M

echo ""
echo "Copy the version info into proto/private/versions.bzl"