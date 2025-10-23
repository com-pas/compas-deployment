# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

FROM quay.io/keycloak/keycloak:26.4.2

ARG COMPAS_HOSTNAME

# Copy the demo realm configuration to /opt/keycloak/data/import inside the container, this is the default import path
COPY --chown=keycloak:keycloak keycloak_compas_realm.json /opt/keycloak/data/import/keycloak_compas_realm.json
RUN sed -i "s/##COMPAS_HOSTNAME##/${COMPAS_HOSTNAME}/g" /opt/keycloak/data/import/keycloak_compas_realm.json

# Creating an Admin account
ENV KC_DB_USERNAME admin
ENV KC_DB_PASSWORD admin

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm"]
