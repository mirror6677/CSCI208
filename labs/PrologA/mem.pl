mem(H,[H|_]).
mem(X,[_|T]) :- mem(X,T).
