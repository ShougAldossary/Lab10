
% Task 1 - Area and Perimeter
square_area(Side, Area) :-
    Area is Side * Side.
square_perimeter(Side, Perimeter) :-
    Perimeter is 4 * Side.

rectangle_area(Width, Height, Area) :-
    Area is Width * Height.
rectangle_perimeter(Width, Height, Perimeter) :-
    Perimeter is 2 * (Width + Height).

triangle_area(Base, Height, Area) :-
    Area is Base * Height / 2.
triangle_perimeter(A, B, C, Perimeter) :-
    Perimeter is A + B + C.

% Task 2 - Login
user(ahmad, pass1).
user(ali, pass2).
user(sara, pass3).

login :-
    attempt(1).

attempt(N) :-
    N =< 3,
    write('Username: '), read(Username),
    write('Password: '), read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Next is N + 1,
        attempt(Next)
    ).
attempt(N) :-
    N > 3,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

% RUN
% Task 1
% ?- square_area(5, A).               A = 25
% ?- square_perimeter(5, P).          P = 20
% ?- rectangle_area(4, 6, A).         A = 24
% ?- rectangle_perimeter(4, 6, P).    P = 20
% ?- triangle_area(6, 4, A).          A = 12
% ?- triangle_perimeter(3, 4, 5, P).  P = 12
%
% Task 2
% ?- login.
% Username: ali.
% Password: pass2.
% Login Successful
