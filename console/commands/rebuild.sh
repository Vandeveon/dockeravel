#!/usr/bin/env bash
set -euo pipefail

printf "${GREEN}Rebuilding and starting containers in detached mode${COLOR_RESET}\n"

${COMMANDS_DIR}/stop.sh "$@"
${DOCKER_COMPOSE} up --build -d "$@"