
DOCKER_COMPOSE=srcs/docker-compose.yml
ENV_FILE=srcs/.env

all: build

build:
	mkdir -p /home/$(USER)/data/database
	mkdir -p /home/$(USER)/data/wordpress
	docker-compose -f $(DOCKER_COMPOSE) --env-file $(ENV_FILE) up -d --build

logs: 
	docker-compose -f $(DOCKER_COMPOSE) logs

down:
	docker-compose -f $(DOCKER_COMPOSE) down

clean : down
	docker system prune -f --all

fclean: clean 
	sudo rm -rf /home/$(USER)/data

re : down build