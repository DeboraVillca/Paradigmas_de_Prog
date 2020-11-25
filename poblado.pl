pais(argentina, 36).
pais(china, 1000).
pais(holanda, 12).
pais(eeuu, 120).

pais_poblado(Pais):-pais(Pais,Poblacion),Poblacion>110.
 
pais_noPoblado(Pais):-pais(Pais,Poblacion),not(pais_poblado(Pais)).