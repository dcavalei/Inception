all:	bind_mount
	@docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env up

clean:
	@docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down

bind_mount:
	@mkdir -pv /home/$(USER)/data/mariadb
	@mkdir -pv /home/$(USER)/data/wordpress

.PHONEY: all fclean clean bind_mount
