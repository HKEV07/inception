FROM debian:11


RUN apt-get update && apt-get install -y

RUN apt-get install -y php7.4-fpm \
    php7.4-mysql \
	mariadb-client \
	curl && \
	rm -rf /var/lib/apt/lists/*


RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp --silent

RUN chmod +x ./usr/bin/wp

RUN mkdir /run/php

COPY ./tools/wordpress.sh /tmp/wordpress.sh

RUN chmod +x /tmp/wordpress.sh

EXPOSE 9000

CMD [ "bash","./tmp/wordpress.sh" ]
