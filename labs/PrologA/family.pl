male(haoyan).
male(yunong).
male(yuchen).
male(chenglin).
female(peiyi).
female(jun).
female(mei).
female(jingya).
parent(haoyan,yunong).
parent(haoyan,yuchen).
parent(haoyan,jun).
parent(peiyi,yunong).
parent(peiyi,yuchen).
parent(peiyi,jun).
parent(yunong,chenglin).
parent(yuchen,jingya).
parent(mei,jingya).

father(Person1,Person2) :- parent(Person1,Person2), male(Person1).
mother(Person1,Person2) :- parent(Person1,Person2), female(Person1).
son(Person1,Person2) :- parent(Person2,Person1), male(Person1).
daughter(Person1,Person2) :- parent(Person2,Person1), female(Person1).
grandparent(Person1,Person2) :- parent(Person1,X), parent(X,Person2).
sibling(Person1,Person2) :- parent(X,Person1), parent(X,Person2), Person1 \= Person2.
aunt(Person1,Person2) :- parent(X,Person2), sibling(Person1,X), female(Person1).
uncle(Person1,Person2) :- parent(X,Person2), sibling(Person1,X), male(Person1).
cousin(Person1,Person2) :- parent(X,Person2), sibling(Y,X), parent(Y,Person1).
ancestor(Person1,Person2) :- parent(Person1,Person2).
ancestor(Person1,Person2) :- parent(X,Person2), ancestor(Person1,X).
