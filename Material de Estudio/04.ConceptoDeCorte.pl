% numeroPadres define el número de padres que tiene una persona.
/*
Por norma general, nuestro programa sería así:

numeroPadres('Adán', 0).
numeroPadres('Eva',0).
numeroPadres(CualquierPersona, 2).

Pero si preguntamos cuantos padres tiene Adán, nos encontramos con el siguiente error:

?- numeroPadres('Adán', Resultado).
Resultado = 0 ;
Resultado = 2.

Como sólamente la primera respuesta es correcta, utilizaremos el concepto del corte para
detener ahí la lógica de este. Para ello utilizaremos el símbolo '!'.

numeroPadres('Adán', 0) :- !.
numeroPadres('Eva',0) :- !.
numeroPadres(CualquierPersona, 2).

Así podremos obtener estos resultados:
?- numeroPadres('Adán', Resultado).
Resultado = 0.
?- numeroPadres('Adán', 2).
true.

Otro error que nos encontramos es que numeroPadres('Adán', 2) es true.
Esto pasa porque no hemos sido cuidadosos al definir las respuestas
*/

numeroPadres('Adán', N) :- !, N = 0.
numeroPadres('Eva', N) :- !, N = 0.
numeroPadres(CualquierPersona, 2).


/*
= Respuestas
?- numeroPadres('Adán', N).
N = 0.
?- numeroPadres('Adán', 0).
true.
?- numeroPadres('Adán', 2).
false.
?- numeroPadres('Abraham', 2).
true.
*/
