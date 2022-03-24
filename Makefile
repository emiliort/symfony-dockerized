.PHONY: help build up start down destroy stop restart logs ps shell

build:
	docker-compose build $(c)

rebuild:
	docker-compose build --no-cache $(c)
	
up:
	docker-compose up -d $(c)

start:
	docker-compose start $(c)

down:
	docker-compose down $(c)

destroy:
	docker-compose down -v $(c)

stop:
	docker-compose stop $(c)

restart:
	docker-compose stop $(c)
	docker-compose up -d $(c)

logs:
	docker-compose logs --tail=100 -f $(c)

ps:
	docker-compose ps

shell:
	docker-compose exec workspace zsh
