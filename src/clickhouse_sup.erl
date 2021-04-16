%%%-------------------------------------------------------------------
%%% @author root
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. 3月 2021 下午2:57
%%%-------------------------------------------------------------------
-module(clickhouse_sup).
-author("root").

-behaviour(supervisor).

-export([start_link/0]).

-export([init/1]).


start_link() ->
  supervisor:start_link({local, clickhouse_sup}, clickhouse_sup, []).

init([]) -> {ok, {{one_for_one, 10, 100}, []}}.

