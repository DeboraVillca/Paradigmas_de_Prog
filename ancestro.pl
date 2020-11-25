padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
padre(jose, pepe).
padre(abu, homero).
padre(abu, jose).
padre(toto, abu).

hermano(X,Y):- padre(P,X), padre(P,Y), X \= Y.
primo(X,Y):-padre(P1,X),padre(P2,Y),hermano(P1,P2).
tio(X,Y):- hermano(X,Z),padre(Z,Y).
abuelo(X,Y):-padre(P1,Y),padre(X,P1).

ancestro(X,Y):-padre(X,Y).
ancestro(X,Y):- padre(P,Y),ancestro(X,P).