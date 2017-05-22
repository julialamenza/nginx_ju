FROM debian
MAINTAINER Julia Lamenza <jlamenza@gmail.com>
RUN apt-get update
RUN apt-get install -y nginx
ENTRYPOINT ["/usr/sbin/nginx"]
EXPOSE 80

