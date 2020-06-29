#!/usr/bin/env bash
set -euo pipefail

printf "${GREEN}Starting containers in detached mode${COLOR_RESET}\n"

${DOCKER_COMPOSE} up -d "$@"
