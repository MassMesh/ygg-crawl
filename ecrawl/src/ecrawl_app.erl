%%%-------------------------------------------------------------------
%% @doc ecrawl public API
%% @end
%%%-------------------------------------------------------------------

-module(ecrawl_app).

-behaviour(application).

-export([start/2, stop/1, init/0]).

start(_StartType, _StartArgs) ->
    %init(),
    ecrawl_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
init() ->
    io:format("hello!\n"),
    ok.
