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

The *requirements.sh* file is a shell script that generates the *requirements.txt* file from *Pipfile.lock*
