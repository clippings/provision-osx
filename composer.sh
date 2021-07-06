#/usr/bin/env bash
# This script downloads the installer, verifies the hashes, then installs Composer.
# It checks the installer SHA against the latest hash obtained from https://composer.github.io/installer.sig whose value is automatically updated when a new release is made.
# This way, no hardcoded hash is used within the script and you automatically get the latest version of Composer.
# We have now future-proofed programmatic Composer installation!

EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig 2>/dev/null)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi
php composer-setup.php --install-dir=/usr/local/bin/ --filename=composer --snapshot --quiet
RESULT=$?
rm composer-setup.php
exit $RESULT
