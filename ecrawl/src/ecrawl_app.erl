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

% exec:start([]).
% {ok,[{stdout,[Val]}]} = exec:run("/home/smiley/.golang/src/github.com/yggdrasil-network/yggdrasil-go/yggdrasilctl -v -json getdht",[sync, stdout]).
% io:format("~p",[Val]).


% exec:start([root, {user, "root"}, {limit_users, ["root"]}]).
% exec:run("whoami", [sync, stdout]).
% exec:stop(I).

