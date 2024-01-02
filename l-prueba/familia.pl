progenitor(homero, bart).
progenitor(homero, lisa).
progenitor(homero, maggie).
progenitor(abe, homero).
progenitor(abe, jose).
progenitor(jose, pepe).
progenitor(mona, homero).
progenitor(jacqueline, marge).
progenitor(marge, bart).
progenitor(marge, lisa).
progenitor(marge, maggie).
%hallar hermanos tios abuelos
%% hermano

hermano(X,Y):-
    progenitor(Padre,X),
    progenitor(Padre,Y),
    X \= Y.

tio(Tio,Sobrino):-progenitor(Padre,Sobrino),
                  hermano(Padre,Tio),
                  Padre \= Tio.  

primo(Primo1,Primo2):-progenitor(Padre,Primo1),
                        progenitor(Tio,Primo2),
                        hermano(Padre,Tio).

abuelo(Abuelo,Nieto):-progenitor(Abuelo,Padre),
                      progenitor(Padre,Nieto).