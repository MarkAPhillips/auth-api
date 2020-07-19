FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD ./build/requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

RUN python ./manage.py collectstatic --noinput

RUN chmod a+x ./build/init.sh && \
    useradd dockerUser

USER dockerUser

CMD sh ./build/init.sh $ADMIN_USER_PWD $ADMIN_USER_EMAIL $PORT