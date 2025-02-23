
DOCKER_COMPOSE=srcs/docker-compose.yml
ENV_FILE=srcs/.env

all: build

build:

	mkdir -p /home/achakkaf/data/database  
	mkdir -p /home/achakkaf/data/website
	mkdir -p /home/achakkaf/data/redis
	docker-compose -f $(DOCKER_COMPOSE) --env-file $(ENV_FILE) up -d --build 

logs: 
	docker-compose -f $(DOCKER_COMPOSE) logs

down:
	docker-compose -f $(DOCKER_COMPOSE) down --volumes

clean : down
	sudo rm -rf /home/achakkaf/data/*
	docker rmi -f $(docker images -a -q)

re : down build
