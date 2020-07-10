FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip install -r requirements.txt

ADD . /code/

RUN chmod a+x init.sh && \
    useradd dockerUser

USER dockerUser

CMD sh init.sh $ADMIN_USER_PWD $ADMIN_USER_EMAIL && \
    python manage.py runserver 0.0.0.0:$PORT