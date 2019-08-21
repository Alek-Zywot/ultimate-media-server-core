#!/bin/bash
set -a
source ./env/synology.env

docker-compose --project-name PlexDrive\
  -f ./server-dc.yml \
  -f ./docker-autoheal/docker-compose.yml \
  -f ./docker-bazarr/docker-compose.yml \
  -f ./docker-calibre-web/docker-compose.yml \
  -f ./docker-deluge-vpn/docker-compose.yml \
  -f ./docker-heimdall/docker-compose.yml \
  -f ./docker-jackett/docker-compose.yml \
  -f ./docker-lazylibrarian/docker-compose.yml \
  -f ./docker-netdata/docker-compose.yml \
  -f ./docker-ombi/docker-compose.yml \
  -f ./docker-plex/docker-compose.yml \
  -f ./docker-radarr/docker-compose.yml \
  -f ./docker-sonarr/docker-compose.yml \
  -f ./docker-tautulli/docker-compose.yml \
  -f ./docker-watchtower/docker-compose.yml \
  up -d
