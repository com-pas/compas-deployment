# SPDX-FileCopyrightText: 2021 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

FROM openresty/openresty:alpine-fat

ARG COMPAS_HOSTNAME

RUN mkdir /var/log/nginx

RUN apk add --no-cache openssl-dev
RUN apk add --no-cache git
RUN apk add --no-cache gcc

RUN luarocks install lua-resty-openidc

RUN mkdir -p /etc/nginx/include
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./authenticate.include /etc/nginx/include/
RUN sed -i "s/##COMPAS_HOSTNAME##/${COMPAS_HOSTNAME}/g" /etc/nginx/include/authenticate.include

ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]