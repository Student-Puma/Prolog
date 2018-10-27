% Definimos el cero como un número natural
natural(0).
% El siguiente número a Número es natural si Número es natural.
natural(siguiente(Numero)) :- natural(Numero).

% Definimos el cero como un número par
par(0).
% El siguiente del siguiente número a Número es par si Número es par.
par(siguiente(siguiente(Numero))) :- par(Numero).
% El siguiente número a Número es impar si Número es par.
impar(siguiente(Numero)) :- par(Numero).


/*
= Respuestas
?- natural(X).
X = 0 ;
X = siguiente(0) ;
X = siguiente(siguiente(0)) ;
X = siguiente(siguiente(siguiente(0))) ;
X = siguiente(siguiente(siguiente(siguiente(0)))) ;
X = siguiente(siguiente(siguiente(siguiente(siguiente(0))))) ...
?- par(X).
X = 0 ;
X = siguiente(siguiente(0)) ;
X = siguiente(siguiente(siguiente(siguiente(0)))) ;
X = siguiente(siguiente(siguiente(siguiente(siguiente(siguiente(0)))))) ...
?- impar(X).
X = siguiente(0) ;
X = siguiente(siguiente(siguiente(0))) ;
X = siguiente(siguiente(siguiente(siguiente(siguiente(0))))) ;
X = siguiente(siguiente(siguiente(siguiente(siguiente(siguiente(siguiente(0))))))) ...
*/
