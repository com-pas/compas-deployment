#!/bin/bash

# Check until no more process found with filter.
docker ps -a --filter label=compas

while [ `docker ps --filter health=starting --filter label=compas -q | wc -l` -gt 0 ]
do
  echo "Still waiting for the containers with filter 'health=starting'."
  sleep 10
  docker ps -a --filter label=compas
done

echo "Done no containers with filter 'health=starting'."
docker ps -a --filter label=compas