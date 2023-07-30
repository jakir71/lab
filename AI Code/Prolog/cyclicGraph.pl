edge(a,b).
edge(b,c).
edge(c,d).
edge(d,e).
edge(e,b).

path(A,B):-
    edge(_,B),edge(A,_),nextRoute(A,B,[]),write(B).
nextRoute(A,B,V):-
    edge(A,X),write(A),write('->'),
    not(member(X,B)),
    (   B=X;
    nextRoute(X,B,[A|V]);
    write(X)).
