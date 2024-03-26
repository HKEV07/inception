#!/bin/bash
sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf
service mariadb start


mariadb -u root -e "CREATE DATABASE $DB_NAME; \
                  CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'; \
                  GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%'; \
                  FLUSH PRIVILEGES;"

mariadb-admin -u root -p$DB_ROOT_PASSWORD shutdown

mariadbd-safe