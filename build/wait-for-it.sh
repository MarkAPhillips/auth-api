#!/bin/sh
# wait-for-it.sh

set -e

host="$1"
pwd="$2"

shift 3

cmd="$@"

until PGPASSWORD="$pwd" psql -h "$host" -U "postgres" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
  
>&2 echo "Postgres is up - executing command"
exec $cmd