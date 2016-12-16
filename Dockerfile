FROM ubuntu:16.10
MAINTAINER tomorrowkey

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx vim curl

COPY etc/nginx /etc/nginx
COPY var/www/default/html /var/www/default/html

EXPOSE 80

CMD ["/usr/sbin/nginx","-g","daemon off;"]
