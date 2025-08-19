FROM python:3.13.5-slim

# Установка необходимых инструментов для компиляции
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uwsgi", "--ini", "mysite.ini"]