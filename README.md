## Setup

Requirements:

- Docker
- Docker Compose

Before running `docker-composer up -d` for the first time, you need to run the folowwing commands:

```bash
docker-compose run --rm php composer install
docker-compose run --rm node npm install
```

Now you can run:

```bash
docker-compose up -d
```
