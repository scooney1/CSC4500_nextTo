%% Prolog functors to solve the "Next to" puzzle
%% Use constraints to solve a puzzle

solve([Color,Nat,Pet]) :-
	Color = [_,_,_,_],
	Nat = [_,_,_,_],
	Pet = [_,_,_,_],
	samepos(english,Nat,blue,Color),
	samepos(english,Nat,cat,Pet),
	samepos(frenchman,Nat,dog,Pet),
	samepos(german,Nat,horse,Pet),
	samepos(german,Nat,green,Color),
	samepos(american,Nat,bird,Pet),
	samepos(american,Nat,white,Color),
	Nat = [american|_].

samepos(A,[A|_],B,[B|_]).
samepos(A,[_|T1],B,[_|T2]) :-
	samepos(A,T1,B,T2).
