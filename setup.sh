#!/bin/bash
# <Working on this!!>

echo "Cloning all micro service repos..."
git clone https://github.com/your-org/auth-service.git ../auth-service
git clone https://github.com/SparkRunners/user-server-service.git ../frontend-service

# Edit later two FE repos
git clone https://github.com/your-org/frontend-user-service.git ../frontend-user-service
git clone https://github.com/your-org/frontend-admin-service.git ../frontend-admin-service


echo "Starting containers..."
docker-compose up --build
