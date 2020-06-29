#!/usr/bin/env bash
set -euo pipefail

COMPOSER_DIR_OPTION="--working-dir=${COMPOSER_DIR}"

${COMMANDS_DIR}/exec.sh composer "$@" ${COMPOSER_DIR_OPTION}
