
def get_archive_url(arch, version):
    platform = arch.replace("darwin", "osx")
        .replace("windows-x86_32", "win32")
        .replace("windows-x86_64", "win64")
        .replace("arm64", "aarch_64")
        .replace("ppc64le", "ppcle_64")
        .replace("s390x", "s390_64")
    return "https://github.com/protocolbuffers/protobuf/releases/download/v{version}/protoc-{version}-{arch}.zip".format(
        version = version,
        arch = 
    )

PROTOC_VERSIONS = {
  "24.4": {
    "linux-arm64": "sha256-g6wAD/VA4kK2ov8iGjrIjS2OVUQ4AbeijpaX5fQOiTc=",
    "linux-ppc64le": "sha256-v78zFoffihwhHMAcKXa/ke79bE5XgJyGyzQUDHWt1Ew=",
    "linux-s390x": "sha256-WQaVzmrJCFWzY02ORrPr70ZyjN1UZkqfiSlPwi4k/BI=",
    "linux-x86_32": "sha256-CQcHkwiWBzm3ZF/1ElSUFpGxJKPirU78zWw/GJLIjoc=",
    "linux-x86_64": "sha256-WHE5jf1qyVSmrev0HxrjpN6RWjamqy/T6PLADUW1Dew=",
    "darwin-arm64": "sha256-2AVESAOX/ooF2Wb7opHPEjOtDbDrwk7HLXvQd9bnrFk=",
    "darwin-x86_64": "sha256-bDtr9AONczttMfHMRRamVlcLW1qvuWa2UPgYKv0LmM8=",
    "windows-x86_32": "sha256-hwSIyBFwZkv58HR8Z/SDwOOHtXySmLY5skd6xgAHVjw=",
    "windows-x86_64": "sha256-jz+S+/fdKZUSnm/iI8B8CqqX+xgvGc7PtCTpFGsnPrY="
  }
}