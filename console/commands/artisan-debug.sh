#!/usr/bin/env bash
set -euo pipefail

${COMMANDS_DIR}/exec-debug.sh php artisan "$@"
