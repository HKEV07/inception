#!/bin/bash

sleep 10

cd /var/www/wordpress

wp core download --allow-root
wp config create --dbhost=$DB_HOST \
                    --dbname=$DB_NAME \
                    --dbuser=$DB_USER \
                    --dbpass=$DB_PASSWORD  \
                    --allow-root

wp core install --title=$WP_TITLE \
                    --admin_user=$WP_ADMIN_USER \
                    --admin_password=$WP_ADMIN_PASSWORD \
                    --admin_email=$WP_ADMIN_MAIL \
                    --url=$WP_URL \
                    --allow-root

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD  --allow-root

cd -

/usr/sbin/php-fpm7.4 -F
