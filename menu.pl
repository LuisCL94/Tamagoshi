raca(1) :- write('tamanduá.'), nl.
raca(2) :- write('tucano.'), nl.
raca(3) :- write('lobo-guara.'), nl.
raca(4) :- write('gato.'), nl. 
raca(5) :- write('cachorro.'), nl.
raca(6) :- write('papagaio.'), nl.
raca(7) :- write('frango.'), nl.
raca(8) :- write('jabuti.'), nl.
raca(9) :- write('tatu.'), nl.

raca_seler :- X is random(10), raca(X), nl.

clear :- write('\33\[2J').

opt(1) :- nl, write('Tamagotchi tá nascendoo...'), nl, nl, sleep(2), write('Parabéns! Vc acaba de ter um '),raca_seler, nl.

opt(2) :- nl, write('Tamagotchi se foi...'), nl.

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

    write('1 - Ativar'), nl,
    write('2 -  Sair'), nl, nl.

:- initialization main, halt.

main :-
    clear, menu, run.