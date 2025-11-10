
# Docker Environment setup Technical Report
**How to setup the porject across the team on indiviual local machines**

NOTE: THis doc is still being worked on....

## Table of contents
- [Docker Environment setup Technical Report](#docker-environment-setup-technical-report)
  - [Table of contents](#table-of-contents)
  - [Description](#description)
    - [Project tree setup and cloning required repos](#project-tree-setup-and-cloning-required-repos)
    - [How to work during development phase (i.e Daily flow)](#how-to-work-during-development-phase-ie-daily-flow)

## Description
This gide helps setup the local docker containers with volumes mounted for developemt phase of the project wiht easy to follw instructions.

### Project tree setup and cloning required repos
**This is how your project tree should look before and after geting all repos locally on your machines**
**Note: To get this project file structure you need to have the main-repo already cloned insde the vteam06 folder you created when cloning the main-repo.**
```
./vteam06/
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

1. Create a local directory in desired location on your machine named 'vteam06'.
```bash
  mkdir vteam06
```

2. Use the shell script 'setup.sh' to get all the git repositories
```bash
 ./setup.sh
```


### How to work during development phase (i.e Daily flow)
**This is an example of; when you are working on the auth-server-service**

1. Go into the specific service folder you’re working on (while standing in the main repo):
```bash
 cd ../auth-service
```
1. Pull the latest updates:
```bash
 git pull origin dev
```
1. Work on your feature branch:
```bash
 git checkout -b feature/XXX
```
1. Edit code locally in VS Code.
-----
1. For testing the changes live or after coding, run all services together from the main repo:
```bash
 cd ../main
 docker-compose up
```