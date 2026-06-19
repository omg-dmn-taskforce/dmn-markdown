#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="dmn-markdown"

if ! docker image inspect "$IMAGE_NAME" &>/dev/null; then
  echo "Image '$IMAGE_NAME' not found, building..."
  docker build -t "$IMAGE_NAME" .
else
  echo "Image '$IMAGE_NAME' found, skipping build."
fi

docker run --rm \
  -v "$(pwd):/app" \
  "$IMAGE_NAME" \
  sh -c 'make && cp /app/DMN_1.7.pdf /app/output.pdf'

echo "Done: output.pdf"
