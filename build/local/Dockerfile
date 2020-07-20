FROM python:3.8.3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

COPY ./build/requirements.txt /code/

RUN pip install -r requirements.txt && \
    apt-get update && \
    apt-get install -y postgresql-client

COPY . /code/ 

RUN chmod a+x ./build/wait-for-it.sh ./build/init.sh