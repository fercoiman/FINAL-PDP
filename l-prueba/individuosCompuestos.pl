siguiente(N,Siguiente):-Siguiente is N+1.
escritor("Jorge Luis Borges").
escritor("Julio Cortázar").
escritor("Elsa Bornemann").
%Listas
head([Cabeza|_], Cabeza).

nacio(karla, fecha(22, 08, 1979)).
nacio(fernando, fecha(19, 06, 1963)).
nacio(norma, fecha(06, 01, 1964)).
compro(cliente(231024, "Nelson Pedernera"),
       producto(pirufio, 239, 1)).

%Ejemplo Integrador
% natacion: estilos (lista), metros nadados, medallas
practica(ana,natacion([pecho, crawl], 1200, 10)).
practica(luis,natacion([perrito], 200, 0)).
practica(vicky,natacion([crawl, mariposa, pecho, espalda], 800, 0)).
% fútbol: medallas, goles marcados, veces que fue expulsado
practica(deby, futbol(2, 15, 5)).
practica(mati, futbol(1, 11, 7)).
% rugby: posición que ocupa, medallas
practica(zaffa, rugby(pilar, 0)).
%medallas obtenidas
medallas(Persona,Medallas):-
    practica(Persona,Deporte),
    cuantasMedallas(Deporte,Medallas).

cuantasMedallas(natacion(_,_,Medallas),Medallas).
cuantasMedallas(futbol(Medallas,_,_),Medallas).
cuantasMedallas(rugby(_,Medallas),Medallas).

buenDeportista(Persona):-
    practica(Persona,Deporte),
    esBueno(Deporte).

esBueno(natacion(Estilos,_,_)):-
    length(Estilos,CantidadEstilos),
    CantidadEstilos > 3.

esBueno(futbol(_,Goles,Expulsiones)):-
    Valor is Goles - Expulsiones,Valor > 5.

esBueno(rugby(pilar,_)).
esBueno(rugby(wing,_)).
