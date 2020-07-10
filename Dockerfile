FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD requirements.txt /app/

RUN pip install -r requirements.txt

ADD . /app/

RUN chmod a+x init.sh && \
    useradd dockerUser

USER dockerUser

CMD sh init.sh $ADMIN_USER_PWD $ADMIN_USER_EMAIL && \
    ls -l && \
    python manage.py runserver 0.0.0.0:$PORT