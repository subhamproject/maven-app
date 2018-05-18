#!/bin/bash
export PATH="$PATH:/usr/local/bin"
#docker-compose build maven-app-image-docker
case $BRANCH_NAME in
  maven)
    tag=QA-${BUILD_NUMBER}
    dockerfile=Dockerfile.develop
    ;;
  develop)
    tag=Dev-${BUILD_NUMBER}
    #tag="subhammandal"
    dockerfile=Dockerfile.develop
    ;;
  master)
    tag=Prod-${BUILD_NUMBER}
    dockerfile=Dockerfile.develop
    ;;
  *)
    echo "Unknown branch '$BRANCH_NAME'"
    exit 1
esac

service=$(cat $(dirname $0)/service-manifest.txt)

docker build -t "${tag}":"${service}" -f $(dirname $0)/docker/$dockerfile .
