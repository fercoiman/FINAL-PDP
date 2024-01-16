/* dado el predicado come/2 que relaciona un animal con otro al cual se come
come(leon,ciervo).
modelar 
1. hostil/2 relaciona animal con bioma si todos los animales que lo habitan se lo comen
2. terrible/2 relaciona animal con bioma si todos los animales que se lo comen habitan en ese bioma
3. compatibles/2 relaciona dos animales si ninguno se come al otro.
4. adaptable/1 se cumple para los animales que habitan todos los biomas
5. raro/1 se cumple para los animales que habitan un solo bioma
6. dominante/1 se cumple para los animales que se comen a todos los animales del bioma en que viven

*/
habitat(Animal,Bioma).
animal(Animal).
come(Comedor,Comido).

hostil(Animal,Bioma):-
    animal(Animal),
    habitat(_,Bioma),
    forall(habitat(Comedor,Bioma),come(Comedor,Animal)).

terrible(Animal,Bioma):-
    animal(Animal),
    habitat(_,Bioma),
    forall( come(Comedor,Animal), habitat(Comedor,Bioma)).

compatibles(UnAnimal,OtroAnimal):-
    animal(UnAnimal),
    animal(OtroAnimal),
    not(come(UnAnimal,OtroAnimal)),
    not(come(OtroAnimal,UnAnimal)).

adaptable(Animal):-
    animal(Animal),
    forall(habitat(_,Bioma),habitat(Animal,Bioma)).

raro(Animal):-
    habitat(Animal,Bioma),
    not((habitat(Animal,OtroBioma), Bioma \= OtroBioma)).
    
dominante(Animal):-
    habitat(Animal,Bioma),
    forall((habitat(OtroAnimal,Bioma),OtroAnimal \= Animal),come(Animal,OtroAnimal)).
