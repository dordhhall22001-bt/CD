#!/bin/bash

# Base deployment script containing simulated operations

function connect_to_vps() {
    local host=$1
    echo "[SIMULATION] Connecting to VPS at $host via SSH..."
    sleep 2
    echo "[SIMULATION] Authenticating..."
    sleep 1
    echo "[SIMULATION] Logged into VPS successfully."
}

function login_registry() {
    local registry=$1
    echo "[SIMULATION] Logging into container registry: $registry..."
    sleep 1
    echo "[SIMULATION] Login Succeeded"
}

function pull_image() {
    local image=$1
    echo "[SIMULATION] Pulling the latest image: $image..."
    sleep 3
    echo "[SIMULATION] Status: Downloaded newer image for $image"
}

function stop_container() {
    local container_name=$1
    echo "[SIMULATION] Stopping existing container '$container_name'..."
    sleep 1
    echo "$container_name"
    echo "[SIMULATION] Removing existing container '$container_name'..."
    sleep 1
    echo "$container_name"
}

function start_container() {
    local container_name=$1
    local image=$2
    local port=$3
    echo "[SIMULATION] Starting new container '$container_name' from image '$image' on port $port..."
    sleep 2
    # Output a fake container ID
    echo "f9b87c2b5d4e1a3b8c5d2e7f4a1b8c5d2e7f4a1b8c5d2e7f4a1b8c5d2e7f4a1b"
    echo "[SIMULATION] Deployment simulated successfully!"
}
