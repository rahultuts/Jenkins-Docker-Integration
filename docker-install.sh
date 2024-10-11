#!/bin/bash

# This script installs Docker on CentOS

# Update the package index and install prerequisites
echo "Installing prerequisites..."
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker's official repository
echo "Adding Docker's official repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
echo "Installing Docker..."
sudo yum install -y docker-ce

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

# Enable Docker to start on boot
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
docker --version

# Run a test Docker container
echo "Running a test Docker container..."
sudo docker run hello-world

echo "Docker installation completed successfully!"
