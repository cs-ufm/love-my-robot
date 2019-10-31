.PHONY:  all

up: build
	docker-compose up -d

local:
	mkdocs serve


build:
	docker-compose build --parallel

restart:
	docker-compose restart
clean:
	docker-compose down -v

deploy:
	mkdocs gh-deploy