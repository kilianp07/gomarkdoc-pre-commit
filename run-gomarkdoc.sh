#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v gomarkdoc &> /dev/null ; then
    echo "gomarkdoc not installed or available in the PATH" >&2
    echo "please check https://github.com/princjef/gomarkdoc" >&2
    exit 1
fi

exec gomarkdoc --output doc.md ./...
