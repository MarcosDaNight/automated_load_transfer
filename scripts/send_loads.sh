#!/bin/bash

SWIFT_CONTAINER_IP="192.168.1.102"
SWIFT_CONTAINER_NAME=""
SWIFT_URL="http://${SWIFT_CONTAINER_IP}:8080/v1/AUTH_a50db433dbc3409eba8843e300b636ba/${SWIFT_CONTAINER_NAME}"

for file in simulated_loads/*; do
    if [ -f "$file" ]; then
        echo "Sending $file"
        curl -X PUT -H "X-Auth-Token: $(openstack token issue -f value -c id)" \
             -T "$file" \
             "${SWIFT_URL}$(basename "$file")"
    fi
done
