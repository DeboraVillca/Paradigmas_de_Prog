sumar(X,Y,Z):- Z is X+Y.

dividir(3,0,X):- X is 3.
dividir(X,Y,Z):- Z is X/Y.

factorial(0,1).
factorial(X, Y):- Z is X-1,factorial(Z,Y1),Y is X*Y1.