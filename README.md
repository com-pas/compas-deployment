<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

[![REUSE status](https://api.reuse.software/badge/github.com/com-pas/compas-deployment)](https://api.reuse.software/info/github.com/com-pas/compas-deployment)
[![Slack](https://raw.githubusercontent.com/com-pas/compas-architecture/master/public/LFEnergy-slack.svg)](http://lfenergy.slack.com/)

# CoMPAS Deployment Repository
Containing tools / configurations for deploying CoMPAS services.

## Docker Compose
There is a pre configured [Docker Compose](docker/docker-compose.yml) file, which starts all the given CoMPAS services.
To start all configured services, go to the `docker` directory and run the following two commands:

`docker-compose build`

`docker-compose up -d`

This first command builds 2 containers (keycloak and reverse proxy) and next command starts all CoMPAS services at the same time.
Now, the following services are available:

- open-scd, available at [http://localhost/](http://localhost/).
- logout,  available at [http://localhost/logout](http://localhost/logout).
- scl-data-service, available at [http://localhost/compas-scl-data-service](http://localhost/compas-scl-data-service).
- cim-mapping - IEC 61850 mapping, available at [http://localhost/compas-cim-mapping/](http://localhost/compas-cim-mapping/).
- basex, available at [http://localhost:1984/](http://localhost:1984/)
- keycloak, available at [http://localhost/auth/](http://localhost/auth/) or directly if needed [http://localhost:8089/auth/](http://localhost:8089/auth/).
  - Imports the demo configuration.
- reverse-proxy, OpenResty instance that works as a reverse proxy so all services are available through a single port.
  - The JWT Access Token is added to the header for all Services, like the SCL Data Service.

To stop and remove all the containers run the command:

`docker-compose down -v`

The option '-v' also removes the volumes created, so all data is lost with this option.

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

## Integration Testing

To improve the quality of the application more beside the testing in the separate repositories we also created some integration
tests to test all components together. The integration tests are executed against the Docker Compose version in this project.

We are using the [Robot Framework](https://robotframework.org/) to execute the integration tests. For the Robot Framework we are 
using the [Browser Library](https://github.com/MarketSquare/robotframework-browser) to do the Web testing. this Library is based 
on [Playwright](https://playwright.dev/). All Integration Tests and data can be found in the directory 'integration-testing'.
Output can be found in the directory 'target' is below commands and Github Actions are used.

Some useful links:
- [Robot Framework](https://robotframework.org/)
- [Robot Framework User Guid](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [Robot Framework BuildIn Keywords](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
- [Browser Library](https://github.com/MarketSquare/robotframework-browser)
- [Browser Library Keywords](https://marketsquare.github.io/robotframework-browser/Browser.html)
- [Playwright](https://playwright.dev/)
- [Playwright Documentation](https://playwright.dev/docs/intro/)

Some useful commands to execute the Robot Framework locally.  
Please follow the instructions of [Robot Framework](https://robotframework.org/) to install the Framework.  
And also follow the instruction of [Browser Library](https://github.com/MarketSquare/robotframework-browser) to install this needed library.

```
# Prefer to remove the target directory before starting
rm -r target

# Normal run of all the test suites (with firefox, headless)
robot -d target/firefox integration-testing/

# Run of all the test suites (with firefox in presenter mode to better follow what happens)
robot -d target/firefox -v browser:firefox -v enable_presenter_mode:true -v headless:false integration-testing/

# Run of all the test suites (with chromium, headless), looks like chromium now only works headless. It crashs otherwise.
robot -d target/chromium -v browser:chromium integration-testing/
```
