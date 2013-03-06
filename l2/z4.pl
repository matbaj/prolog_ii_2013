% a)
even([]).
even([_,_|T]) :-
    even(T).
% Za każdym razem ściąga 2 elementy z listy aż nie dostanie pustej. Singleton 
% się nie zunifikuje.

% b)
append([], X, X).
append([H|T], X, [H|Y]):-
    append(T, X, Y).
reverse([],[]).
reverse([H|T], X) :-
    reverse(T,Y),
    append(Y,[H],X).
palindrom([]).
palindrom(X) :-
    reverse(X,X).

% c)
select(H, [H|T], T).
select(X, [H|T], [H|S]) :-
    select(X, T, S).
singleton([H|T]) :-
    select(H, [H|T], []).
