#!/bin/bash

ENV=$1

if [ "$ENV" == "test" ]; then
    echo "Deploying to Test..."
    # Команды деплоя в тест (например, SCP файлов на сервер или запуск контейнеров Docker)
elif [ "$ENV" == "prod" ]; then
    echo "Deploying to Production..."
    # Команды деплоя в продакшен
fi
