#! /bin/bash

port=${5:-"8000"}

echo "${@: 1:4}"

./manage.py migrate
./build/initUsers.py ${@: 1:4}
./manage.py runserver 0.0.0.0:$port