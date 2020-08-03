FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD ./build/requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

RUN python ./manage.py collectstatic --noinput

RUN chmod a+x ./build/init.sh ./build/initUsers.py && \
    useradd dockerUser

USER dockerUser

CMD ./build/init.sh $ADMIN_USER_EMAIL $ADMIN_USER_PWD $TEST_USER_EMAIL $TEST_USER_PWD $PORT
