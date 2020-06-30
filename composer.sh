#/usr/bin/env bash
wget https://getcomposer.org/composer.phar
php ~/Downloads/composer.phar --version
cp ~/Downloads/composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
