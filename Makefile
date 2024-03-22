.PHONY: dc  migrate

dc:
	docker-compose up --remove-orphans -d

migrate:
	migrate -path ./schema -database 'postgresql://plata-admin:Adm1nPlata2024!@localhost:3443/exchange?sslmode=disable' up
