parent(tom, bob).
parent(bob, pat).
parent(bob, ada).
parent(pat, jim).
parent(ada, michelle).

male(tom).
male(bob).
male(jim).
male(pat).
female(ada).
female(michelle).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
aunt(X, Y) :- female(X), sibling(X, P), parent(P, Y).
cousin(X, Y) :- parent(P, X), parent(Q, Y), sibling(P, Q).
grandparent(X,Y) :- parent(P,Y), parent(X,P).
ancestor(X, Y) :- parent(X,Y).
ancestor(X, Y) :- parent(P,Y), ancestor(X, P).
descendent(X, Y) :- parent(Y,X).
descendent(X, Y) :- parent(Y,P), descendent(X, P).
