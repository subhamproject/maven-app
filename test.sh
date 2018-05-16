
#!/bin/bash
export PATH="$PATH:/usr/local/bin:/$WORKSPACE"
docker-compose -f test-bed.yml run --rm -w "$WORKSPACE" --entrypoint "${WORKSPACE}/runtests.sh" maven-app-build
