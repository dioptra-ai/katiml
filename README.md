
<p align="center">
    <img src="./img/logo.png" />
</p>
<p align="center">
    <a href="https://dioptra.ai">Website</a> •
    <a href="https://dioptra.gitbook.io/dioptra-doc/EIKhoPaxsbOt062jkPon/">Docs</a> •
    <a href="https://app.dioptra.ai/register">Try it Now</a>
</p>

<p align="center">
    <b>The open-source data lake for gen ai, computer vision and nlp</b>
    <img src="./img/front_page.png" />
</p>

# Getting Started

1. Clone this repo
    ```bash
    git clone --recurse-submodules git@github.com:dioptra-ai/lakeml.git
    ```
1. Start all services with docker-compose
    ```bash
    cd lakeml
    docker compose up --build -d
    ```
1. If you're starting for the first time, run the schema migration
    ```bash
    cd services/ingestion/schemas/pgsql
    virtualenv .venv && source .venv/bin/activate && pip install -r requirements.txt
    alembic upgrade head
    ```
1. Upload the [example data](./data/sample_dataset.json) to the lake
1. Select all datapoints and add them to a new dataset
1. Run the embedding analysis
