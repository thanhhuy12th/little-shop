#!/bin/bash
set -e

echo "Start run entrypoint"
composer install
php artisan config:clear
php artisan config:cache
php artisan migrate
php-fpm

exec "$@"