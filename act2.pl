persona(barreda).
persona(gerardo).
persona(santiago).


delito(barreda).
delito(santiago).
delito(mijefe).


culpable(X):- persona(X), delito(X).