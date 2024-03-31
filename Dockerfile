FROM python:3.11.5-alpine3.18

RUN apk update && \
    apk add --no-cache bash && \
    apk add --no-cache gcc musl-dev linux-headers && \
    pip install --upgrade pip

WORKDIR /app
COPY . .

CMD [ "python", "app.py" ]
