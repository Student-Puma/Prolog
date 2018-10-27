/*
Podemos crear condicionales en Prolog de la siguiente manera:

if_then_else(argumentos...) :- If, !, Then.
if_then_else(argumentos) :- Else.

También se pueden crear en una única línea como:

if_then_else(arguentos...) :- If -> Then ; Else
*/

mayor(X,Y,Z) :- X > Y, !, Z = X.
mayor(_,Y,Z) :- Z = Y.

menor(X,Y,Z) :- X < Y -> Z = X ; Z = Y.


/*
= Respuestas
?- mayor(10,5,Resultado).
Resultado = 10.
?- mayor(10,10,Resultado).
Resultado = 10.
?- mayor(5,10,Resultado).
Resultado = 10.
?- menor(1,0,Resultado).
Resultado = 0.
?- menor(0,1,Resultado).
Resultado = 0.
?- menor(0,0,Resultado).
Resultado = 0.
?- mayor(12,21,12).
false.
?- menor(0,4,0).
true.
*/
