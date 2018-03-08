numberOfLeaves(leaf(_),1).
numberOfLeaves(node(T1,T2),N) :- numberOfLeaves(T1,N1), numberOfLeaves(T2,N2), N is N1 + N2.

intree(leaf(X), V) :- X = V.
intree(node(T1,_), V) :- intree(T1,V).
intree(node(_,T2), V) :- intree(T2,V).

position(leaf(V),V,1).
position(node(T1,_),V,N) :- intree(T1,V), position(T1,V,N1), N is N1.
position(node(T1,T2),V,N) :- intree(T2,V), position(T2,V,N2), numberOfLeaves(T1,N1), N is N1 + N2.
