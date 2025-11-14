#!/bin/bash

# Parent folder for all services in one location
PROJECT_ROOT=../vteam06-elspark

mkdir -p $PROJECT_ROOT

echo "Cloning all micro service repos into $PROJECT_ROOT..."
# clone the main-repor again inside the vteam06 project root

git clone https://github.com/SparkRunners/main-repo.git $PROJECT_ROOT/main-repo
# backend server repos
git clone https://github.com/SparkRunners/auth-server-service.git $PROJECT_ROOT/auth-server-service 
git clone https://github.com/SparkRunners/user-server-service.git $PROJECT_ROOT/user-server-service

# admin and user UI two FE repos
git clone https://github.com/SparkRunners/frontend-user-service.git $PROJECT_ROOT/frontend-user-service
git clone https://github.com/SparkRunners/frontend-admin-service.git $PROJECT_ROOT/frontend-admin-service


echo "Starting containers..."
docker-compose up --build
