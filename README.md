# Gateway

Django microservice containing the `gateway` application.

## Run locally

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python src/manage.py migrate
python src/manage.py runserver
```

## Run with Docker

```bash
docker compose up --build
```
