# **Inception**

## Docker useful commands:
---
Docker will run the container, detach it (run it in the background), and attach an interactive terminal.
Note that this won’t run the container’s default entrypoint script, but run a shell instead.
Effectively, you will have a container that stays running permanently.

	docker run --entrypoint /bin/sh -itd <container_name>:<tag>
---
Docker build image

	docker build -t <image_name>:<tag> <dockerfile_path>
---
## Resources
 * https://www.youtube.com/watch?v=svlcIIp-S9w
 * https://www.youtube.com/watch?v=8rC_FsQX7xo
 * https://github.com/andrewnikiforov/ft_inception example of alpine version for this project
 * https://docs.docker.com/storage/volumes/
 * https://www.youtube.com/watch?v=MVIcrmeV_6c
 * https://www.youtube.com/watch?v=3c-iBn73dDE&list=PLy7NrYWoggjxtN4YbSMYFFdpaxb-fR4zC
