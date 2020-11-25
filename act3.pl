primerparcial(gerardo, 8).
primerparcial(alejandro, 10).
primerparcial(florencia, 8).
primerparcial(romina, 8).
segundoparcial(gerardo, 6).
segundoparcial(alejandro, 10).
segundoparcial(florencia, 7).
segundoparcial(romina, 9).
asistencias(gerardo, 15).
asistencias(alejandro, 17).
asistencias(florencia, 9).
asistencias(romina, 14).

promocion(Alumno):- primerparcial(Alumno,X),X>=7,segundoparcial(Alumno,Y),Y>=7,asistencias(Alumno,Z),Z>=14.

