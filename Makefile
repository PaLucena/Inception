SRC = srcs/docker-compose.yml

DC = docker compose -f $(SRC)

# Construye y levanta los contenedores
all:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
#	@$(DC) build
	@$(DC) up -d --build

# Derriba los contenedores
clean:
	@$(DC) down

fclean: clean
	@docker system prune -af
	@sudo rm -rf ~/data/*
	@docker stop $(docker ps -qa) 2>/dev/null || true; \
	docker rm $(docker ps -qa) 2>/dev/null || true; \
	docker rmi -f $(docker images -qa) 2>/dev/null || true; \
	docker volume rm $(docker volume ls -q) 2>/dev/null || true; \
	docker network rm $(docker network ls -q) 2>/dev/null || true


# Reinicia los contenedores
re: clean all

# Muestra los logs de los contenedores
logs:
	@$(DC) logs -f

.PHONY: all clean re logs
