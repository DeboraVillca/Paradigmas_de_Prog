persona(juan).
persona(pedro).
persona(anamaria).
persona(alejandra).

haceDeporte(juan).
haceDeporte(alejandra).

esSano(X):- persona(X), haceDeporte(X).