<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

[![REUSE status](https://api.reuse.software/badge/github.com/com-pas/compas-deployment)](https://api.reuse.software/info/github.com/com-pas/compas-deployment)
[![Slack](https://raw.githubusercontent.com/com-pas/compas-architecture/master/public/LFEnergy-slack.svg)](http://lfenergy.slack.com/)

# CoMPAS Deployment Repository
Containing tools / configurations for deploying CoMPAS services.

## Keycloak Demo Configuration
For demo purposes, a [demo Keycloak configuration](docker/keycloak/keycloak_compas_realm.json) is created which can be imported when
running a Keycloak instance.

The following Keycloak attributes have been added:
- **CoMPAS Realm**: A separate CoMPAS realm containing all CoMPAS attributes like Groups, Client and Roles.
- **OpenSCD client**: A client has been made for interacting with OpenSCD.
- **SCL Data Service client**: A client has been made for interacting with the SCL Data Service.
- **CRUD roles for the SCL Data Service**: Create, Read, Update and Delete roles have been added to the SCL Data Service client.
When interacting with the SCL Data Service, a JWT token needs to have certain roles before interaction is possible. These roles are assigned to certain users (see below).
- **CoMPAS Group**: A CoMPAS demo group has been added.
- **A Demo User**: A Demo user without specific roles.
  - Username: 'user'
  - Password: 'user'.
- **A SCL Data Editor**: A user with the roles 'Create', 'Read', 'Update' and 'Delete'. This way, it has read and write access to the SCL Data Service.
  - Username: scl-data-editor
  - Password: editor
- **A SCL Data Reader**: A user with the role 'Read'. This way, it only has reading access to the SCL Data Service.
  - Username: scl-data-reader
  - Password: reader
- **A SCD Reader**: A user with the role 'Read' only on the SCD Type.
  - Username: scd-reader
  - Password: reader

## Docker Compose
There is a pre configured [Docker Compose](docker/docker-compose.yml) file, which starts all the given CoMPAS services.
To start all configured services, go to the `docker` directory and run the following two commands:

`docker-compose build`

`docker-compose up -d`

This first command builds 2 containers (keycloak and reverse proxy) and next command starts all CoMPAS services at the same time.
Now, the following services are available:

- open-scd, available at [http://localhost/](http://localhost/). **Not fully working yet, can't communicate with Data Service yet.**
- scl-data-service, available at [http://localhost/compas-scl-data-service](http://localhost/compas-scl-data-service).
- basex, available at [http://localhost:1984/](http://localhost:1984/)
- cim-mapping - IEC 61850 mapping, available at [http://localhost/compas-cim-mapping/](http://localhost/compas-cim-mapping/).
- keycloak, available at [http://localhost/auth/](http://localhost/auth/) or direclty if needed [http://localhost:8080/auth/](http://localhost:8080/auth/).
    - Imports the demo configuration.
- reverse-proxy, OpenResty instance that works as a reverse proxy so all services are available through a single port.
    - The JWT Access Token is added to the header for all Services, like the SCL Data Service.

To stop and remove all the containers run the following command:

`docker-compose down`
