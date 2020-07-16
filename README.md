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
EOF
```

## Run Locally

```
docker-compose up
```

Navigate to `http://localhost:8000/admin`

Login using the credentials defined in the *.env* file.


## Notes

Running the following will generate a *requirements.txt* file in the build folder:

```
pipenv shell
pipenv lock -r > ./build/requirements.txt
```
