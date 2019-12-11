-module(hello_world).

-export([init/2]).

init(Req0, Opts) ->
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/plain">>
	}, <<"Hello from docker!">>, Req0),
	{ok, Req, Opts}.
