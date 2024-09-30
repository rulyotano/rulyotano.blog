FROM drupal:11.0.4-php8.3-apache-bullseye
COPY ./web/sites/default/default.settings.php ./web/sites/default/settings.php
RUN mkdir -p ./web/sites/default/files; chown www-data:www-data ./web/sites/default/files; chmod 1777 ./web/sites/default/files
USER www-data:www-data
