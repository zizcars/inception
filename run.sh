#!/bin/bash

# docker rmi -f $(docker images -aq)
# docker rm -f $(docker ps -aq)
# docker build -t my-nginx . --no-cache
# docker run -d -p 5000:80 my-nginx:latest

# =============== Intalling Docker =================

# sudo apt update && sudo apt upgrade -y
# sudo apt install docker.io -y
# sudo systemctl start docker
# sudo systemctl enable docker
# sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# sudo adduser -aG achakkaf docker
# ============== directory structure ================

# mkdir -p secrets/ srcs/requirements/{bonus,mariadb,nginx,tools,wordpress}/{conf,tools} 
# touch Makefile secrets/{credentials.txt,db_password.txt,db_root_password.txt} srcs/{docker-compose.yml,.env}
# touch srcs/requirements/{mariadb,nginx,wordpress}/{Dockerfile,.dockerignore}

# =============== ================= =================
