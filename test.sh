
#!/bin/bash
docker-compose -f test-bed.yml run --rm -w "$WORKSPACE" --entrypoint "runtests.sh" maven-app-build
