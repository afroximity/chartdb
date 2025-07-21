#!/bin/bash

set -e

IMAGE_NAME="afroximity/chartdb"
TAG="latest"

echo "🛠  Building the Docker image..."
docker build -t $IMAGE_NAME:$TAG --build-arg VITE_API_BASE=https://api.pionrelay.xyz/api/diagrams .

echo "🏷  Tagging image as $IMAGE_NAME:$TAG"
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG

echo "📤  Pushing $IMAGE_NAME:$TAG to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "✅  Done."
