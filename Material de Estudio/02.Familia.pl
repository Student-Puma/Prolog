% Lucía es una persona
persona('Lucía').
% Alguien será una persona si tiene una madre y dicha madre es una persona
persona(Alguien) :- madre(Madre, Alguien), persona(Madre).

% Amelia es la madre de Kike
madre('Amelia', 'Kike').
% Amelia es la madre de David
madre('Amelia', 'David').
% Lucía es la madre de Amelia
madre('Lucía', 'Amelia').


/*
= Respuestas
?- persona(Persona).
Persona = 'Lucía' ;
Persona = 'Kike' ;
Persona = 'David' ;
Persona = 'Amelia' .
*/
