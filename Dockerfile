FROM drupal:11.0.4-php8.3-apache-bullseye
COPY /opt/drupal/web/sites/default/default.settings.php /opt/drupal/web/sites/default/settings.php
RUN mkdir -p /opt/drupal/web/sites/default/files; chown www-data:www-data /opt/drupal/web/sites/default/files; chmod 1777 /opt/drupal/web/sites/default/files
USER www-data:www-data
