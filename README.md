# docker-service-mysql
A Docker image for mariadb that runs as a service.

# Useful commands

```
SERVICE_ID=$(docker service ps -q mysql)
CONTAINER_ID=$(docker inspect --format "{{.Status.ContainerStatus.ContainerID}}" $SERVICE_ID | head -1)
docker exec -it $CONTAINER_ID bash
```

```
docker service create --name mysql \
  --network private \
  --mount type=bind,source=$HOME/docker/volumes/mysql,target=/var/lib/mysql \
  volgenic/mysql
```

