SHELL=/bin/bash
include .env
export

# Build images
build:
	@docker-compose build

# Bootstrap system
setup: build migrate

# Bring the stack up
up:
	@docker-compose up

# Bring the stack down
down:
	@docker-compose down

# Migrate database
migrate: migrate-server
migrate-%:
	@docker-compose run --rm $* make migrate

# Remove project volumes
uninstall:
	@docker volume rm pgdata; true
	@docker volume rm client_node_modules; true

# Purge project containers and volumes
purge:
	@docker rm -f `docker ps -aq` 1> /dev/null 2> /dev/null; true
	@make down 2> /dev/null; true
	@make uninstall 2> /dev/null; true

# Pop a shell against a (new) container
shell-%:
	@docker-compose run $* sh
