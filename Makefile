.PHONY: build up down restart logs shell migrate makemigrations createsuperuser

ps:
	docker compose ps

build:
	docker compose build

up:
	docker compose up

upd:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f auth-service

shell:
	docker compose exec auth-service python manage.py shell

migrate:
	docker compose exec auth-service python manage.py migrate

makemigrations:
	docker compose exec auth-service python manage.py makemigrations

createsuperuser:
	docker compose exec auth-service python manage.py createsuperuser
