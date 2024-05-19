SRC = srcs/docker-compose.yml

DC = docker compose -f $(SRC)

# Construye y levanta los contenedores
all:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
#	@$(DC) build
	@$(DC) up -d

# Derriba los contenedores
clean:
	@$(DC) down
	@docker system prune -af

# Reinicia los contenedores
re: clean all

# Muestra los logs de los contenedores
logs:
	@$(DC) logs -f

.PHONY: all clean re logs