# main-repo

## Tabel of contents
- [main-repo](#main-repo)
  - [Tabel of contents](#tabel-of-contents)
  - [Description](#description)
  - [Installation and runnning](#installation-and-runnning)
  - [How to Run the Project with Docker Compose](#how-to-run-the-project-with-docker-compose)
  - [Related Repositories (Project Structure)](#related-repositories-project-structure)
    - [Notes](#notes)
  - [Docker Hub Images](#docker-hub-images)


## Description
This repo contains the docker-compose file to start up the project locally with volumes attached for easy changing in the images of the various projeckt related micro-services.

## Installation and runnning
Full instructions for cloning all required repositories and running the project locally with Docker are documented here:
[docker-env-setup.md](./docker-env-setup.md)


## How to Run the Project with Docker Compose
This project includes two separate Docker Compose configurations to support both development and production workflows.

1. Development (local build + volumes)
- Builds images locally from your code
- Mounts local folders so changes are visible immediately
- Starts servers in development mode with hot reload

```bash
docker-compose -f docker-compose.yml up
```
2. Production (images from Docker Hub)
- Pulls pre-built images from Docker Hub
- No need for local code or manual builds
- Runs the app services, ready for deployment
```bash
 docker-compose -f docker-compose-prod.yml up
```


## Related Repositories (Project Structure)

This project is composed of multiple microservices and frontend applications, each maintained in its own GitHub repository.  
During local development, these repositories are cloned and used together via Docker Compose.

| Service | Repository Name | GitHub Link |
|------|----------------|------------|
| Main Docker Compose Repo | `main-repo` | https://github.com/SparkRunners/main-repo |
| Auth API Server | `auth-server-service` | https://github.com/SparkRunners/auth-server-service |
| User API Server | `user-server-service` | https://github.com/SparkRunners/user-server-service |
| Admin Frontend | `frontend-admin-service` | https://github.com/SparkRunners/frontend-admin-service |
| User Frontend | `frontend-user-service` | https://github.com/SparkRunners/frontend-user-service |
| User Mobile App | `frontend-user-mobile` | https://github.com/SparkRunners/frontend-user-mobile |

### Notes

- These repositories are cloned automatically using the provided setup.sh script during local development.
- In production mode, pre-built Docker images are used instead, and cloning these repositories is not required.


## Docker Hub Images

The following Docker images are pre-built and published on Docker Hub.  
They are used by `docker-compose-prod.yml` and allow the application to run without building images locally.

| Service | Image Name | Docker Hub Link |
|-------|-----------|----------------|
| Auth API Server | `hihassan1998/spark-auth-server:1.0` | https://hub.docker.com/r/hihassan1998/spark-auth-server |
| User API Server | `hihassan1998/spark-user-server:1.0` | https://hub.docker.com/r/hihassan1998/spark-user-server |
| Admin Frontend | `hihassan1998/spark-webclient-admin:1.0` | https://hub.docker.com/r/hihassan1998/spark-webclient-admin |
| Admin Frontend | `hihassan1998/spark-webclient-user:1.0` | https://hub.docker.com/r/hihassan1998/spark-webclient-user |


