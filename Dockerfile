FROM python:3.8-slim-buster
 
WORKDIR /app
 
# Install system dependencies including Rust
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    curl \
    build-essential \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
 
# Add Rust to PATH
ENV PATH="/root/.cargo/bin:${PATH}"
 
COPY . /app
 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
 
EXPOSE 5000
 
CMD ["python3", "app.py"]
 
