#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [[ -z ${PAT-} ]]; then
  echo "PAT is not set" >&2
  exit 1
fi

readarray -t repos < <(
  gh repo list \
    --jq ".[].nameWithOwner" \
    --json "nameWithOwner" \
    --limit 1000 \
    --no-archived \
    --source
)
for repo in "${repos[@]}"; do
  gh secret --repo "$repo" set PAT --body "$PAT"
done
