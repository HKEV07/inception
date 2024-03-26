FROM debian:11

#RUN		apt-get update &&\
#        apt-get install -y nginx &&\
#        openssl

RUN apt-get update \
    && apt-get install -y nginx openssl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx_cert_key.key \
    -out /etc/nginx/ssl/nginx_cert.cert \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=ibenaait.42.fr"

COPY conf/nginx.conf /etc/nginx/conf.d
# COPY index.html /var/www/wordpress/index.html

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
