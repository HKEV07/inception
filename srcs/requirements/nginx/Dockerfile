FROM debian:11

RUN apt-get update \
    && apt-get install -y nginx openssl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx_cert_key.key \
    -out /etc/nginx/ssl/nginx_cert.cert \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=ibenaait.42.fr"

RUN mkdir -p var/run/nginx
COPY conf/nginx.conf /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]
