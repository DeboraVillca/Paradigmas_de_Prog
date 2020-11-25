chica(maria).
chica(ana).
chica(nora).
chica(zulema).

con_onda(ana).
con_onda(luisa).
con_onda(maria).

morocha(maria).
morocha(luisa).

gusta(juan,maria).
gusta(pedro,ana).
gusta(pedro,nora).

gusta(julian,C):-chica(C),con_onda(C),morocha(C).

%julian morocha y chica con onda.
%mario gusta de la morocha con onda y de luisa.
