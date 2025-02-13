#!/bin/bash

docker build -t localhost:5001/compas-nginx:latest .
docker push localhost:5001/compas-nginx:latest
