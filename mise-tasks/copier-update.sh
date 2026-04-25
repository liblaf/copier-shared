#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

readarray -d '' -t copier_answers_files < <(
  find '.config/copier/' -iname '.copier-answers*' -type f -print0
)
for answers_file in "${copier_answers_files[@]}"; do
  if [[ ${CI-} == 'true' ]]; then echo "::group::$answers_file"; fi
  copier recopy --answers-file "$answers_file" "$@"
  if [[ ${CI-} == 'true' ]]; then echo '::endgroup::'; fi
done
