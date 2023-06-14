pip install sentry-cli
set "SENTRY_DSN=https://3b729bbfb0344f338b62584875ea89f5@o1152673.ingest.sentry.io/4505350492389376"
sentry-cli bash-hook

echo.> .env
docker-compose up --build -d

cd services\ingestion\schemas\pgsql
virtualenv .venv
call .venv\Scripts\activate
pip install -r requirements.txt
alembic upgrade head

echo Visit http://localhost:4004 to access the Katiml UI with the default credentials: admin@dioptra.ai / password
