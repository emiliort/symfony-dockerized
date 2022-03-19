# Symfony Dockerized

Dockerized Symfony / PHP development stack: Apache+PHP, Nginx, MySQL, MongoDB, PHP-FPM, Make, Composer, Symfony CLI, XDebug, Memcached, Redis, Elasticsearch and RabbitMQ.

## What's inside

* [Apache HTTP Server](https://httpd.apache.org/)
* [Nginx](http://nginx.org/)  TODO:
* [MySQL](http://www.mysql.com/)
* [MongoDB](http://www.mongodb.org/) TODO:
* [PHP-FPM](http://php-fpm.org/) TODO:
* [XDebug](https://xdebug.org/)  TODO:
* [Composer](https://getcomposer.org/)
* [Symfony CLI](https://symfony.com/)
* Make  TODO:
* [Memcached](http://memcached.org/) TODO:
* [Redis](http://redis.io/) TODO:
* [Elasticsearch](http://www.elasticsearch.org/) TODO:
* [RabbitMQ](https://www.rabbitmq.com/) TODO:
* [Oh My Zsh](https://ohmyz.sh/) TODO:

## Requirements

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)

## Running

Run:

```sh
docker-compose up -d
```

Console:

```sh
docker-compose exec web bash
```

## Configuration files

* enviroment variables: .env
* php.ini: .docker/web/php.ini

## License

Autor: [emiliort](https://github.com/emiliort).
Licensed under the terms of the [MIT license](LICENSE).
