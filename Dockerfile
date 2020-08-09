# Pull latest Apache docker image
FROM ubuntu:latest

# ADD my project to the workspace
ADD My-first-website /var/www/html/

# start apache2 service
CMD apachectl -D FOREGROUND

# remove the default index file
# RUN rm /var/www/html/index.html
