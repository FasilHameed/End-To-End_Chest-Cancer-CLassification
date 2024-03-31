FROM python:3.11.5-alpine3.14

RUN apk update && \
    apk add --no-cache \
        gcc \
        musl-dev \
        libffi-dev \
        openssl-dev \
        make \
        aws-cli

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
