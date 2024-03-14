#!/usr/bin/env bash
# By default, mirrors the most recent release of protoc from
# https://github.com/protocolbuffers/protobuf/releases
#
# To mirror a different version, set VERSION in the environment.
# To use a different fork, set REPOSITORY in the environment.
set -o nounset -o errexit -o pipefail

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPOSITORY=${REPOSITORY:-"protocolbuffers/protobuf"}
VERSIONS_BZL="$SCRIPT_DIR/versions.bzl"

RELEASES=$(mktemp)
curl > $RELEASES \
  --silent \
  --header "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/${REPOSITORY}/releases?per_page=50

# If $VERSION unset, mirror the latest release
VERSION=${VERSION:-$(jq --raw-output '.[0].tag_name' $RELEASES)}
echo "Mirroring integrity hashes for $REPOSITORY at release $VERSION ..."

DOWNLOAD_URLS_FILTER='
map(select(.tag_name == $version))[0]
| .assets
| map(select(.name | startswith("protoc")))
| map(.browser_download_url)[]
'
# Workaround https://github.com/protocolbuffers/protobuf/issues/16165:
# protobuf doesn't publish their integrity hashes to e.g. checksums.txt
# Create a file that looks like a checksums.txt from a shasum command, i.e.
# sha384-RVFu8PJJCOSXwYTqH7FyWRSgsP1AAjcEa+VViddVTgtd9wYvZjQoQ8jmlFxwfFw+ protobuf-26.0-rc3.tar.gz
# sha384-JYSXGTSBfwUU6UzqazUTkT3lTZDzx10YdaNQYjojrT7X1Ro1fA+T4tjJw0e8UISV protobuf-26.0-rc3.zip
#
# Note, this follows https://en.wikipedia.org/wiki/Trust_on_first_use
# in that we assume that a release is not tampered for 24h until we mirror it, then afterward
# we are guaranteed that whatever we initially trusted does not change.
CHECKSUMS=$(mktemp)
for url in $(jq --arg version $VERSION --raw-output "$DOWNLOAD_URLS_FILTER" <$RELEASES); do
    sha=$(curl -sSL $url | shasum -b -a 384 | awk "{ print \$1 }" | xxd -r -p | base64)
    echo "sha384-${sha} $(basename $url)"
done | tee "$CHECKSUMS"

# Format as a dictionary of version to dictionary of filename to sha
# {
#  "v26.0-rc3": {
#    "protobuf-26.0-rc3.tar.gz": "sha384-RVFu8PJJCOSXwYTqH7FyWRSgsP1AAjcEa+VViddVTgtd9wYvZjQoQ8jmlFxwfFw+",
#    "protobuf-26.0-rc3.zip": "sha384-JYSXGTSBfwUU6UzqazUTkT3lTZDzx10YdaNQYjojrT7X1Ro1fA+T4tjJw0e8UISV",
#    ...
TO_DICTIONARY_FILTER='
.
| rtrimstr("\n")
| split("\n")
| map(
    split(" ")
    | {"key": .[1], "value": .[0]}
  )
| from_entries
| { ($version): .}
'
NEW_VERSION=$(mktemp)
jq "$TO_DICTIONARY_FILTER" \
  --slurp --raw-input \
  --arg version $VERSION \
  $CHECKSUMS \
  > $NEW_VERSION

# Read existing versions.bzl content into a json object for easy merging
EXISTING_VERSIONS=$(mktemp)
python3 -c "import json; exec(open('$VERSIONS_BZL').read()); print(json.dumps(PROTOC_VERSIONS))" > $EXISTING_VERSIONS

# Locate the PROTOC_VERSIONS declaration in the source file and replace it with a merge of both data sources
NEW=$(mktemp)
sed '/PROTOC_VERSIONS =/Q' $VERSIONS_BZL > $NEW
echo -n "PROTOC_VERSIONS = " >> $NEW
jq --slurp '.[0] * .[1]' $NEW_VERSION $EXISTING_VERSIONS >> $NEW
cp $NEW $VERSIONS_BZL

echo "Done, see updates in $VERSIONS_BZL"
