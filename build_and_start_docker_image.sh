#!/bin/bash

# Build an image
docker build -t erlang_hello_docker .

# Start a ditached container
docker run -d -p 8080:8080 -name erlang_hello_docker erlang_hello_docker
