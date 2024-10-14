#!/bin/bash

# Stop all running containers
echo "Stopping all running containers..."
docker stop $(docker ps -q)

# Remove all containers
echo "Removing all containers..."
docker rm $(docker ps -a -q)

# Remove all images
echo "Removing all Docker images..."
docker rmi $(docker images -q)

# Optionally, remove all unused volumes
echo "Removing all unused volumes..."
docker volume prune -f


echo "system prune..."
docker system prune -a

echo "Docker cleanup completed."
