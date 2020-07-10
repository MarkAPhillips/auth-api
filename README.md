## Pre-requisites

Docker

Python (== 3.8.3)

Ensure *env* vars are set as follows:

```
cat > .env << EOF
DEBUG=True
SECRET_KEY=**********
ADMIN_USER_PWD=***********
ADMIN_USER_EMAIL=******@test.co.uk
EOF
```

## Run Locally

API can be run in a virtual environment by running

```
pipenv shell
python manage.py runserver
```

If third party apps need to be installed this should be installed running:

`pipenv install ******`

A *requirements.txt* should be then generated as per the notes below.

## Notes

The *requirements.sh* file is a shell script that generates the *requirements.txt* file from *Pipfile.lock*
