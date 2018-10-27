% Adán es un hombre.
hombre('Adán').
% Es mortal si es un hombre
mortal(Persona) :- hombre(Persona).


/*
= Respuestas
?- hombre('Eva').
false.
?- mortal('Adán').
true.
?- mortal(Individuo).
Individuo = 'Adán'.
*/
