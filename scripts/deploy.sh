#!/bin/bash
docker build -t jnbarlow/monero-nodeboard:$(git rev-parse --short HEAD) .
docker build -t jnbarlow/monero-nodeboard:latest .

docker push jnbarlow/monero-nodeboard:$(git rev-parse --short HEAD)
docker push jnbarlow/monero-nodeboard:latest
