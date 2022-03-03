#!/usr/bin/env bash
#
# Run checkov against a set of input paths
set -euo pipefail

export PATH=$PATH:/usr/local/bin

for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  checkov -d "$dir"
done
