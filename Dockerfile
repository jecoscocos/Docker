# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы зависимостей
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем остальные файлы приложения
COPY . .

# Открываем порт 5000
EXPOSE 5000

# Запускаем приложение
CMD ["python", "app.py"] 