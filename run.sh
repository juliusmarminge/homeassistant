#!/bin/sh
# Run container for the first time, in the future run with:
# docker start homeassistant

set -xe

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Stockholm \
  -v ~/homeassistant/config:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable