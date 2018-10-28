% elementos/2 +Lista, -Elementos
% Devuelve el número de elementos atómicos de una lista
elementos([],0) :- !.
elementos(X,1) :- atomic(X).
elementos([Cabeza|Cola],Elementos) :- elementos(Cabeza,E1), elementos(Cola,E2), Elementos is E1 + E2.
% suma/3 +Vector1 +Vector2 -Suma
% Devuelve la suma de ambos vectores
suma([],[],[]).
suma([Cabeza1|Cola1],[Cabeza2|Cola2],[Suma|Resultado]) :- Suma is Cabeza1 + Cabeza2, suma(Cola1,Cola2,Resultado).
% ultimo/2 +Lista -Elemento
% Devuelve el último elemento de la lista
ultimo([Unico],Unico) :- !.
ultimo([Cabeza|Cola],Ultimo) :- ultimo(Cola,Ultimo).
% penultimo/2 +Lista -Elemento
% Devuelve el penúltimo elemento de la lista
penultimo([X,_],X) :- !.
penultimo([Cabeza|Cola],Penultimo) :- penultimo(Cola,Penultimo).
% dividir/3 +Lista -Pares -Impares
% Divide la lista en dos: una con los números pares y la otra con los impares.
dividir([],[],[]).
dividir([Cabeza|Cola],[Cabeza|Pares],Impares) :- Cabeza mod 2 =:= 0, !, dividir(Cola,Pares,Impares).
dividir([Cabeza|Cola],Pares,[Cabeza|Impares]) :- dividir(Cola,Pares,Impares).
