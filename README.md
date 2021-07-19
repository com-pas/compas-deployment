<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

[![REUSE status](https://api.reuse.software/badge/github.com/com-pas/compas-deployment)](https://api.reuse.software/info/github.com/com-pas/compas-deployment)
[![Slack](https://raw.githubusercontent.com/com-pas/compas-architecture/master/public/LFEnergy-slack.svg)](http://lfenergy.slack.com/)

# CoMPAS Deployment Repository
Containing tools / configurations for deploying CoMPAS services

## Keycloak Demo Configuration
For demo purposes, a [demo Keycloak configuration](docker/keycloak/keycloak_compas_realm.json) is created which can be imported when
running a Keycloak instance.

The following Keylcoak attributes have been added:
- **CoMPAS Realm**: A separate CoMPAS realm containing all CoMPAS attributes like Groups, Client and Roles.
- **CoMPAS Demo Role**: A separate CoMPAS role which can be assigned to users.
- **CoMPAS Group**: A CoMPAS demo group has been added.
- **A Demo User**: A Demo user. Username: 'Demo', password: 'Demo'.

When running Keycloak with the demo configuration, go to the pre-configured
[Account client](http://localhost:8089/auth/realms/compas/account/) and login with the Demo user. A client in Keycloak
is a trusted web service within a realm, the Account client is a pre-configured web service to edit your profile information
for example.

There is a pre configured [Dockerfile](docker/keycloak/Dockerfile), which creates all necessary settings and the Admin user.
To build the Dockerfile, run this command in the directory containing the Dockerfile:

`docker build -t compas-keycloak .`

Then, run it and expose the 8080 port:

`docker run -d -p 8089:8080 compas-keycloak`

Once the container is running, you can go to [http://localhost:8089/auth/](http://localhost:8089/auth/) and access the Administration Console.