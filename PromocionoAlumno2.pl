notas(paradigmas, gerardo,[5,9,8]).
notas(paradigmas,florencia,[7,8,6]).
notas(paradigmas,dolores,[5,6,7]).
notas(poo, mercedes,[6,9,2,4]).
notas(poo, julieta,[10,8,10]). 
notas(poo, martin,[10,10,10]).
notas(poo, daniel,[4,2,4,6]).

promocionConMasDe(7).


alumnos(paradigmas,[gerardo, florencia, dolores, mercedes]).
alumnos(poo,[mercedes,julieta,daniel,martin]).

contarLista([],0).
contarLista([_|Xs],Cant):- contarLista(Xs, Cant1), Cant is Cant1 + 1.

sumarLista([],0).
sumarLista([X|Xs], Suma):- sumarLista(Xs, Suma1), Suma is X + Suma1.

% aca busco la lista de un alumno y me fijo
promocionoAlumno(Materia, Alumno):- notas(Materia, Alumno, Notas)
									, contarLista(Notas,Cant)
									, sumarLista(Notas, Suma)
									, promocionConMasDe(X)
									, Suma / Cant >= X.

concatenarListas(Materia, [],[]).
concatenarListas(Materia, [Cab|Col],[Cab|L2]):- promocionoAlumno(Materia, Cab), concatenarListas(Materia, Col,L2).
concatenarListas(Materia, [Cab|Col], L2)     :- not(promocionoAlumno(Materia, Cab)), concatenarListas(Materia, Col,L2).


promocionaron(Materia,Alumnos):-alumnos(Materia, LA), concatenarListas(Materia, LA,Alumnos).

                               
							   
							   

