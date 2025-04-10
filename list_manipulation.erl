-module(list_manipulation).
-compile({no_auto_import, [length/1]}).  % Disable auto-import for length/1
-export([reverse/1, length/1, is_palindrome/1, double_elements/1]).

% Reverse a list
reverse([]) -> [];
reverse([Head | Tail]) -> reverse(Tail) ++ [Head].

% Find the length of a list
length([]) -> 0;
length([_]) -> 1;
length([_ | Tail]) -> 1 + length(Tail).

% Check if a list is a palindrome
is_palindrome([]) -> true;
is_palindrome([_]) -> true;
is_palindrome([Head | Tail]) when Head == hd(lists:reverse(Tail)) -> is_palindrome(Tail);
is_palindrome([_ | _]) -> false.

% Double elements in the list using lists:map with a lambda function
double_elements(List) -> lists:map(fun(X) -> X * 2 end, List).

