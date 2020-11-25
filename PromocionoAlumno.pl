promocionConMasDe(7).

notas(paradigmas, gerardo,[5,9,8]).
notas(paradigmas,florencia,[7,8,6]).
notas(paradigmas,dolores,[5,6,7]).
notas(poo, mercedes,[6,9,2,4]).
notas(poo, julieta,[10,8,10]).
notas(poo, martin,[10,10,10]).
notas(poo, daniel,[4,2,4,6]).

alumnos(paradigmas,[gerardo, florencia, dolores, mercedes]).
alumnos(poo,[mercedes,julieta,daniel,martin]).

sumarNotas([],0).
sumarNotas([Cab|Cola],Suma):-sumarNotas(Cola,Sum),Suma is Cab + Sum.
cantN([],0).
cantN([_|Cola],Cant):-cantN(Cola,C),Cant is C+1.


promocionaron(Materia,Alumno):- notas(Materia,Alumno,Notas),cantN(Notas,Cant),sumarNotas(Notas,Suma),promocionConMasDe(X),Suma/Cant>=X.