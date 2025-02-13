# SPDX-FileCopyrightText: 2024 BearingPoint GmbH
#
# SPDX-License-Identifier: Apache-2.0

# We want to go back to below image, but it seems to be broken.
# For now use fixed version which still works.
#FROM openresty/openresty:alpine-fat
FROM openresty/openresty:1.25.3.1-2-alpine-fat

RUN mkdir /var/log/nginx

RUN apk add --no-cache openssl-dev
RUN apk add --no-cache git
RUN apk add --no-cache gcc

RUN luarocks install lua-resty-openidc

RUN mkdir -p /etc/nginx/include

ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]