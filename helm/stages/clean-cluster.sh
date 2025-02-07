#!/bin/bash

helmfile delete --namespace ${STAGE_NAME} -f helmfile-compas.yaml 

helmfile delete --namespace ${STAGE_NAME} -f helmfile-database.yaml          
