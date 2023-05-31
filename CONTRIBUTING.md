# Getting Started

1. Make a change in a service
1. Restart and tail the logs of your service as necessary (except frontend which restarts and rebuilds automatically upon file save).
    ```bash
    docker compose up --build metrics-engine
    # ctrl-c to stop the service
    ```

## Data Model

See the [Schemas](https://github.com/dioptra-ai/schemas) repo for most data models.
