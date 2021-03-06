FROM python:3.5-slim

RUN mkdir /app

WORKDIR /app

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD ./app .

EXPOSE 80

CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "--workers", "4", "--reload"]
