FROM php:7.3.10

RUN apt-get update && apt-get install -y less mysql-client && \
    docker-php-ext-install mysqli

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp

RUN mkdir /var/wp
VOLUME /var/wp

RUN groupadd -g 1000 -r wordpress && \
    useradd --no-log-init -r -u 1000 -d /var/wp -g wordpress -G www-data wordpress

RUN chown wordpress:wordpress /var/wp && \
    chmod 775 /var/wp && \
    chmod 755 /usr/local/bin/wp

USER wordpress
WORKDIR	/var/wp
#ENTRYPOINT ["php", "/usr/local/bin/wp"]
#ENTRYPOINT ["php"]
