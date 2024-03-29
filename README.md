<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

[![REUSE status](https://api.reuse.software/badge/github.com/com-pas/compas-deployment)](https://api.reuse.software/info/github.com/com-pas/compas-deployment)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5925/badge)](https://bestpractices.coreinfrastructure.org/projects/5925)
[![Slack](https://raw.githubusercontent.com/com-pas/compas-architecture/master/public/LFEnergy-slack.svg)](http://lfenergy.slack.com/)

# CoMPAS Deployment Repository
Containing tools / configurations for deploying CoMPAS services. For a deployment overview see [here](DEPLOYMENT.md)

More about the integration tests being run against these Docker Compose environment can be found [here](INTEGRATION_TESTING.md)

## Docker Compose (PostgreSQL)
There is a pre configured [Docker Compose](compas/docker-compose-postgresql.yml) file, which starts all the given CoMPAS services.
To start all configured services using PostgreSQL, run the following two commands:

```
# Build (if needed) and start all the containers in the background.
docker-compose --env-file compas/.env -f compas/docker-compose-postgresql.yml up -d --build
```

This command will first build the custom images for Keycloak and the Reverse Proxy and then start all containers.
To know if all containers are running execute the shell script "bin/docker-wait-on-containers.sh".
This script will wait until all containers are running.

The PostgreSQL container is available at port 5432. 

To stop and remove all the containers run the command:

```
# Stop all containers and remove the volumes.
docker-compose -f compas/docker-compose-postgresql.yml down -v
```

The option '-v' also removes the volumes created, so all data is lost with this option.

## Docker Compose (Common)

### Custom files

The SCL Validator Service can be extended with custom OCL and NSDOC Files. These can be placed in specific directories,
see [OCL Files](compas/data/ocl/README.md) and [NSDOC Files](compas/data/nsdoc/README.md).

### Known issue with Docker Compose

Using the current configuration with Keycloak and OpenResty (lua-resty-session) sometimes gives an error 
"**state from argument does not match state restored from session**". 
This mostly happens after using logout or the session is expired. The login page is shown, but after login this error is shown.
Just open the url [http://localhost/](http://localhost/) again and OpenSCD is shown again, also being logged in.

### Keycloak Demo Configuration
For demo purposes, a [demo Keycloak configuration](compas/keycloak/keycloak_compas_realm.json) is created which can be imported when
running a Keycloak instance.

The following Keycloak attributes have been added:
- **CoMPAS Realm**: A separate CoMPAS realm containing all CoMPAS attributes like Groups, Client and Roles.
- **OpenSCD client**: A client has been made for interacting with OpenSCD.
- **SCL Data Service client**: A client has been made for interacting with the SCL Data Service.
- **CRUD roles for the SCL Data Service**: Create, Read, Update and Delete roles have been added to the SCL Data Service client.
When interacting with the SCL Data Service, a JWT token needs to have certain roles before interaction is possible. 
These roles are assigned to certain users (see below).
- **A SCL Data Editor**: A user with the roles 'Create', 'Read', 'Update' and 'Delete'. This way, it has read and write access to the SCL Data Service.
  - Username: scl-data-editor
  - Password: editor
- **A SCL Data Reader**: A user with the role 'Read'. This way, it only has reading access to the SCL Data Service.
  - Username: scl-data-reader
  - Password: reader
- **A SCD Reader**: A user with the role 'Read' only on the SCD Type.
  - Username: scd-reader
  - Password: reader

## AWS Documentation
AWS documentation can be [found here](./aws/README.md)