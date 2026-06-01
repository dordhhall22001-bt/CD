#!/bin/bash

# Source the base deployment functions
source "$(dirname "$0")/deploy_base.sh"

# Required environment variables (normally provided by CI/CD)
# VPS_HOST
# REGISTRY
# IMAGE_NAME
# CONTAINER_NAME
# PORT

HOST=${VPS_HOST:-"simulated-vps.example.com"}
CONTAINER_REG=${REGISTRY:-"ghcr.io"}
FULL_IMAGE="${CONTAINER_REG}/${IMAGE_NAME}:latest"
APP_CONTAINER=${CONTAINER_NAME:-"nestjs-app"}
APP_PORT=${PORT:-"3000"}

# Execute the deployment sequence
connect_to_vps "$HOST"
login_registry "$CONTAINER_REG"
pull_image "$FULL_IMAGE"
stop_container "$APP_CONTAINER"
start_container "$APP_CONTAINER" "$FULL_IMAGE" "$APP_PORT"
