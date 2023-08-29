build:
	docker-compose build
build-force:
	docker-compose build --no-cache --force-rm
build-f:
	docker-compose build skam-test-front
build-b:
	docker-compose build skam-test-back
stop:
	docker-compose stop
up:
	docker-compose up -d
restart:
	docker-compose stop
	docker-compose up -d
o-front:
	docker-compose exec -it skam-test-front sh
o-back:
	docker-compose exec -it skam-test-back bash
git:
	git add .
clear:
	docker system prune --all --force --volumes
migrate:
	docker exec -it skam-test-back php artisan migrate
seed:
	docker exec -it skam-test-back php artisan db:seed
dump:
	docker exec -it skam-test-back composer dump-autoload
bdeploy:
	docker exec -it skam-test-back bash -c "php artisan optimize:clear; composer update; composer install --optimize-autoloader --no-dev; php artisan config:cache ; php artisan cache:clear php artisan config:clear; php artisan config:cache; php artisan event:cache; php artisan route:cache; php artisan view:cache; php artisan route:clear; php artisan config:clear; php artisan cache:clear; php artisan view:clear;"
fdeploy:
	docker exec -it skam-test-front sh -c "pnpm build"
	docker cp skam-test-front:/var/www/html/public/build ./docker-back/public
	TIMESTAMP=$$(date +%Y-%m-%d--%H-%M); \
	mkdir -p ./docker-front/archive/build--$$TIMESTAMP; \
	docker cp skam-test-front:/var/www/html/public/build/. ./docker-front/archive/build--$$TIMESTAMP
deploy: bdeploy fdeploy
