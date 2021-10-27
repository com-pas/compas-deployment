#!/bin/bash

# Check until no more process found with filter.
while [ `docker ps --filter ${1} -q | wc -l` -gt 0 ]
do
  echo "Still waiting for the containers with filter '${1}'."
  sleep 10
done
echo "Done no containers with filter '${1}'."
docker ps -a