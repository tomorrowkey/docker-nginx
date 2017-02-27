FROM alpine:3.5
MAINTAINER tomorrowkey@gmail.com

USER root

RUN apk add --no-cache nginx

COPY etc/nginx /etc/nginx
COPY var/www/default/html /var/www/default/html
COPY var/www/html/robots.txt /var/www/html/robots.txt

EXPOSE 80

CMD ["/usr/sbin/nginx","-g","daemon off;"]
