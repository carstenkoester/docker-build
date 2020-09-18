#!/bin/sh

# Minimal helper script to run olad.
#
# This is run in privileged mode and host network, with the intention to bridge between
# ArtNet and/or E.131 and USB devices.
#
# There are potentially better ways to do this (we could be passing on specific USB devices
# only), but for the time being, the assumption is that this is running on an otherwise
# protected/isolated pi so OLAd essentially runs as if it were a host process.

docker run \
  -d \
  --privileged \
  --net=host \
  -v ${HOME}/ola/config:/etc/olad \
  --restart unless-stopped \
  olad:latest
