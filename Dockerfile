FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput

RUN chmod a+x init.sh && \
    useradd dockerUser

USER dockerUser

CMD sh init.sh $ADMIN_USER_PWD $ADMIN_USER_EMAIL && \
    python manage.py runserver 0.0.0.0:$PORT