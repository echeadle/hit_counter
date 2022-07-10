# Simple change for Jenkins
FROM python:alpine 
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers curl
COPY requirements.txt requirements.txt
COPY test.txt  test.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]
