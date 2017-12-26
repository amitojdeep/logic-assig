simplify :- nl,write('Enter an algebraic expression, or "exit" '),read(Ex),ctrl( Ex).
ctrl( exit ) :- !.
ctrl( Ex ) :- sim( Ex , Res ), nl,write('Simplification is  '),write(Res),simplify.   
compare:-nl, write('Enter first expression, or "exit" '), read(Ex1), ctrl1( Ex1 ).
ctrl1( exit ) :- !.
ctrl1( Ex1 ) :-  nl, write('Enter second algebraic expression'), read(Ex2), sim(Ex1, Res1), sim(Ex2, Res2), check(Res1, Res2).   
check(Res1, Res2):-	Res1 == Res2->(write("Both expressions are equal"),compare);	(write("Exressions are unequal"),compare).
rational:-nl, write('Enter a rational number, or "exit" '),read(Ex),ctrl2( Ex ).
ctrl2( exit ):- !.
ctrl2( Ex ):- rat(Ex,Res), write('Rational number in normal form is  '),write(Res), nl,rational.   
/*GCD Calculator*/
gcd(A,B,G):- A==B,G is A.
gcd(A,B,G):- A>B, AB is A-B, gcd(AB,B,G).
gcd(A,B,G):- A<B, BA is B-A, gcd(A,BA,G).
/*Grammar for algebraic simplification*/
sim( S, S ):- atomic(S).   
sim( S*0, 0 ).
sim( 0*S, 0 ).
sim( 0/S, 0 ).
sim( S*1, S ).
sim( 1*S, S ).
sim( S/1, S ).
sim( S/S, 1 ):-!.
sim( S+0, T ):-sim( S, T ).
sim( 0+S, T ):- sim( S, T ).
sim( S-0, T ):- sim( S, T ).
sim( 0-S, -(T) ):- sim( S, T ).
sim( A*B, S ) :-  num( A ), num( B ),S is A*B.   
sim( A+B, C ):- num(A), num(B), C is A+B.
sim( A-A, 0 ).
sim( A-B, C ):- num(A), num(B), C is A-B.   
sim( A*S+B*S, Z ):- A\=S, B\=S, sim( (A+B)*S, Z ).
sim( A/B, S ) :- num( A ),num( B ),R = A/B, rat(R, S).   
sim(A*S+A*T, W):- num(A), sim(A*(S+T),W).   
sim( W+S, Q ):-  sim( W, T ),  sim( S, Z ), ( W \== T ; S \== Z ),sim( T+Z, Q ).
sim( W-S, Q ):- sim( W, T ), sim( S, Z ),( W \== T ; S \== Z ), sim( T-Z, Q ).
sim( W*S, Q ):- sim( W, T ), sim( S, Z ), ( W \== T  ; S \== Z ), sim( T*Z, Q ).   
sim( A/B, C ) :- sim( A, S ), sim( B, T ), ( A \== S ; B \== T ), sim( S/T, C ).   
sim( S, S ).
num(A) :- integer(A).
/*Grammar for simplification of rational numbers*/
rat(M1/N1,M2/N2):- gcd(M1,N1,G),num(M1),num(N1),M2 is M1/G, N2 is N1/G,!.
rat(M1/N1 + M2/N1, Q):-num(M1),num(N1),num(M2),M3 is M1+M2,rat(M3/N1,Q).
rat(M1/N1 - M2/N1, Q):-num(M1),num(N1),num(M2),M3 is M1-M2,rat(M3/N1,Q).
rat((M1/N1) * (M2/N2), Q):-num(M1),num(N1),num(M2),num(N2),M3 is M1*M2,N3 is N1*N2,rat(M3/N3,Q).
rat(M1/1,M1):-!





