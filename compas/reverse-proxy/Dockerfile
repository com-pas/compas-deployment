# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

# We want to go back to below image, but it seems to be broken.
# For now use fixed version which still works.
#FROM openresty/openresty:alpine-fat
FROM openresty/openresty:1.21.4.1-8-alpine-fat

ARG COMPAS_HOSTNAME
ARG CONFIGURATION_LOCATION

ARG BACKDOOR_PORT
ARG BACKDOOR_PATH

RUN echo ${CONF_LOCATION}
RUN mkdir /var/log/nginx

RUN apk add --no-cache openssl-dev
RUN apk add --no-cache git
RUN apk add --no-cache gcc

RUN luarocks install lua-resty-openidc

RUN mkdir -p /etc/nginx/include

COPY ${CONFIGURATION_LOCATION} /etc/nginx/nginx.conf
COPY ./authenticate.include /etc/nginx/include/

RUN sed -i "s/##COMPAS_HOSTNAME##/${COMPAS_HOSTNAME}/g" /etc/nginx/include/authenticate.include
RUN sed -i "s/##BACKDOOR_PORT##/${BACKDOOR_PORT}/g" /etc/nginx/nginx.conf
RUN sed -i "s/##BACKDOOR_PATH##/${BACKDOOR_PATH}/g" /etc/nginx/nginx.conf

ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
