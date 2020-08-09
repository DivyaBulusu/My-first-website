# Pull latest Apache docker image
FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/

# ADD my project to the workspace
ADD myfirstwebsite /var/www/html/

# start apache2 service
CMD apachectl -D FOREGROUND

# remove the default index file
RUN rm /var/www/html/index.html
