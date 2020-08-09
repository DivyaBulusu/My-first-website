# Pull latest Apache docker image
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y
# ADD my project to the workspace
COPY index.html My-first-website /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
