#!/bin/sh

set -e

temp="$(mktemp -d)"

for variant in light dark
do
	google-chrome --user-data-dir="${temp}" --pack-extension="${PWD}/${variant}"
done

rm -rf "${temp}"
