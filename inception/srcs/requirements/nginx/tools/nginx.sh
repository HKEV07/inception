#!/bin/bash

RUN mkdir -p /etc/nginx/ssl 

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx_cert_key.key \
    -out /etc/nginx/ssl/nginx_cert.cert \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=ibenaait.42.fr"

CMD ["nginx", "-g", "daemon off;"]