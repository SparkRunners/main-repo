# main-repo

### Innehållsförteckning
- [main-repo](#main-repo)
    - [Innehållsförteckning](#innehållsförteckning)
  - [Beskrivning](#beskrivning)
  - [Installation och körning](#installation-och-körning)
    - [Express Application / Server Körning](#express-application--server-körning)
    - [Läsa auth api dokumentation](#läsa-auth-api-dokumentation)
## Beskrivning
This repo contains the docker-compose file to start up the project locally with volumes attached for easy changing in the images of the various projeckt related micro-services.


## Installation och körning
För att få appen att fungera behövde vi göra:
```bash
 git clone HTML länk-till-repo
```
För att starta alla tjänster:
```bash
docker-compose up
```
För att stänga alla tjänster:
```bash
docker-compose down
```

Nå frontenden lokal på din maskin genom att kopiera och klistra in fäljande url i ditt favorit webbläsare
```bash
http://localhost:PORT_FRÅN_FE_CONTAINER
```

### Express Application / Server Körning
1. Köra container servicen auth-server:
```bash
 composer-up server-auth
```
2. Installera beroenden:

```bash
 npm install
```
3. Starta backend-servern:
```bash
 npm start
```
### Läsa auth api dokumentation
1. Navigera till backend-api-docs:
```bash
 http://localhost:5000/api-docs/v1
```
