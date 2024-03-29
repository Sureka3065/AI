% Define facts about individuals with their names and dates of birth
person(john, date(1990, 5, 15)).
person(mary, date(1985, 3, 20)).
person(susan, date(1978, 9, 10)).
person(peter, date(1995, 7, 25)).

% Predicate to find the date of birth (DOB) of a person
date_of_birth(Name, DOB) :-
    person(Name, DOB).

% Predicate to find the name of a person given their DOB
name_by_dob(DOB, Name) :-
    person(Name, DOB).

% Sample queries:
% To find the DOB of a person:
% ?- date_of_birth(john, DOB).
% DOB = date(1990, 5, 15).

% To find the name of a person given their DOB:
% ?- name_by_dob(date(1985, 3, 20), Name).
% Name = mary.
