# Syncthing Swarm

This docker-compose creates 3 syncthing servers.  
Feel free to use for testing.

## Usage

```
docker-compose up
```

## Get containers' ips:

```
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
```