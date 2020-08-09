# Pull latest Apache docker image
FROM https://hub.docker.com/_/ubuntu

# ADD my project to the workspace
ADD myfirstwebsite /var/www/html/

# start apache2 service
CMD apachectl -D FOREGROUND

# remove the default index file
RUN rm /var/www/html/index.html
