humano(socrates).
mortal(lassie).

mortal(Alguien):-
    humano(Alguien).


programaEn(nahuel,javascript).
programaEn(juan,haskell).
programaEn(juan,ruby).
programaEn(caro,haskell).
programaEn(caro,scala).

colega(Persona1,Persona2):-
    programaEn(Persona1,Lenguaje),
    programaEn(Persona2,Lenguaje),
    Persona1 \= Persona2.

