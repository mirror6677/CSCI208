%NOTE: The remaining problems from hw8 are in the hw8 folder.

% 1.
% if
% then
% else

% 2. [+-]?(0|([1-9][0-9]*))

% 3. \+\+

% 4. yes

% 5. no

% 6. yes

% 7. yes

% 8. Greedy: 176a3b62

% 9. Non greedy: 1336b

split(W , [[], W]).
split([X | W], [[X|W1], W2]) :- split(W, [W1,W2]).

match(eps, []).
match(symb(A),[ A ]).
match(union(R1,_), W) :- match(R1, W).
match(union(_,R2), W) :- match(R2, W).
match(conc(R1,R2), W) :- split(W, [A, B]), match(R1, A), match(R2, B).
match(star(_), []).
match(star(R), W) :- split(W, [W1,W2]), W1 \= [], match(R, W1), match(star(R), W2).

%10
%(a(b|c))* does match the string abacabac.

%?- match(star(conc(symb(a),union(symb(b),symb(c)))), [a,b,a,c,a,b,a,c]).
%true .

%11
%Prolog query: match(star(conc(star(symb(a)),star(symb(b)))), [b,b,a,a,b,b,a]).
%Answer: Yes!

%12
%Prolog query: match(star(conc(conc(symb(a),star(symb(b))),symb(c))), [a,c,a,b,b,c,a,b,c,c]).
%Answer: No!

