%%%-------------------------------------------------------------------
%%% @author root
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. 3ζ 2021 δΈε2:57
%%%-------------------------------------------------------------------
-module(clickhouse_app).
-author("root").

-behaviour(application).
-export([start/2]).
-export([stop/1]).

start(_Type, _Args) -> clickhouse_sup:start_link().

stop(_State) -> ok.
