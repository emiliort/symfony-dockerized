# Symfony Dockerized

> Discontinued, recommended alternative: [Symfony Docker](https://github.com/dunglas/symfony-docker)

Dockerized Symfony / PHP development stack: Nginx, MySQL, MongoDB, PHP-FPM, Make, Composer, Symfony CLI, XDebug, Memcached, Redis, Elasticsearch and RabbitMQ.

## What's inside

* [Nginx](http://nginx.org/)
* [MySQL](http://www.mysql.com/)
* [PHP-FPM](http://php-fpm.org/)
* [XDebug](https://xdebug.org/)
* [Composer](https://getcomposer.org/)
* [Symfony CLI](https://symfony.com/)
* [MongoDB](http://www.mongodb.org/)
* [Memcached](http://memcached.org/)
* [Redis](http://redis.io/)
* [Elasticsearch](http://www.elasticsearch.org/)
* [RabbitMQ](https://www.rabbitmq.com/)
* [Oh My Zsh](https://ohmyz.sh/)

## Requirements

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)

## Running

Run:

```sh
docker-compose up -d
```

Shell:

```sh
docker-compose exec workspace zsh
```

## Configuration files

* Docker enviroment variables: .docker/workspace/.env
* php.ini: .docker/php/phpX.Y.ini
* nginx: .docker/nginx/default.conf
* services: comment or uncomment services in docker-compose. The minimum service required is php. Nginx is optional, you can use the symfony server by running "symfony server:start" from the workspace container shell

## License

Autor: [emiliort](https://github.com/emiliort).
Licensed under the terms of the [MIT license](LICENSE).
