#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

cp --target-directory='template' --verbose '.pre-commit-config.yaml'
