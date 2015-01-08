FROM lorello/ubuntu:trusty

MAINTAINER LoreLLo <lorenzo.salvadorini@softecspa.it>

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -qqy && apt-get -qqy install nginx

RUN mkdir /srv/www
RUN echo "HTML is working" > /srv/www/index.html

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf

# Add dockerize binary
# http://jasonwilder.com/blog/2014/10/13/a-simple-way-to-dockerize-applicati    ons/
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.0.2/docke    rize-linux-amd64-v0.0.2.tar.gz
RUN tar -C /usr/local/bin -xvzf dockerize-linux-amd64-v0.0.2.tar.gz

CMD dockerize -stdout /var/log/nginx/access.log -stderr /var/log/nginx/error.log nginx

