#!/bin/bash
TEMPLATE_ID="$1"
set -e

SRC_DIR="/tmp/${TEMPLATE_ID}"
echo "Running Smoke Test"

ID_LABEL="test-container=${TEMPLATE_ID}"
devcontainer exec --workspace-folder "${SRC_DIR}" --id-label ${ID_LABEL} /bin/sh -c 'set -e && if [ -f "test-project/test.sh" ]; then cd test-project && if [ "$(id -u)" = "0" ]; then chmod +x test.sh; else sudo chmod +x test.sh; fi && ./test.sh; else ls -a; fi'

# Clean up, with the named volumes the container used: a volume that outlives
# the run gives the next run a pre-installed .pixi, so the env check passes
# even when the post-create hook installs nothing.
CONTAINERS=$(docker container ls -a -f "label=${ID_LABEL}" -q)
VOLUMES=$(docker inspect -f '{{range .Mounts}}{{if eq .Type "volume"}}{{.Name}} {{end}}{{end}}' ${CONTAINERS})
docker rm -f ${CONTAINERS}
if [ -n "${VOLUMES// /}" ] ; then docker volume rm -f ${VOLUMES} ; fi
rm -rf "${SRC_DIR}"
