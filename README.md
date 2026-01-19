# main-repo

## Tabel of contents
- [main-repo](#main-repo)
  - [Tabel of contents](#tabel-of-contents)
  - [Description](#description)
  - [Installation and runnning](#installation-and-runnning)
  - [How to Run the Project with Docker Compose](#how-to-run-the-project-with-docker-compose)


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