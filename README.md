## Pre-requisites

Docker

Python (== 3.8.3)

Ensure *env* vars are set as follows:

```
cat > build/.env << EOF
DEBUG=True
SECRET_KEY=**********
ADMIN_USER_PWD=***********
ADMIN_USER_EMAIL=******@********
POSTGRES_DB=auth
POSTGRES_PASSWORD=**********
POSTGRES_USER=postgres
EOF
```

## Run Locally

In the project root run:

```
docker-compose down -v --rmi all
docker-compose up --build 
```

Navigate to `http://localhost:8000/admin`

Login using the credentials defined in the *.env* file.


## Notes

Running the following will generate a *requirements.txt* file in the build folder:

```
pipenv shell
pipenv lock -r > ./build/requirements.txt
```

In the production environment the DATABASE_URL is used to connect to a postgres database hosted on Heroku.

Locally docker-compose spins up a postgres instance using the POSTGRES_* env variables.

