/*
El Dr. Bacterio tiene 6 frascos con líquidos de diferente color: rojo,
naranja, amarillo, verde, azul y violeta. Sabe que algunos son
venenosos y otros no, pero no recuerda cuales.

Vagamente, hace memoria y cae en la cuenta de que en los siguientes
pares uno es venenoso y el otro no:

1. Frascos violeta y azul.
2. Frascos rojo y amarillo.
3. Frascos azul y naranja.

También recuerda que en los siguientes pares hay uno sin veneno:

4. Frascos violeta y amarillo.
5. Frascos rojo y naranja.
6. Frascos verde y azul.

7. Además está seguro de que el frasco rojo no es venenoso.

¿Qué frascos contienen veneno?
*/

unVeneno(violeta, azul).
unVeneno(rojo, amarillo).
unVeneno(azul, naranja).

sinVeneno(violeta, amarillo).
sinVeneno(rojo, naranja).
sinVeneno(verde, azul).

noVenenoso(rojo).

venenoso(X) :- (unVeneno(X,Y);unVeneno(Y,X)), noVenenoso(Y).
noVenenoso(Y) :- (sinVeneno(X,Y);sinVeneno(Y,X)), venenoso(X).

% findall(+Template, :Goal, -Bag)
% Create a list of the instantiations Template gets successively on backtracking over Goal and unify the result with Bag. Succeeds with an empty list if Goal has no solutions.
resolver(Solucion) :- findall(X, venenoso(X), Solucion).







% ? - resolver(Solucion).
% Solucion = [azul, amarillo].
