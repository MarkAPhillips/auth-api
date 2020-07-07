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

## Run locally

`docker-compose up`

Running 

