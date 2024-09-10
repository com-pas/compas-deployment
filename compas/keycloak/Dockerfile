# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

FROM bitnami/keycloak:latest

ARG COMPAS_HOSTNAME

# Copy the demo realm configuration to /tmp/ inside the container, so it can be used afterwards
COPY --chown=keycloak:keycloak keycloak_compas_realm.json /tmp/keycloak_compas_realm.json
RUN sed -i "s/##COMPAS_HOSTNAME##/${COMPAS_HOSTNAME}/g" /tmp/keycloak_compas_realm.json

# Creating an Admin account
ENV KEYCLOAK_ADMIN_USER admin
ENV KEYCLOAK_ADMIN_PASSWORD admin

# Choosing h2 database
ENV KEYCLOAK_DATABASE_VENDOR "dev-file"

# Import the configuration we just copied
ENV KEYCLOAK_EXTRA_ARGS "--import-realm"