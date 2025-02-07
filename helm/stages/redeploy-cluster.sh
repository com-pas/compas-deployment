#!/bin/bash

helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-database.yaml

sleep 15

helmfile apply --namespace ${STAGE_NAME} --validate -f helmfile-compas.yaml
