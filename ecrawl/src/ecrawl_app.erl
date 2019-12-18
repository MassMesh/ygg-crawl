%%%-------------------------------------------------------------------
%% @doc ecrawl public API
%% @end
%%%-------------------------------------------------------------------

-module(ecrawl_app).

-behaviour(application).

-export([start/2, stop/1, init/0,tuple2list/1]).

start(_StartType, _StartArgs) ->
    %init(),
    ecrawl_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
init() ->
    io:format("hello!\n"),
    ok.

tuple2list({}) -> [];
tuple2list(T) when is_tuple(T) ->
    [element(1, T) | tuple2list(erlang:delete_element(1, T))].

% exec:start([]).
% {ok,[{stdout,[Val]}]} = exec:run("/home/smiley/.golang/src/github.com/yggdrasil-network/yggdrasil-go/yggdrasilctl -v -json getdht",[sync, stdout]).
% Struct = jiffy:decode(Val).
% List = ecrawl_app:tuple2list(Struct).

% io:format("~p",[Val]).

% exec:start([root, {user, "root"}, {limit_users, ["root"]}]).
% exec:run("whoami", [sync, stdout]).
% exec:stop(I).

%% apl
% c("/usr/local/lib/apl/apl.erl").
% apl:init().

% jiffy
% Struct = jiffy:decode(Val).

