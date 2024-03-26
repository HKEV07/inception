#!/bin/bash

sleep 10

# Change directory to WordPress installation directory
cd /var/www/wordpress

# Generate WordPress configuration
wp config create --dbhost=$DB_HOST \
                 --dbname=$DB_NAME \
                 --dbuser=$DB_USER \
                 --dbpass=$DB_PASSWORD \
                 --path=/var/www/wordpress \
                 --allow-root

# Verify WordPress installation
if [ ! -f "/var/www/html/wp-config.php" ]; then
    echo "Error: WordPress is not installed in /var/www/wordpress/"
fi

# Change back to previous directory
cd -

# Start PHP-FPM
if command -v php-fpm >/dev/null 2>&1; then
    php-fpm
else
    echo "Error: PHP-FPM is not installed or not found"
fi