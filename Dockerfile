FROM devopsedu/webapp

WORKDIR /var/www/html

# Remove default Apache landing page (VERY IMPORTANT)
# RUN rm -f /var/www/html/index.html

# Copy your full PHP application directory
COPY website/ /var/www/html/

# Set correct permissions (optional but safe)
# RUN chown -R www-data:www-data /var/www/html

EXPOSE 8080
VOLUME ["/var/www/html"]

# Start Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]