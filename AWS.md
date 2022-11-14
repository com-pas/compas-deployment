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
Look up your profile id on AWS and change the executionRoleArn to something like this:

```    
"executionRoleArn": "arn:aws:iam::[PROFILE_ID]:role/ecsTaskExecutionRole",
```

Change the executionRoleArn in the following files:

* [aws/task-executions/compas-auto-alignment.json](./aws/task-executions/compas-auto-alignment.json)
* [aws/task-executions/compas-cim-mapping.json](./aws/task-executions/compas-cim-mapping.json)
* [aws/task-executions/compas-openscd.json](./aws/task-executions/compas-openscd.json)
* [aws/task-executions/compas-scl-data-service.json](./aws/task-executions/compas-scl-data-service.json)
* [aws/task-executions/compas-scl-validator.json](./aws/task-executions/compas-scl-validator.json)
