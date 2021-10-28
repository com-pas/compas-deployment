# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

FROM jboss/keycloak:latest

ARG COMPAS_HOSTNAME

# Copy the demo realm configuration to /tmp/ inside the container, so it can be used afterwards
COPY --chown=jboss:jboss keycloak_compas_realm.json /tmp/keycloak_compas_realm.json
RUN sed -i "s/##COMPAS_HOSTNAME##/${COMPAS_HOSTNAME}/g" /tmp/keycloak_compas_realm.json

# Creating an Admin account
ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin

# Choosing h2 database
ENV DB_VENDOR h2

# Import the configuration we just copied
ENV KEYCLOAK_IMPORT /tmp/keycloak_compas_realm.json