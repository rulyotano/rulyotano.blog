FROM drupal:11.1.1-php8.3-apache-bullseye
RUN ["/bin/cp", "/opt/drupal/web/sites/default/default.settings.php", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/chown", "www-data:www-data", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/mkdir", "-p", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chown", "www-data:www-data", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chown", "www-data:www-data", "/var/www/html/modules"]
RUN ["/bin/chmod", "1777", "/var/www/html/modules"]
COPY "./.docker/files/google_analytics-4.0.3.tar.gz" "/var/www/html/modules/google_analytics-4.0.3.tar.gz"
RUN ["tar",  "-xf",  "/var/www/html/modules/google_analytics-4.0.3.tar.gz", "-C",  "/var/www/html/modules/"]
RUN ["rm", "/var/www/html/modules/google_analytics-4.0.3.tar.gz"]
USER www-data:www-data
