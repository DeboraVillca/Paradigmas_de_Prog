vocales([a,e,i,o,u]).

pertenece([Cabeza|_],Buscado):-Cabeza=Buscado.
pertenece([_|Cola],Buscado):-pertenece(Cola,Buscado).

esVocal(V):-vocales(Lista),pertenece(Lista,V).


contarElementos([],0).
contarElementos([_|Cola],Cant):-contarElementos(Cola,CantAux),Cant is CantAux +1.

sumarElementos([],0).
sumarElementos([Cab|Cola],Suma):-sumarElementos(Cola,SumaAux),Suma is SumaAux + Cab.