FROM python:3.11.5-alpine3.18

RUN apk update -y && apk add --no-cache bash
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

CMD [ "python", "app.py" ]
