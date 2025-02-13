#!/bin/bash

kind delete cluster
IMAGE=$(docker image ls kindest/node --format {{.ID}})
docker image rm ${IMAGE}