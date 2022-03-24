FROM php:8.0-fpm 

RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip curl wget zsh fonts-powerline locales nano \
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

#oh my zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
RUN export LANG=en_US.UTF-8
RUN locale-gen 

WORKDIR /var/www