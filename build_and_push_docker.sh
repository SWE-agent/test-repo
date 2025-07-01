#!/usr/bin/env bash

# Create and use a new builder instance (skip if already exists)
docker buildx create --name multiplatform-builder --use --bootstrap || docker buildx use multiplatform-builder

# Build and push for multiple platforms using specific Windows variant
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t klieret/sweb.eval.swe-agent_1776_test-repo-1:latest \
  --push \
  .
