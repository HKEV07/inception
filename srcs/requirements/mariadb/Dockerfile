FROM debian:11

RUN apt-get update \
    && apt-get install mariadb-server -y \
    && rm -rf /var/lib/apt/lists/*


EXPOSE 3306

COPY ./tools/mariadb.sh /tmp

RUN chmod +x /tmp/mariadb.sh

CMD [ "bash","/tmp/mariadb.sh" ]