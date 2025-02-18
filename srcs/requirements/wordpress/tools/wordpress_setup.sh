#!/bin/bash

if ! [ -d $WP_PATH ];
then
    wp core download --path=$WP_PATH --allow-root
fi

cd $WP_PATH;

if [ -f wp-config.php ] && wp config has DB_PASSWORD --allow-root;
then
    echo "wp-config.php is found"
else
    wp config create --allow-root \
                    --dbname=$DB_DATABASE \
                    --dbuser=$DB_USER \
                    --dbpass=$DB_USER_PASSWORD \
                    --dbhost=$DB_HOST

    echo "wp-config.php file generated"

    echo "Installing Wordpress"

    wp core install --allow-root \
        --path="." \
        --url=$DOMAIN_NAME \
        --title=${WP_TITLE} \
        --admin_user=$WP_ADMIN \
        --admin_password=$WP_ADMIN_PASSWORD \
        --admin_email=$WP_ADMIN_EMAIL

fi

php-fpm7.4 -F
