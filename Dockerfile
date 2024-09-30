FROM drupal:11.0.4-php8.3-apache-bullseye
RUN ["/bin/cp", "/opt/drupal/web/sites/default/default.settings.php", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/chown", "www-data:www-data", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/mkdir", "-p", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chown", "www-data:www-data", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/files"]
USER www-data:www-data
