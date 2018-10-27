% Concatenar una lista vacía con una lista da como resultado dicha lista.
concatenar([], Lista, Lista).
% Recursividad de la concatenación
/*
[3,2], [1,5], Resultado
             3 |-> [2], [1,5], Resultado              Resultado = [3|2,1,5] <-|
                             2 |-> [], [1,5], Resultado   Resultado = [2|1,5] <-|
                                        |-> [] -- Caso base:      Resultado = [1,5]
*/
concatenar([Cabeza|Cola], Lista2, [Cabeza|Resultado]) :- concatenar(Cola, Lista2, Resultado).
% El concepto de concatenar ya está implementado en Prolog como append/3.


/*
= Respuestas
?- concatenar([],[],Resultado).
Resultado = [].
?- concatenar([1],[a],Resultado).
Resultado = [1, a].
?- concatenar([1],[],Resultado).
Resultado = [1].
?- concatenar([],[a,b],Resultado).
Resultado = [a, b].
?- concatenar([h,o],[l,a],Resultado).
Resultado = [h, o, l, a].
?- append([f,u,n,c],[iona], Resultado).
Resultado = [f, u, n, c, iona].
*/


% Invertir una lista vacía da como resultado una lista vacía
invertir([],[]).
% Recursividad de la inversión
/*
[3,2,1], Resultado                            Resultado = [Resultado_Abajo|3] <-|
          3 |-> [2,1], Resultado                  Resultado = [Resultado_Abajo|2] <-|
                        2 |-> [1], Resultado         Resultado = [Resultado_Abajo|1] <-|
                                    1 |-> [] -- Caso base: Resultado = []
*/
invertir([Cabeza|Cola], Resultado) :- invertir(Cola,Resultado_Rec), concatenar(Resultado_Rec, [Cabeza], Resultado).


/*
= Respuestas
?- invertir([], Resultado).
Resultado = [].
?- invertir([1], Resultado).
Resultado = [1].
?- invertir([1,a], Resultado).
Resultado = [a, 1].
?- invertir([1,a,[funciona]], Resultado).
Resultado = [[funciona], a, 1].
*/
