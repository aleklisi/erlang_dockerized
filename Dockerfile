# Build stage 0
FROM erlang:alpine

# Set working directory
RUN mkdir /buildroot
WORKDIR /buildroot

# Copy our Erlang test application
COPY ./ hello_docker

# And build the release
WORKDIR hello_docker
RUN rebar3 as prod release

# Build stage 1
FROM alpine

# Install some libs
RUN apk add --no-cache openssl && \
    apk add --no-cache ncurses-libs

# Install the released application
COPY --from=0 /buildroot/hello_docker/_build/prod/rel/hello_docker /hello_docker

# Expose relevant ports
EXPOSE 8080

CMD ["/hello_docker/bin/hello_docker", "foreground"]
