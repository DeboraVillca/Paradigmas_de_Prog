amigo(gerardo, pablo).
amigo(gerardo, jorge).
amigo(gerardo, juan).
amigo(juan, romina).
amigo(jorge, silvio).
amigo(silvio, romina).
amigo(pablo, samanta).
amigo(samanta, pedro).
amigo(pablo, mariana).

cadenaAmistad(X,Y,Pasos):-amigo(X,Y),Pasos is 1.
cadenaAmistad(X,Y,Pasos):-amigo(X,Y1),cadenaAmistad(Y1,Y,Z1),Pasos is 1 +Z1.
