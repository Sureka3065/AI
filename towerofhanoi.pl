move_disk(1,X,Y,_):-
    write('Move top disk from'),
    write(X),
    write('to'),
    write(Y),
    nl.
move_disk(X,Y,Z):-
    N>1,
    M is N-1,
    move_disk(M,X,Z,Y),
    move_disk(1,X,Y,_),
    move_disk(M,Z,Y,X).
towerofhanosi(N):-
    move_disk(N,X,Y,Z).

