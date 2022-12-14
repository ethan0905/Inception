#!/bin/bash

# Replace all occurrences of a string in a file by overwriting the file (i.e. in place):
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
# -R recursively change permissions for directories and their contents
chmod -R 775 /var/www/html/wordpress;
# The following example will change the owner of all files and
# subdirectories in the /var/www/html/wordpress directory with a new owner and group named www-data :
chown -R www-data /var/www/html/wordpress;
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

# php -S 0.0.0.0:9000 -t /var/www/html/wordpress

if [ ! -f /var/www/html/wordpress/wp-config.php ]; then
	echo "Wordpress: setting up..."
	# After checking the requirements, download the wp-cli.phar file using wget or curl:
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	# "+x" means - set the permission to run (x) file for all users.
	chmod +x wp-cli.phar;
	# To use WP-CLI from the command line, by typing wp, make the file executable and

	# move it somewhere in PATH. For example:
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html/wordpress;
	# Downloads and extracts the main WordPress files from the given path

	# static website
	mkdir -p /var/www/html/wordpress/mysite;
	mv /var/www/index.html /var/www/html/wordpress/mysite/index.html;

	wp core download --allow-root;
	mv /var/www/wp-config.php /var/www/html/wordpress;
	echo "Wordpress: creating users..."
	# Creates WordPress tables in the database,
	# using the url, title and default admin user details provided
	# --url=<url>
	# Address of the new site.
	# --title=<site name>
	# The name of the new site.
	# --admin_user=<username>
	# Administrator username.
	# [--admin_password=<password>]
	# Password for the admin user. The default is a randomly generated string.
	# --admin_email=<email>
	# Administrator's email address.
	wp core install --allow-root --url=${DOMAIN_NAME} --title=${WORDPRESS_NAME} --admin_user=${WORDPRESS_ROOT_LOGIN} --admin_password=${MYSQL_ROOT_PASSWORD} --admin_email=${WORDPRESS_ROOT_EMAIL};
	# Creates a new user
	# <user-login>
	# Username to create.
	# <user-email>
	# The email address of the user to create.
	# [--role=<role>]
	# User role to create. Default: default role
	# Possible values ??????include "administrator", "editor", "author", "contributor", "subscriber".
	# [--user_pass=<password>]
	# User password. Default: randomly generated
	wp user create ${MYSQL_USER} ${WORDPRESS_USER_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root;
	# Theme for WordPress
	wp theme install zeever --activate --allow-root
	wp plugin update --all --allow-root

	echo "Wordpress: set up!"
else
	echo "Wordpress: is already set up!"
fi

echo "Wordpress started on :9000"
/usr/sbin/php-fpm7.3 -F
