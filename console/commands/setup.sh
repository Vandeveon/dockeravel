#!/usr/bin/env bash
set -euo pipefail

DCL_CONFIG_DIR="dcl_conf/docker-compose-laravel"

copy_with_consent()
{
    SOURCE_PATH=$1
    TARGET_PATH=$2

    if [[ -e "${TARGET_PATH}" ]]; then
        read -p "overwrite ${TARGET_PATH}? (y/n [n])? " ANSWER_OVERWRITE_TARGET
        if [ "${ANSWER_OVERWRITE_TARGET}" == "y" ]; then
            create_target_path
        fi
    else
        create_target_path
    fi
}

create_target_path()
{
    echo " > cp ${SOURCE_PATH} -> ${TARGET_PATH}"
    mkdir -p $(dirname ${TARGET_PATH})
    cp -Rf ${SOURCE_PATH} ${TARGET_PATH}
}

printf "${GREEN}Setting up dcl config files${COLOR_RESET}\n"
copy_with_consent "${DCL_DIR}/${DCL_CONFIG_DIR}/" "${DCL_CONFIG_DIR}"
copy_with_consent "${DCL_DIR}/docker-compose/docker-compose.sample.yml" "${DOCKER_COMPOSE_FILE}"
copy_with_consent "${DCL_DIR}/docker-compose/${DOCKERFILE}" "${DOCKERFILE}"


# Stop running containers in case that setup was executed in an already running project
${COMMANDS_DIR}/stop.sh

echo ""
printf "${GREEN}Docker-compose-laravel set up successfully!${COLOR_RESET}\n"
echo ""
