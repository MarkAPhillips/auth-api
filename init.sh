#! /bin/sh

file=db.sqlite3
if [ -e "$file" ]; then
  # Control will enter here if $file exists
  rm $file
fi

./manage.py migrate
./manage.py shell -c ".models import User; User.objects.create_superuser('$2', '$1')"
