up:
	mkdir -p /home/seojo/data/mariadb
	mkdir -p /home/seojo/data/wordpress
	docker compose -f srcs/docker-compose.yml up -d --build

down:
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

fresh:
	docker system prune -f --all
	rm -rf /home/seojo/data

status:
	@echo network
	docker network ls

	@echo volume
	docker volume ls
	
	@echo images
	docker images

	@echo container
	docker ps

exec:
	docker exec -it $(CONTAINER_NAME) /bin/sh
