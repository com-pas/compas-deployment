#!/bin/bash

# Check until no more process found with filter.
docker ps -a --filter label=compas

while [ `docker ps --filter ${1} --filter label=compas -q | wc -l` -gt 0 ]
do
  echo "Still waiting for the containers with filter '${1}'."
  sleep 10
done

echo "Done no containers with filter '${1}'."
docker ps -a --filter label=compas