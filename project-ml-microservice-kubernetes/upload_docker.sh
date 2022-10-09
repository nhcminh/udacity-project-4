#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=minhnhc/project-api
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u minhnhc
docker tag project-api $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest

### DOCKER REPO ###
# https://hub.docker.com/repository/docker/minhnhc/project-api