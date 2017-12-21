DOCKER_COMPOSE := docker-compose -f docker-compose.yml

run:
	${DOCKER_COMPOSE} run aiw-service bash

build:
	docker build -t aiw:latest -f docker/aiw/Dockerfile .
