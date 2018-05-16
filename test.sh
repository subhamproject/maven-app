
#!/bin/bash
export PATH="$PATH:/usr/local/bin:/$WORKSPACE"
docker-compose -f test-bed.yml run --rm -w "$WORKSPACE" --entrypoint "../runtests.sh" maven-app-build
