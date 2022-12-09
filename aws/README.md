
<!--
SPDX-FileCopyrightText: 2022 Alliander N.V.
SPDX-License-Identifier: Apache-2.0
-->

# AWS Deployment

## Used AWS Services
* [ECS](#ecs)


### ECS
Amazon ECS is a fully managed container orchestration service that makes it easy for you to deploy, manage, and scale containerized applications.

## Overview

| Service 	| Image  	| Url  	| 
|-------	|---	|---	|
| OpenSCD 	| lfenergy/compas-open-scd   	| https://hub.docker.com/r/lfenergy/compas-open-scd  	|
| Cim Mapping 	| lfenergy/compas-cim-mapping   	| https://hub.docker.com/r/lfenergy/compas-cim-mapping   	|
| Auto Alignment 	| lfenergy/compas-scl-auto-alignment   	| https://hub.docker.com/r/lfenergy/compas-scl-auto-alignment   	|
| Scl Validator | lfenergy/compas-scl-validator | https://hub.docker.com/r/lfenergy/compas-scl-validator |
| Scl Data Service | lfenergy/compas-scl-data-service | https://hub.docker.com/r/lfenergy/compas-scl-data-service |


## Setup

### Prerequisites
Look up your profile id on AWS (login on https://aws.amazon.com and it should be in the dropdown menu under your username).
Now change the executionRoleArn to something like this:

```    
"executionRoleArn": "arn:aws:iam::[PROFILE_ID]:role/ecsTaskExecutionRole",
```

Change the executionRoleArn in the following files:

* [aws/task-executions/compas-auto-alignment.json](./aws/task-executions/compas-auto-alignment.json)
* [aws/task-executions/compas-cim-mapping.json](./aws/task-executions/compas-cim-mapping.json)
* [aws/task-executions/compas-openscd.json](./aws/task-executions/compas-openscd.json)
* [aws/task-executions/compas-scl-data-service.json](./aws/task-executions/compas-scl-data-service.json)
* [aws/task-executions/compas-scl-validator.json](./aws/task-executions/compas-scl-validator.json)

Go to the `Elastic Container Service` in the AWS console.
Here you can create a new cluster.
After creating the new cluster, you can click on it to get inside the cluster.
You should have `task definitions` in the menu on the sidebar.
Within task definitions, you can create the tasks.
Click on `Create new task definition with JSON` and paste the first json file in.
Now create task definitions for the other json files mentioned above.

Back in you cluster, click on `Deploy` under the Services tab.
For launch type, choose `Fargate`.
Application type should be `Task`.
Family should be one of the newly created `Task Definitions`.

If you don't have a load balancer set up yet, you can create a load balancer now.
Choose ALB, or Application Load Balancer as type.
Check the mapping inside the [nginx proxy](../compas/reverse-proxy/nginx.conf) to use the correct mappings for each service.

When deploying the Services, make sure that the `target groups` have the correct healthcheck.
