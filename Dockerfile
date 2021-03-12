FROM php:7.4-apache-buster

RUN set -eux; \
        if command -v a2enmod; then \
                a2enmod rewrite; \
        fi; \
        savedAptMark="$(apt-mark showmanual)"; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
                libfreetype6-dev \
                libjpeg-dev \
                mariadb-server \
                mariadb-client \
                git \
                wget \
                npm \
                libpng-dev \
                libpq-dev \
                libzip-dev \
        ; \
        docker-php-ext-configure gd \
                --with-freetype \
                --with-jpeg=/usr \
        ; \
        docker-php-ext-install -j "$(nproc)" \
                gd \
                opcache \
                mysqli \
                pdo_mysql \
                zip;

RUN {   echo 'opcache.memory_consumption=128'; \
        echo 'opcache.interned_strings_buffer=8'; \
        echo 'opcache.max_accelerated_files=4000'; \
        echo 'opcache.revalidate_freq=60'; \
        echo 'opcache.fast_shutdown=1'; \
        echo 'mysqli.default_socket=/var/run/mysqld/mysqld.sock'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/

WORKDIR /opt
COPY . . 
RUN set -eux; \ 
    composer create-project phpmyadmin/phpmyadmin --repository-url=https://www.phpmyadmin.net/packages.json --no-dev
RUN set -eux; \ 
    cp ./sql/config.inc.php phpmyadmin/config.inc.php
RUN cp -r /opt/phpmyadmin /var/www/html

RUN set -eux; \
    service mysql start && \
    mysql -u root -e 'create database earthquakes' && \
    mysql -u root earthquakes < /opt/sql/earthquakes.sql && \ 
    mysql -u root -e 'create database postcodes' && \
    mysql -u root postcodes < /opt/sql/postcodes.sql && \ 
    mysql -u root -e 'create database pms' && \
    mysql -u root pms < /opt/sql/pms.sql && \ 
    mysql -u root -e 'create database northwind' && \
    mysql -u root northwind < /opt/sql/northwind.sql && \ 
    mysql -u root -e "grant SELECT, EXECUTE, SHOW VIEW on *.* to student@'%' identified by 'foobar'";

ENV PORT=80,port=80,container_port=80,request_timeout=300

EXPOSE 80
CMD /usr/sbin/apachectl start && /usr/bin/mysqld_safe && sleep infinity
