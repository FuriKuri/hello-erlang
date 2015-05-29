-module(bounce).
-export([report/0, report/1]).

report() ->
  receive
    X -> io:format("Received ~p~n", [X]),
    report()
  end.

report(Count) ->
  NewCount = receive
    X -> io:format("Received ~p. Count: ~p", [X,Count]),
    Count + 1
  end,
  report(NewCount).
