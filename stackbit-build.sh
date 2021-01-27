#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://staging.widget.stackbit.com/init.js 6011702ff2368b0015fdb5b6

echo "stackbit-build.sh: finished build"
