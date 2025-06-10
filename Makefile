all: build up ps
reset: down prune build up ps

prune:
	docker system prune -f
ps:
	docker compose ps
up:
	docker compose up -d
up-web:
	docker compose up -d web
build:
	docker compose build
down:
	docker compose down
down-v:
	docker compose down -v
restart:
	docker compose restart
