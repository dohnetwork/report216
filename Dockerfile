FROM ubuntu:18.04
LABEL maintainer="dohnetwork@gmail.com"
LABEL description="Ubunta"
# Setup apache and php
#RUN apt-get -y update && apt-get install -y \
#    php7.0 \
#RUN apt-get update && \
#RUN apt-get update && apt-get install --no-install-recommends --yes python3
#RUN apt-get -y update && apt-get install -y  python python-pip libmysqlclient-dev ftp \
RUN apt-get -y update &&  DEBIAN_FRONTEND=noninteractive  apt-get install  -y  php python python-pip libmysqlclient-dev ftp nano cron \
#php5-fpm php5-cli php5-mysqlnd php5-pgsql php5-sqlite php5-redis \
#RUN apt-get update && \
#apt-get install -y  \
#RUN apk --update add wget \
#             apache2 \
#             apache2-ssl \
#             php7-apache2 \
#                     curl  \
#                     python \
#                     python-pip \
#                     libmysqlclient-dev \
#                     libmariadbclient-dev \
#                     python-dev \
#                     php \
#                     lftp \
#                    git \
#                    php7 \
#                    php7-curl \
#                    php7-openssl \
#                    php7-iconv \
#                    php7-json \
#                    php7-mbstring \
#                    php7-phar \
#                    php7-dom --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/* \
            && mkdir /report /Data
            #RUN pip install uwsgi
            RUN pip install mysql-python
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
COPY ./Data ./Data
RUN chmod 777 -R /report
RUN { crontab -l; echo "1 23 * * * /report/all203.sh"; } | crontab -
RUN { crontab -l; echo "7 23 * * * php /report/c.php"; } | crontab -
RUN { crontab -l; echo "10 23 * * * python /report/r.py"; } | crontab -

