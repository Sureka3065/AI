% Facts about birds and whether they can fly
bird(robin, true).
bird(eagle, true).
bird(penguin, false).
bird(ostrich, false).
bird(sparrow, true).

% Query to check if a bird can fly
can_fly(Bird) :-
    bird(Bird, true),
    write(Bird),
    write(' can fly.'),
    nl.

can_fly(Bird) :-
    bird(Bird, false),
    write(Bird),
    write(' cannot fly.'),
    nl.
