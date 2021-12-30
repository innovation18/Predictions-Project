#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=hanisharora/predictions-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKERPATH"
docker login --username=hanisharora
docker tag predictions-app hanisharora/predictions-app 

# Step 3:
# Push image to a docker repository
docker push hanisharora/predictions-app