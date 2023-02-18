#!/bin/bash
rm -rf /home/container/tmp/*

# Check if php8-fpm is installed, and use php8.1-fpm as a fallback if it is not
if command -v php8-fpm &> /dev/null; then
    PHP_FPM_CMD="php-fpm8"
else
    PHP_FPM_CMD="php-fpm8.1"
fi

echo "⟳ Starting PHP-FPM using ${PHP_FPM_CMD}..."
/usr/sbin/${PHP_FPM_CMD} --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
