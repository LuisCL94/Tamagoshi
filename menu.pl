raca(1) :- write('tamanduá-bandeira'), nl.
raca(2) :- write('tucano'), nl.
raca(3) :- write('lobo-guara'), nl.

especie(1) :- 'tamanduá-bandeira', nl.
especie(2) :- 'tucano', nl.
especie(3) :- 'lobo-guara', nl.



print_raca(X):- X = raca(X),write(X).

nb_setval(nome, '').
nb_setval(tipo, 0).
%nb_getval(get,C).

sobre(1):- write('O Tamanduá-Bandeira é um mamífero nativo da América. Ele recebe esse nome uma vez que sua cauda tem forma de uma bandeira.'),nl,
            write('São animais solitários quando atingem a idade adulta. Não são ágeis, nem agressivos.'),nl,
            write('Alimentam-se principalmente de pequenos insetos, por exemplo, formigas, cupins, larvas, centopeias, vermes.'),nl,
            write('Podem andar  e nadar'),nl.

sobre(2):- write('Tucano é uma ave linda, muito colorida e o que chama mais atenção é o bico enorme.'),nl,
            write('O tucano tem cores muito vivas que chamam a atenção das fêmeas. Mas, você acha que o bico dele é pesado? '),nl,
            write('O tucano é bom de bico... Ele gosta de muitas coisas, podem ser frutinhas e sementes, insetos, ovos de outras aves, lagartixas e pererecas. '),nl,
            write('Podem voar'),nl.


sobre(3):- write('O lobo-guará é um mamífero que está ameaçado em extinção.'),nl,
            write('Diferentemente de outras espécies de lobo que vivem em matilha, o lobo-guará é um animal de hábito solitário'),nl,
            write('O lobo-guará é um animal onívoro, pois consome uma grande variedade de animais e frutos. '),nl,
            write('Ele se alimenta de pequenos mamíferos, como gambás e roedores, além de aves, lagartos, cobras e insetos.'),
            write('Podem caminhar e correr.')
            ,nl.


alimento(1,formigas).
alimento(1,cupins).
alimento(1,centopeias).
alimento(1,vermes).
alimento(2,sementes).
 
alimento(2,frutinhas).
alimento(2,ovos).
alimento(2,insetos).

alimento(3,gambas).
alimento(3,roedores).
alimento(3,aves).
alimento(3,lagartos).
alimento(3,cobra).
alimento(3,insetos).
alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

carinho(1,sim).
carinho(2,sim).
carinho(3, no).

passeio(1,sim).
passeio(2,sim).
passeio(3,no).
passear(Pode, X, Lista):- findall(Pode, passeio(X,Pode),Lista).

interagir(X) :- write('Agora seu pet se chama '), write(X), write('. Como vc deseja interagir com ele?'), nl, nl.

opt(1) :- nl, write('Tamagotchi tá nascendoo...'), nl, nl, sleep(2), X is random(3) + 1 ,  shell(clear), write('Seu pet é um '), raca(X), nl,  sobre(X), nl,write('Dê um nome ao seu pet... '),nl,read(N), nl, interagir(N) ,nb_setval(nome, N), nb_setval(tipo,especie(X)), nl.

opt(2) :-   nl, sobre(2),nl.
opt(3) :-   nl, sobre(2),nl.
opt(4) :-   nl, sobre(2),nl.
opt(5) :-   nl, sobre(2),nl.
opt(6) :-   nl, sobre(2),nl.
opt(0) :- nl, write('Tamagotchi se foi...'), nl, nl,halt.

run :- read(X), opt(X).

menu :-
    write(' _____                                 _       _     _' ), nl,
    write('|_   _|_ _ _ __ ___   __ _  __ _  ___ | |_ ___| |__ (_)'), nl,
    write('  | |/ _` | \'_ ` _ \\ / _` |/ _` |/ _ \\| __/ __| \'_ \\| |'), nl,
    write('  | | (_| | | | | | | (_| | (_| | (_) | || (__| | | | |'), nl,
    write('  |_|\\__,_|_| |_| |_|\\__,_|\\__, |\\___/ \\__\\___|_| |_|_|'), nl,
    write('                           |___/'                       ), nl,
    write(' ____                                '), nl,
    write('| __ ) _ __ __ _ _____   _  ___ __ _ '), nl,
    write('|  _ \\| \'__/ _` |_  / | | |/ __/ _` |'), nl,
    write('| |_) | | | (_| |/ /| |_| | (_| (_| |'), nl,
    write('|____/|_|  \\__,_/___|\\__,_|\\___\\__,_|'), nl, nl,

    write('1 - Começar'), nl,
    write('2 - Sobre seu pet'),nl,
    write('3 - Carinho'),nl,
    write('5 - Passeio'),nl,
    write('6 - Alimentar'),nl,
    write('0 -  Sair'), nl, nl, read(Op),nl,nl,write('você escolheu :' ),write(Op),nl,

    opt(Op),nl,sleep(3)

    .

:- initialization main, halt.

main :-

    shell(clear), menu, run.   
