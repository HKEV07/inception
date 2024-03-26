FROM debian:11

RUN apt-get update \
    && apt-get install -y mariadb-server \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d

EXPOSE 3306

COPY ./tools/mariadb.bash /tmp

RUN chmod +x /tmp/mariadb.bash

CMD [ "bash","/tmp/mariadb.bash" ]
