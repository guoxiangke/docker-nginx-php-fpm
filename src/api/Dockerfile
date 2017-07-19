FROM drupal:fpm
RUN mkdir /var/www/html/sites/default/files  \
	&& chmod -R 777 /var/www/html/sites/default/files \
	&& cp -R /code/modules /var/www/html/modules \
	&& cp -R /code/themes /var/www/html/themes \
	&& cp -R /code/libraries /var/www/html/libraries \
	&& cp -R /code/profiles /var/www/html/profiles \
	&& chown -R www-data:www-data sites modules themes libraries profiles