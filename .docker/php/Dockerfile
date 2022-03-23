#available PHP versions: 8.1 , 8.0, 7.4, 7.3, 7.2, 7.1, 7.0, 5.6 (https://hub.docker.com/_/php?tab=tags)
FROM php:8.0-fpm 

RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

#PHP extensions, available extensions https://github.com/mlocati/docker-php-extension-installer#supported-php-extensions
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd xdebug pdo_mysql pdo_pgsql mysqli

#composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#symfony cli
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www