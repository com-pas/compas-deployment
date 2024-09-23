#!/bin/bash

# Check until no more process found with filter.
docker ps -a --filter label=compas

while [ `docker ps --filter health=starting --filter label=compas -q | wc -l` -gt 0 ]
do
  echo "Still waiting for the containers with filter 'health=starting'."
  sleep 10
  docker ps -a --filter label=compas
done

containers=$(docker ps -a --filter status=exited)
if [ -n "$containers" ]; then
  echo "Some containers are exited."
  docker logs $containers
fi

echo "Done no containers with filter 'health=starting'."
docker ps -a --filter label=compas