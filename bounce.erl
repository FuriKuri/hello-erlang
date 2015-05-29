-module(bounce).
-export([report/0, report/1]).

report() ->
  receive
    X -> io:format("Received ~p~n", [X]),
    report()
  end.

report(Count) ->
  receive
    X -> io:format("Received ~p. Count: ~p", [X,Count]),
    report(Count + 1)
  end.

