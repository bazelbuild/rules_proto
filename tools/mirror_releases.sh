#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

JQ_FILTER=\
'map({
    "key": .tag_name | ltrimstr("v"), 
    "value": .assets 
        | map( select(  (.name | startswith("protoc-")) and (.name | contains("-universal_binary") | not ) ) )
        | map({ 
            key: .name 
                | sub("^protoc-[\\d+.?]+-"; "") 
                | rtrimstr(".zip"), 
            value: "sha256-"
        }) | from_entries 
}) | from_entries
'

INFO="$(curl --silent -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/protocolbuffers/protobuf/releases?per_page=1 | jq "$JQ_FILTER")"

for VERSION in $(jq -r 'keys | join("\n")' <<< $INFO); do 
    for PLATFORM in $(jq -r ".[\"$VERSION\"] | keys | join(\"\n\")" <<< $INFO); do 
        SHA256=$(curl -fLs "https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protoc-$VERSION-$PLATFORM.zip" | shasum -a 256 | xxd -r -p | base64)
        INFO=$(jq ".[\"$VERSION\"][\"$PLATFORM\"] = \"sha256-$SHA256\"" <<< $INFO)
    done
done


JQ_POSTPROCESS=\
'. | to_entries | map({
    key: .key,
    value: .value | to_entries | map({
        key: .key 
            | sub("osx"; "darwin")
            | sub("win32"; "windows-x86_32")
            | sub("win64"; "windows-x86_64")
            | sub("aarch_64"; "arm64")
            | sub("ppcle_64"; "ppc64le")
            | sub("s390_64"; "s390x"),
        value: .value
    }) | from_entries
}) | from_entries
'

echo -n "PROTOC_VERSIONS = "
echo $INFO | jq -M "$JQ_POSTPROCESS"

echo ""
echo "Copy the version info into proto/private/versions.bzl"