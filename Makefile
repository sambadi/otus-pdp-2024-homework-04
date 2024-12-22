install:  # установка зависимостей
	poetry install

run: # запуск на исполнение
	poetry run python -m homework_04

lint: # проверка кода с помощью pre-commit
	poetry run pre-commit run --all-files

test: # запуск тестов
	poetry run pytest ./tests --cov=homework_04 --cov-report term-missing

run-with-docker: # запуск на исполнение с помощью docker
	docker compose up --build