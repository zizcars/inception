
DOCKER_COMPOSE=srcs/docker-compose.yml
ENV_FILE=srcs/.env

all: build

build:
	mkdir -p /home/achakkaf/mount/website
	mkdir -p /home/achakkaf/mount/database
	docker-compose -f $(DOCKER_COMPOSE) --env-file $(ENV_FILE) up -d --build 

logs: 
	docker-compose -f $(DOCKER_COMPOSE) logs

clean: 
	docker-compose -f $(DOCKER_COMPOSE) down --volumes
	sudo rm -rf /home/achakkaf/mount/*

re : clean build
