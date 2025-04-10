-module(list_manipulation).
-export([reverse/1]).

reverse([]) -> [];
reverse([Head | Tail]) -> reverse(Tail) ++ [Head].

