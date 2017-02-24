#Example from https://github.com/kstaken/dockerfile-examples/blob/master/apache/Dockerfile
# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:latest

MAINTAINER Kimbro Staken version: 0.1

RUN apt-get update && apt-get install -y apache2 unzip git && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

#Get website
run cd /var/www/html
run git clone https://github.com/AndrewGarbutt/explorecalifornia.git
run cd explorecalifornia
run unzip explore_california.zip
run rm -f explore_california.zip
run rm -f Dockerfile
run rm -f README.md
run mv explore_california/* .
run rm -rfd explore_california
run apt-get remove git unzip -y

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]