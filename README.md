# hello_docker

This repository is an attempt run an Erlang release in a docker image.

## Run

To build a release, docker container and start a docker container:

```
./build_and_start_docker_image.sh
```

Next open http://localhost:8080/ in a browser.

## Fast run

For development purposes you do not have to build it all but just run:

```
rebar3 shell
```
