#!/bin/bash

echo "Pulling latest Docker image..."

docker pull $ECR_REPOSITORY:latest

echo "Stopping existing container..."

docker stop muchtodo || true
docker rm muchtodo || true

echo "Starting new container..."

docker run -d \
  --name muchtodo \
  -p 8080:8080 \
  $ECR_REPOSITORY:latest

echo "Backend deployment complete"