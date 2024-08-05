serve-frontend:
	npm --prefix ./frontend run dev

serve-backend:
	npm --prefix ./backend run dev

mailhog-up:
	chmod +x scripts/mailhog_up.sh
	./scripts/mailhog_up.sh

mailhog-down:
	chmod +x scripts/mailhog_down.sh
	./scripts/mailhog_down.sh

postgres-up:
	chmod +x scripts/postgres_up.sh
	./scripts/postgres_up.sh

postgres-down:
	chmod +x scripts/postgres_down.sh
	./scripts/postgres_down.sh

mongo-up:
	chmod +x scripts/mongo_up.sh
	./scripts/mongo_up.sh

mongo-down:
	chmod +x scripts/mongo_down.sh
	./scripts/mongo_down.sh
