-module(hello_docker_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    hello_docker_sup:start_link().

stop(_State) ->
    ok.
