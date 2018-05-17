#!/bin/bash
export PATH="$PATH:/usr/local/bin"
#cd $(dirname $0)
docker-compose -f test-bed.yml run --rm -w "$WORKSPACE" --entrypoint "./runtests.sh" maven-app-build
