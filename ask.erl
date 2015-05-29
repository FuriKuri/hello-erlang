-module(ask).
-export([term/0]).

term() ->
	Input = io:read("What {planemo, distance}?"),
	io:format("Chacka"),
	Term = element(2, Input),
	io:format("Look ~w ", [Term]).
