% write/1 Escribe el argumento por pantalla.
% nl/0    Escribe una nueva línea, similar a write('\n').
mostrar([]).
mostrar([Cabeza|Cola]) :- write(Cabeza), write('\n'), mostrar(Cola).


/*
= Respuestas
?- mostrar([]).
true.
?- mostrar(['Buenos días']).
Buenos días
true.
*/


% append/3 Añade el primer argumento al segundo argumento y lo guarda en el tercer argumento.
mostrar_contitulo(Lista) :-
  Titulo = ['Ejemplos en Prolog', '-- by @CosasDePuma'],
  append(Titulo, Lista, Ambas), mostrar(Ambas).


/*
?- mostrar_contitulo(['Buenos días']).
Ejemplos en Prolog
-- by @CosasDePuma
Buenos días
true.
*/


% findall/3 Busca todas las posibles opciones para el primer argumento dentro de la segunda condición
% y lo guarda en el tercer argumento.
italiano('Marco').
gusta('Anne', pizza).
gusta('Rudolf', tortilla).
gusta(Persona, pizza) :- italiano(Persona).
italianos(Lista) :- findall(Persona, gusta(Persona, pizza), Lista).


/*
?- italianos(Italianos).
Italianos = ['Anne', 'Marco'].
*/


% atom/1 Devuelve true si es un átomo (a, 'Hola', ...).
% Los números, listas, árboles, etc. NO son átomos.
% fail/0 Devuelve false.
distintos(X,X) :- !, fail.
distintos(_,_).
dosatomos_distintos(X,Y) :- atom(X), atom(Y), distintos(X,Y).


/*
?- dosatomos_distintos(a,a).
false.
?- dosatomos_distintos([],[]).
false.
?- dosatomos_distintos([],[1]).
false.
?- dosatomos_distintos([], a).
false.
?- dosatomos_distintos(c, a).
true.
?- dosatomos_distintos(c, 0).
false.
?- dosatomos_distintos('Hi', 'Hola').
true.
?- dosatomos_distintos(c, 'Hola').
true.
?- dosatomos_distintos(1, 'Hola').
false.
?- dosatomos_distintos(1, 0).
false.
*/
