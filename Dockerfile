FROM lorello/ubuntu:trusty

MAINTAINER LoreLLo <lorenzo.salvadorini@softecspa.it>

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get -qqy install nginx

RUN mkdir /srv/www
RUN echo "HTML is working" > /srv/www/nginx-container.html

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf
