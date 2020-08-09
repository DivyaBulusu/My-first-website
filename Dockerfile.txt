FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/


ADD myfirstwebsite /var/www/html/

CMD apachectl -D FOREGROUND
RUN rm /var/www/html/index.html
