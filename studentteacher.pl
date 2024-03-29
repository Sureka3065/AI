% Facts: student, teacher, subject, and student's code
student(john).
student(mary).
student(alex).

teacher(mr_smith).
teacher(ms_jones).
subject(math).
subject(history).

code(john, math, 101).
code(john, history, 102).
code(mary, math, 103).
code(alex, history, 104).

% Rule: relationship between student, teacher, subject, and code
teaches(mr_smith, math).
teaches(ms_jones, history).

% Rules to determine if a teacher teaches a subject and if a student is assigned a code for a subject
teaches_subject(Teacher, Subject) :- teaches(Teacher, Subject).
assigned_code(Student, Subject, Code) :- code(Student, Subject, Code).

% Example query: Who teaches math?
% ?- teaches_subject(Teacher, math).
% Output will be the teacher who teaches math.
