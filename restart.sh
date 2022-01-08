#!/bin/sh
# Hard restart HomeAssistant by restarting the container

set -xe

docker stop homeassistant
docker start homeassistant