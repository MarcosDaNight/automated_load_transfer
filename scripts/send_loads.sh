#!/bin/bash

SWIFT_CONTAINER_IP=”<your container ip>”
SWIFT_CONTAINER_NAME="<your container name>"
SWIFT_URL="http://${SWIFT_CONTAINER_IP}:<Port>/v1//${SWIFT_AUTH_TOKEN}/${SWIFT_CONTAINER_NAME}"

for file in simulated_loads/*; do
    if [ -f "$file" ]; then
        echo "Sending $file"
        curl -X PUT -H "X-Auth-Token: $(openstack token issue -f value -c id)" \
             -T "$file" \
             "${SWIFT_URL}$(basename "$file")"
    fi
done
