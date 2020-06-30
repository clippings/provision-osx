#/usr/bin/env bash

# Installing PEAR
cd /tmp
curl -s -O https://pear.php.net/install-pear-nozlib.phar
sudo php install-pear-nozlib.phar -d /usr/local/lib/php -b /usr/local/bi

# Install an extension for PHP
sudo pecl install xdebug
