hanoi(1, Source, _, Dest) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Dest), nl.

hanoi(N, Source, Aux, Dest) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Dest, Aux),
    write('Move disk '), write(N), write(' from '), write(Source),
    write(' to '), write(Dest), nl,
    hanoi(M, Aux, Source, Dest).
