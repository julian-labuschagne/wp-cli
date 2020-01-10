FROM php:7.3.10

RUN apt-get update && apt-get install -y less mariadb-client && \
    docker-php-ext-install mysqli

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp

RUN mkdir /var/wp
VOLUME /var/wp

RUN chown www-data:www-data /var/wp && \
    chmod 775 /var/wp && \
    chmod 755 /usr/local/bin/wp

USER www-data

WORKDIR	/var/wp

#ENTRYPOINT ["php", "/usr/local/bin/wp"]
#ENTRYPOINT ["php"]
