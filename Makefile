.PHONY: html

all: build

build: 
	docker-compose build

run:
	docker-compose up -d

stop:
	docker-compose stop
