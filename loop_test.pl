cubo :- write('Próximo item, por favor: '), read(X), calculocubo(X).
calculocubo(stop) :- !. 
calculocubo(N) :- C is (N * N * N), write('Cubo de '), write(N), write(' é '), write(C), nl, cubo.

sentimento(1) :- nl, write('To feliz mas to com fome!'), nl, nl.
sentimento(2) :- nl, write('To feliz mas to morrendo de fome!'), nl, nl.
sentimento(3) :- nl, write('To muito feliz'), nl, nl.
sentimento(4) :- nl, write('Estou inconsolável! :('), nl, nl.
sentimento(5) :- nl, write('Estou muito triste e arrependido! :('), nl, nl.

menuInteracao :- nl, write(' 1 - Carinhar'), nl,
         		     write(' 2 - Passear'), nl,
		             write(' 3 - Alimentar'), nl,
 		             write(' 4 - Ignorar'), nl,
		             write(' 5 - Dar bronca'), nl.


interagir :- shell(clear), menuInteracao, nl, read(I), sentimento(I), resposta.

resposta :- read(I), shell(clear), menuInteracao, sentimento(I), resposta.




:- initialization loop, halt.
loop :-

interagir.

