FROM wordpress:latest

COPY ./php.ini /usr/local/etc/php/

RUN cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug

RUN apt-get update \
    && apt-get install -y --no-install-recommends mariadb-client

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp
