-module(overall).
-export([product/1]).

product([]) -> 0;
product(list) -> product(list, 1).

product([], Product) -> Product;
product([Head | Tail], Product) -> product(Tail, Head * Product).
