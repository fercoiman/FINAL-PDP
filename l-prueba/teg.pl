% Se cumple para los jugadores.
jugador(Jugador)
% Ejemplo:
% jugador(rojo).

% Relaciona un país con el continente en el que está ubicado,
ubicadoEn(Pais, Continente)
% Ejemplo:
% ubicadoEn(argentina, américaDelSur).

% Relaciona dos jugadores si son aliados.
aliados(UnJugador, OtroJugador)
% Ejemplo:
% aliados(rojo, amarillo).

% Relaciona un jugador con un país en el que tiene ejércitos.
ocupa(Jugador, País)
% Ejemplo:
% ocupa(rojo, argentina).

% Relaciona dos países si son limítrofes.
limítrofes(UnPaís, OtroPaís)
% Ejemplo:
% limítrofes(argentina, brasil).

tienePresenciaEn(Jugador,Continente):-
    