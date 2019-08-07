.PHONY : up down pg-up pg-down mgo-up mgo-down

up:
	docker-compose -f docker-compose-postgres.yml up -d

down:
	docker-compose -f docker-compose-postgres.yml down

pg-up:
	docker-compose -f docker-compose-postgres.yml -p pg up -d

pg-down:
	docker-compose -f docker-compose-postgres.yml -p pg down

pg-logs:
	docker logs -f postgres-4dev

mgo-up:
	docker-compose -f docker-compose-mongodb.yml -p mgo up -d

mgo-down:
	docker-compose -f docker-compose-mongodb.yml -p mgo down

mgo-logs:
	docker logs -f mongodb-4dev
