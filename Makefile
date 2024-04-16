
DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml
DOCKER_COMPOSE := docker-compose

all : up

up:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build -d
start:	
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start
stop:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop
down:
		@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down
clean:
		@docker system prune -af