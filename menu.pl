raca(1) :- write('tamanduá-bandeira').
raca(2) :- write('tucano').
raca(3) :- write('lobo-guara').

especie(1) :- 'tamanduá-bandeira'.
especie(2) :- 'tucano'.
especie(3) :- 'lobo-guara'.



print_raca(X):- X = raca(X),write(X).


:- dynamic tamagotchi/2.

tamagotchi(nome, especie).

:- dynamic nroSobre/0,nome/0, tipo/0.
roSobre.
Nome.
Tipo.


sobre(1):- write('O Tamanduá-Bandeira é um mamífero nativo da América. Ele recebe esse nome uma vez que sua cauda tem forma de uma bandeira.'),nl,
            write('São animais solitários quando atingem a idade adulta. Não são ágeis, nem agressivos.'),nl,
            write('Alimentam-se principalmente de pequenos insetos, por exemplo, formigas, cupins, larvas, centopeias, vermes.'),nl,
            write('Podem andar  e nadar'),nl.

sobre(2):- write('Tucano é uma ave linda, muito colorida e o que chama mais atenção é o bico enorme.'),nl,
            write(' O tucano tem cores muito vivas que chamam a atenção das fêmeas. Mas, você acha que o bico dele é pesado? '),nl,
            write('O tucano é bom de bico... Ele gosta de muitas coisas, podem ser frutinhas e sementes, insetos, ovos de outras aves, lagartixas e pererecas. '),nl,
            write('Podem voar'),nl.


sobre(3):- write('O lobo-guará é um mamífero que está ameaçado em extinção.'),nl,
            write('Diferentemente de outras espécies de lobo que vivem em matilha, o lobo-guará é um animal de hábito solitário'),nl,
            write('O lobo-guará é um animal onívoro, pois consome uma grande variedade de animais e frutos. '),nl,
            write('Ele se alimenta de pequenos mamíferos, como gambás e roedores, além de aves, lagartos, cobras e insetos.'),
            write('Podem caminhar e correr.')
            ,nl.


alimento(1) :- [formigas,cupins, centopeias,vermes].
alimento(2) :- [frutinhas,sementes, ovos,insetos].
alimento(3) :- [gambas,roedores, aves,lagartos,cobra,insetos].

carinho(1) :- sim.
carinho(2) :- sim.
carinho(3) :- no.

passeio(1):- sim.
passeio(2):- sim.
passeio(3):- no.

raca_seler :- X is random(3) + 1 ,  write('Seu pet é um '),raca(X),nl,write('Qual o nome do seu pet '),nl,read(N),Nome is N, Tipo is X, nl.

clear :- write('\33\[2J').  

opt(1) :- nl, write('Tamagotchi tá nascendoo...'), nl, nl, sleep(1), raca_seler,write('Parabéns! Vc acaba de ter um '), nl.
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

    opt(Op),nl,sleep(3), menu

    .

:- initialization main, halt.

main :-

    clear, menu, run.   
