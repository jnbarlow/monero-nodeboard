#!/bin/bash
docker run --mount type=bind,src=./test,target=/app/blockchain -dp 127.0.0.1:3000:3000 monero-nodeboard:latest

