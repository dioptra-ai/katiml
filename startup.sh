#!/bin/bash
pip install sentry-cli
export SENTRY_DSN='https://3b729bbfb0344f338b62584875ea89f5@o1152673.ingest.sentry.io/4505350492389376'
eval "$(sentry-cli bash-hook)"

touch .env
docker compose up --build -d

cd services/ingestion/schemas/pgsql
virtualenv .venv && source .venv/bin/activate && pip install -r requirements.txt
alembic upgrade head

echo "Visit http://localhost:4004 to access the Katiml UI with the default credentials: admin@dioptra.ai / password"
