FROM python:3.8-slim-bullseye
 
WORKDIR /app
 
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    curl \
    build-essential \
    rustc \
    cargo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
 
COPY . /app
 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -e .
 
EXPOSE 5000
 
CMD ["python3", "app.py"]
 
