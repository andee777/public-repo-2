#!/bin/bash

# Step 1: Install Docker using the convenience script
echo "Downloading and installing Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Step 2: Install Docker Compose standalone version
DOCKER_COMPOSE_VERSION="v2.29.6"
echo "Downloading Docker Compose version $DOCKER_COMPOSE_VERSION..."
sudo curl -SL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

# Step 3: Apply executable permissions to the Docker Compose binary
echo "Applying executable permissions to Docker Compose..."
sudo chmod +x /usr/local/bin/docker-compose

# Step 4: (Optional) Create a symbolic link to make Docker Compose available in your PATH
echo "Creating a symbolic link for Docker Compose..."
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Step 5: Verify Docker and Docker Compose installation
echo "Verifying Docker and Docker Compose installation..."
docker --version
docker-compose --version

echo "Docker and Docker Compose installation complete!"
