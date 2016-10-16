FROM ubuntu:16.10
MAINTAINER tomorrowkey

RUN apt-get update && apt-get upgrade
RUN apt-get install -y nginx

EXPOSE 80

CMD ["/usr/sbin/nginx","-g","daemon off;"]
