color(red).
color(blue).
color(green).
color(yellow).

coloring([]).
coloring([[H1,T1]|T]) :- color(H1), color(T1), H1 \= T1, coloring(T).


/*
?- coloring( [ [Switz, France], [Switz, Italy], [Switz, Germany], [Switz, Austria],
             [Germany, France], [Germany, Austria], [France, Italy] ]).

result:
Switz = yellow,
France = green,
Italy = Germany, Germany = blue,
Austria = red ;

?- coloring( [ [Penn,Maryland], [Penn, Delaware], [Penn, NewJersey], [Penn, NewYork],
             [Penn, Ohio], [Penn, WestVirginia], [Ohio, WestVirginia],
             [WestVirginia, Maryland], [Maryland, Delaware], [Delaware, NewJersey],
             [NewJersey, NewYork], [Virginia, WestVirginia], [Virginia, Maryland],
             [Virginia, Kentucky], [Kentucky, Ohio], [Kentucky, Indiana], [Indiana, Ohio] ]).

result:
Penn = Virginia, Virginia = Indiana, Indiana = red,
Maryland = NewJersey, NewJersey = Ohio, Ohio = blue,
Delaware = NewYork, NewYork = WestVirginia, WestVirginia = Kentucky, Kentucky = green ;
*/
