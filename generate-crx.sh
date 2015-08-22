#!/bin/sh

set -e

temp="$(mktemp -d)"

google-chrome --user-data-dir="${temp}" --pack-extension="${PWD}"
rm -rf "${temp}"
