#!/bin/bash
export PATH="$PATH:/usr/local/bin"
docker-compose -f test-bed.yml run --rm -w "$WORKSPACE" --entrypoint "mvn package -DskipTests" maven-app-build
docker-compose build maven-app-image
