#! /bin/sh

port=${3:-"8000"}

./manage.py migrate
./manage.py shell -c "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$2', '$1', first_name='Admin', last_name='User')"
./manage.py runserver 0.0.0.0:$port