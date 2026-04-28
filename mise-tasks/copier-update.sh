#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

readarray -d '' -t copier_answers_files < <(
  find '.config/copier/' -name '.copier-answers*' -type f -print0
)
for answers_file in "${copier_answers_files[@]}"; do
  echo "::group::$answers_file"
  copier recopy --answers-file "$answers_file" "$@"
  echo '::endgroup::'
done
