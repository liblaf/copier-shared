#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

readarray -t repos < <(
  gh repo list \
    --jq ".[].nameWithOwner" \
    --json "nameWithOwner" \
    --limit 1000 \
    --no-archived \
    --source
)

for repo in "${repos[@]}"; do
  gh workflow --repo "$repo" run auto-repo.yaml || true
done
