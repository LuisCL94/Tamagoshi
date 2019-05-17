raca(1) :- write('tamanduá-bandeira'), nl.
raca(2) :- write('tucano'), nl.
raca(3) :- write('lobo-guara'), nl.
raca(4) :- write('jaguatirica'),nl.

especie(1) :- 'tamanduá-bandeira', nl.
especie(2) :- 'tucano', nl.
especie(3) :- 'lobo-guara', nl.
especie(4) :- 'jaguatirica',nl.

print_raca(X):- X = raca(X), write(X).

nb_setval(nome, '').
nb_setval(tipo, 0).
%nb_getval(get,C).

sobre(1):- write('Tipo: 1. O Tamanduá-Bandeira é um mamífero nativo da América. Ele recebe esse nome uma vez que sua cauda tem forma de uma bandeira.'),nl,
            write('São animais solitários quando atingem a idade adulta. Não são ágeis, nem agressivos.'),nl,
            write('Alimentam-se principalmente de pequenos insetos, por exemplo, formigas, cupins, larvas, centopeias, vermes.'),nl,
            write('Podem andar  e nadar'),nl.

sobre(2):- write('Tipo: 2. Tucano é uma ave linda, muito colorida e o que chama mais atenção é o bico enorme.'),nl,
            write('O tucano tem cores muito vivas que chamam a atenção das fêmeas. Mas, você acha que o bico dele é pesado? '),nl,
            write('O tucano é bom de bico... Ele se alimenta de muitas coisas, podem ser frutinhas e sementes, insetos, ovos de outras aves, lagartixas e pererecas. '),nl,
            write('Podem voar'),nl.


sobre(3):- write('Tipo: 3. O lobo-guará é um mamífero que está ameaçado em extinção.'), nl,
            write('Diferentemente de outras espécies de lobo que vivem em matilha, o lobo-guará é um animal de hábito solitário'),nl,
            write('O lobo-guará é um animal onívoro, pois consome uma grande variedade de animais e frutos. '),nl,
            write('Ele se alimenta de pequenos mamíferos, como gambás e roedores, além de aves, lagartos, cobras e insetos.'),
            write('Podem caminhar e correr.')
            ,nl.
sobre(4) :- write('Tipo: 4  . A Jaguatirica pertence à família dos felinos, seu nome científico é Leopardus pardalis. Como a maioria dos felinos, possui hábitos noturnos para se deslocar e caçar e dorme durante o dia, porém é comum vê-la em atividade durante o dia. É solitária e territorialista, demarcando seu território com urina e fezes.'),nl,
            write(' Possuem a habilidade para escalar árvores e já foram vistas nadando em busca de peixes para se alimentar. Além disso, consomem pequenos mamíferos, ovos de tartarugas, répteis, roedores e aves.'),nl.



alimento(1,formigas).
alimento(1,cupins).
alimento(1,centopeias).
alimento(1,vermes).


alimento(2,sementes).
alimento(2,frutinhas).
alimento(2,ovos).
alimento(2,insetos).
alimento(2,pererecas).

alimento(3,gamba).
alimento(3,roedor).
alimento(3,ave).
alimento(3,lagarto).
alimento(3,cobra).
alimento(3,inseto).

alimento(4,rato).
alimento(4,gamba).
alimento(4,roedor).
alimento(4,peixe).
alimento(4,ovos).
alimento(4,cobra).


alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

carinho(1,sim).
carinho(2,sim).
carinho(3,nao).
carinho(4,nao).

passeio(1,sim).
passeio(2,nao).
passeio(3,nao).
passeio(4,nao).

bronca(1,nao).
bronca(2,sim).
bronca(3,nao).
bronca(4,nao).

ignora(1,nao).
ignora(2,sim).
ignora(3,nao).
ignora(4,sim).

sentimento(1,A) :-  carinho(A,sim),nl, write('To feliz mas to com fome!'),nl,nl; write('não é bom tentar fazer carinho'), nl, nl.
sentimento(2,A) :-  passeio(A,sim),nl, write('To feliz mas to morrendo de fome!'),nl,nl;  write('ele não gostaria de sair '),nl,nl.
sentimento(3,A) :-  nl,write('Qual o alimento'),nl,read(B),alimento(A,B),nl, write('To muito feliz'), nl, nl;write('não é recomendado alimentar com isso'),nl,nl.
sentimento(4,A) :-  nl,ignora(A,sim), write('Estou inconsolável! :('),nl,nl; write('você não gostaria de receber uma também, né'),nl,nl.
sentimento(5,A) :-  nl,bronca(A,sim),  write('Estou muito triste e arrependido! :('),nl,nl; write('ele pode reagir de forma ríspida'),nl,nl.
sentimento(0,A) :-  nl,write('Tamagotchi se foi...'), nl, nl,halt.


menuInteracao :-  nl, write(' 1 - Carinhar'), nl,
 		      write(' 2 - Passear'), nl,
		      write(' 3 - Alimentar'), nl,
 		      write(' 4 - Ignorar'), nl,
		      write(' 5 - Dar bronca'), nl,
              write(' 0 - Sair'), nl.

interagir(X, Y) :- write('Seu pet se chama '), write(X), write('. Interaja com ele...'), A=Y, menuInteracao, nl, read(I), sentimento(I,A), V=X, resposta(Y, V).

resposta(Y, V) :-  read(I), shell(clear), write('Seu pet é um '), raca(Y), nl, sobre(Y), nl,write('---'),nl,write('---'),nl,nl, write('Seu pet se chama '), write(V), write('. Interaja com ele...'), nl, menuInteracao, sentimento(I,A), resposta(Y, V).

opt(1) :- nl, write('Tamagotchi tá nascendoo...'), nl, nl, sleep(1), X is random(4) + 1 ,  shell(clear), write('Seu pet é um '), raca(X), nl, sobre(X), nl,write('Dê um nome ao seu pet... '),nl,read(N), nl, interagir(N, X), resposta, nb_setval(nome, N), nb_setval(tipo,especie(X)), nl.

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
    write('0 -  Sair'), nl, nl, read(Op),nl,nl,write('você escolheu :' ),write(Op),nl,

    opt(Op),nl,sleep(3)

    .

:- initialization main, halt.

main :-

    shell(clear), menu, run.   
