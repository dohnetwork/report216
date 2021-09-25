#FROM alpine:3.14
FROM ubuntu:18.04
LABEL maintainer="dohnetwork@gmail.com"
LABEL description="Alpine"
# Setup apache and php
RUN apk --update add wget \ 
#             apache2 \
#             apache2-ssl \
#             php7-apache2 \
		     curl \
#		     git \
		     php7 \
		     php7-curl \
		     php7-openssl \
		     php7-iconv \
		     php7-json \
		     php7-mbstring \
		     php7-phar \
		     php7-dom --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/* \
            && mkdir /report

#EXPOSE 80 443

#ADD docker-entrypoint.sh /

#HEALTHCHECK CMD wget -q --no-cache --spider localhost
#ENTRYPOINT ["/docker-entrypoint.sh"]

#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
#RUN mkdir -p /htdocs
RUN chown -R www-data:www-data /report
#RUN chmod -R 755 /htdocs
WORKDIR /report
#COPY composer.json composer.lock  ./
#RUN composer install \
#    --ignore-platform-reqs \
#    --no-interaction \
#    --no-plugins \
#    --no-scripts \
#    --prefer-dist
COPY ./report ./
