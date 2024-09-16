# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

FROM quay.io/keycloak/keycloak:latest

ARG COMPAS_HOSTNAME

# Creating an Admin account
ENV KC_DB_USERNAME admin
ENV KC_DB_PASSWORD admin

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm"]
