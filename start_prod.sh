#!/bin/bash

# Перейти в папку с проектом и запустить приложение
cd weather-app
source venv/bin/activate  # если используете виртуальное окружение
flask run --host=0.0.0.0 --port=8000  # Запустить Flask приложение#!/bin/bash
