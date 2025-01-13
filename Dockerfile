FROM debian:latest

RUN apt update && apt install -y nginx

# EXPOSE 5000:80

CMD ["nginx", "-g", "daemon off;"]