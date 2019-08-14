.PHONY : up down pg-up pg-down mgo-up mgo-down nats-up nats-down nats-logs mysql-up mysql-down mysql-ver mysql-dump mysqldump

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

nats-up:
	docker-compose -f docker-compose-nats-stream.yml -p nats up -d

nats-down:
	docker-compose -f docker-compose-nats-stream.yml -p nats down

nats-logs:
	docker logs -f nats-streaming-4dev

mysql-up:
	docker-compose -f docker-compose-mysql.yml -p mysql up -d

mysql-down:
	docker-compose -f docker-compose-mysql.yml -p mysql down

mysql-ver:
	docker exec -it mysql-4dev mysql --version

mysql-dump:
	docker exec -it mysql-4dev mysqldump --compatible=postgresql --default-character-set=utf8 -r dms.mysql -u root dms

mysqldump:
	docker exec -it mysql-4dev mysqldump -u root -p --compatible=postgresql -T/Users/namtran/dev/dms dms
