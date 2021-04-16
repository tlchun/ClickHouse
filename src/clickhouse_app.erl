%%%-------------------------------------------------------------------
%%% @author root
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. 3月 2021 下午2:57
%%%-------------------------------------------------------------------
-module(clickhouse_app).
-author("root").

-behaviour(application).
-export([start/2]).
-export([stop/1]).

start(_Type, _Args) -> clickhouse_sup:start_link().

stop(_State) -> ok.
