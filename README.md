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

The following Keylcoak attributes have been added:
- **CoMPAS Realm**: A separate CoMPAS realm containing all CoMPAS attributes like Groups, Client and Roles.
- **CoMPAS Demo Role**: A separate CoMPAS role which can be assigned to users.
- **CoMPAS Group**: A CoMPAS demo group has been added.
- **A Demo User**: A Demo user. Username: 'Demo', password: 'Demo'.

## Docker Compose
There is a pre configured [Docker Compose](docker/docker-compose.yml) file, which starts all the given CoMPAS services.
To start all configured services, go to the `docker` directory and run:

`docker-compose up`

This starts all CoMPAS services at the same time.
Now, the following services are available:

- OpenSCD, available at [http://localhost:8080/](http://localhost:8080/). **Not fully working yet, can't communicate with Data Service yet.**
- SCL Data Service, available at [http://localhost:9090/compas-scl-data-service](http://localhost:9090/compas-scl-data-service).
- BaseX, available at [http://localhost:1984/](http://localhost:1984/)
    - Added an extra volume for saving files.
- CIM - IEC 61850 mapping, available at [http://localhost:9091/](http://localhost:9091/).
- Keycloak, available at [http://localhost:8089/auth/](http://localhost:8089/auth/).
    - Imports the demo configuration.