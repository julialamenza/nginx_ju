FROM debian
MAINTAINER Julia Lamenza <jlamenza@gmail.com>
RUN apt-get update && apt-get install -y nginx htop wget vim supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 80 443
CMD ["/usr/bin/supervisord"]

