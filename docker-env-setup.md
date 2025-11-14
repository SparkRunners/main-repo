
# Docker Environment Setup – Technical report
How to Configure the Project on Local Development Machines

## Table of contents
- [Docker Environment Setup – Technical report](#docker-environment-setup--technical-report)
  - [Table of contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Project Structure and Repository Cloning](#project-structure-and-repository-cloning)
  - [How to work during development phase (i.e Daily flow)](#how-to-work-during-development-phase-ie-daily-flow)
    - [Recommended Git Workflow Exmaple](#recommended-git-workflow-exmaple)
  - [Testing Code Changes in the Docker Environment](#testing-code-changes-in-the-docker-environment)

## Introduction
This document provides a concise technical overview of how to configure and operate the shared Docker-based development environment for the project. It outlines the required folder structure, repository setup process, daily development workflow, and procedures for testing changes within the containerized environment. The goal is to ensure that all team members work in a consistent, reproducible, and efficient setup during the development phase.

## Project Structure and Repository Cloning
This is how your project tree should look after following the guide and after getting all repositories locally on your machine

```
./vteam06-elspark/
├── main-repo
│   ├── Docker-Cont-setup.md
│   ├── README.md
│   ├── docker-compose.yml
│   └── setup.sh
│
├── frontend-user-service
├── frontend-admin-service
├── auth-server-service
└── user-server-service
```
**NOTE: Adhere strictly to this part of the documention to avoid problems in file structure or setting up docker containers enviroment**

-----
1. Stand in the main-repo and give permissions to the setup.sh file
```bash
  chmod +x setup.sh
```

1. Use the shell script 'setup.sh' to get all the git repositories
```bash
  ./setup.sh
```
1. After the script finishes, all repositories will be under vteam06, and the containers can be started with Docker Compose from the main-repo folder.
You can safely delete the older main-repo folder as 
it is now inside the new vteam06-elspark and is now ready to use.
```bash
  cd ..
  rm -rf main-repo
```
1.  Now move to the new project folder where all the services can be started with the help of docker-compose
```bash
  cd vteam06-elspark/
  cd main-repo/
  docker-compose up -d
```
-----
-----
## How to work during development phase (i.e Daily flow)
This is an example of; when you are working on the auth-server-service

### Recommended Git Workflow Exmaple
1. Go into the specific service folder you’re working on (while standing in the main repo):
```bash
 cd ../auth-server-service
```

2. Pull the latest updates:
```bash
 git pull origin dev
```
3. Work on your feature branch:
```bash
 git checkout -b feature/XXX
```
4. Edit code locally in VS Code.
-----
-----
## Testing Code Changes in the Docker Environment
1. For testing the changes live or after coding, optionally run all services together from the main repo:
```bash
 docker-compose up -d
```
2. Run this command to shut down all contianers
```bash
 docker-compose down
```