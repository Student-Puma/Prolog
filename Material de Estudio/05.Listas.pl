% Unos corchetes vacíos son una lista
lista([]).

/*
Las listas en prolog se definen como [Car|Cdr],
donde Car es el primero elemento
y donde Cdr es el resto de la lista

Ejemplo:
[ 1  , 2, 3, 4 ]
[Car |   Cdr   ]
*/

% Un par [Car|Cdr] será lista si su Cdr es una lista:
% lista([Cabeza|Cola]) :- lista(Cola).
% Como Cabeza sólo aparece una vez en la declaración, nos mostrará la siguiente advertencia:
%   Warning: Singleton variables: [Cabeza]
% Para evitarlo, reemplazaremos Cabeza por la variable '_'
lista([_|Cola]) :- lista(Cola).


/*
= Respuestas
?- lista([]).
true.
?- lista([1]).
true.
?- lista([a,b]).
true.
?- lista([h,[o,l],a]).
true.
?- lista(Lista).
Lista = [] ;
Lista = [_G2553] ;
Lista = [_G2553, _G2556] ;
Lista = [_G2553, _G2556, _G2559] ;
Lista = [_G2553, _G2556, _G2559, _G2562] ;
Lista = [_G2553, _G2556, _G2559, _G2562, _G2565] ;
Lista = [_G2553, _G2556, _G2559, _G2562, _G2565, _G2568] ...
*/
