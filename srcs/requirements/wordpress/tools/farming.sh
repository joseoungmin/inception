#!/bin/sh

wp core download --version=6.4.2 --path=/var/www
wp config create --dbhost=mariadb --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_ROOT_PASSWORD --skip-check --force --path=/var/www

wp core install --url=${DOMAIN_NAME} --title=Inception --admin_user=${MASTER_ID} --admin_email=${MASTER_EM} --admin_password=${MASTER_PW} --path=/var/www

wp user create ${WORDPRESS_USER} ${WORDPRESS_EMAIL} --user_pass=${WORDPRESS_PASSWORD}

# Execute
php-fpm81 -F
