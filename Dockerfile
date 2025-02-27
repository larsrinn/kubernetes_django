FROM python:3.7.4-slim
MAINTAINER Mark Gituma <mark.gituma@gmail.com>

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN python manage.py collectstatic --noinput
CMD gunicorn kubernetes_django.wsgi --bind 0.0.0.0:8000
