par(2).
nacio(melina,fecha(19,8,2001)).

escritor("Jorge Luis Borges").
escritor("Julio Cortazar").

valor(0,1).
valor(Incog,Incog).

pastas(ravioles).
pastas(fideos).

come(juan, ravioles).
come(melina, ravioles).
come(brenda, fideos).
come(juan, fideos).

humano(socrates).
humano(platon).
mortal(Persona):-humano(Persona).
    humano(socrates).



viveEn(tefi, lanus).
viveEn(gise, lanus).
viveEn(alf, lanus).
viveEn(dodain, liniers).
docente(alf).
docente(tefi).
docente(gise).
docente(dodain).


afortunado(Quien):-docente(Quien).
 afortunado(Quien):-viveEn(Quien,liniers).

animal(tigre).
animal(oso).
animal(elefante).

a(X):- X>2 , X<6.

% gustos

gusta(juan,maria).
gusta(pedro,ana).
gusta(pedro,nora).

gusta(Persona,zulema):-gusta(Persona,nora).



gusta(julian,Chica):-chica(Chica),morocha(Chica).
gusta(julian,Chica):-chica(Chica),tienaOnda(Chica).

gusta(julian,luisa).
gusta(mario,Chica):-chica(Chica),morocha(Chica),
                tienaOnda(Chica).
gusta(mario,luisa).



gusta(Persona,laura):-gusta(Persona,ana),
                      gusta(Persona,luisa).


gusta(Persona,laura):-gusta(Persona,ana).
                      
gusta(Persona,laura):-gusta(Persona,ana).
gusta(Persona,laura):-gusta(Persona,luisa).

