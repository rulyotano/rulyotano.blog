FROM drupal:11.2.2-php8.3-apache-bullseye
RUN ["/bin/cp", "/opt/drupal/web/sites/default/default.settings.php", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/settings.php"]
RUN ["/bin/mkdir", "-p", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chmod", "1777", "/opt/drupal/web/sites/default/files"]
RUN ["/bin/chown", "-R", "www-data:www-data", "/var/www/html/modules"]
RUN ["/bin/chmod", "1777", "/var/www/html/modules"]
COPY "./.docker/files/google_analytics-4.0.3.tar.gz" "/var/www/html/modules/google_analytics-4.0.3.tar.gz"
RUN ["tar",  "-xf",  "/var/www/html/modules/google_analytics-4.0.3.tar.gz", "-C",  "/var/www/html/modules/"]
RUN ["rm", "/var/www/html/modules/google_analytics-4.0.3.tar.gz"]
RUN ["/bin/chown", "-R", "www-data:www-data", "/var/www/html/modules/google_analytics"]
RUN ["composer", "require", "'drupal/corporateclean:^1.0'"]
RUN ["/bin/chown", "-R", "www-data:www-data", "./"]
USER www-data:www-data
