FROM lorello/ubuntu:trusty

MAINTAINER LoreLLo <lorenzo.salvadorini@softecspa.it>

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -qqy && apt-get -qqy install nginx

RUN mkdir /srv/www
RUN echo "HTML is working" > /srv/www/index.html

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf

CMD dockerize -stdout /var/log/nginx/access.log -stderr /var/log/nginx/error.log nginx

