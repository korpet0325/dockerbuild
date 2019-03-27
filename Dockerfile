FROM ubuntu:18.04
MAINTAINER korpet0325@outlook.com
LABEL purpose="Hands-on-Lab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to docker webpage!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]