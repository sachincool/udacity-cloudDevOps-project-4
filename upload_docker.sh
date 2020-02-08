#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=sachincool/kube-ml:latest

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
echo "Docker login"
docker login  --username sachincool
docker tag kube-ml $dockerpath
docker push $dockerpath