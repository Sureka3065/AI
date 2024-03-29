% Define the valid positions for queens on the chessboard
valid_position(1).
valid_position(2).
valid_position(3).
valid_position(4).

% Define a predicate to check if a queen at position (X1, Y1) can attack another queen at position (X2, Y2)
can_attack((X1, Y1), (X2, Y2)) :-
    X1 =\= X2,                     % Queens are not in the same row
    Y1 =\= Y2,                     % Queens are not in the same column
    abs(X1 - X2) =\= abs(Y1 - Y2). % Queens are not on the same diagonal

% Define a predicate to check if a list of queens does not have any pair that can attack each other
no_attack([]).
no_attack([(X1, Y1) | Queens]) :-
    \+ (member((X2, Y2), Queens), can_attack((X1, Y1), (X2, Y2))),
    no_attack(Queens).

% Define a predicate to generate a list of valid positions for queens
generate_queen_positions([], _).
generate_queen_positions([(X, Y) | Queens], N) :-
    valid_position(X),
    valid_position(Y),
    generate_queen_positions(Queens, N),
    length(Queens, Length),
    Length < N,
    \+ member((X, Y), Queens),
    no_attack([(X, Y) | Queens]).

% Define a predicate to solve the N-queens problem
n_queens(N, Queens) :-
    length(Queens, N),
    generate_queen_positions(Queens, N).

% Query to find a solution for the 4-queens problem
%?- n_queens(4, Queens), write(Queens).
