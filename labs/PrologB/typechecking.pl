% the declared variables
var(a, int).
var(b, double).
var(c, double).
% The program functions
fun(bar, [double, int]).
fun(bar, [string, int]).
fun(add, [int, int, int]).
fun(add, [double, double, double]).
fun(add, [string, string, string]).

check(Function, Candidate):- fun(Function, Candidate), write('CHECK '), write(Function), write(' : '), write(Candidate), write('\n').

% built-in type coersions from first type to second type
builtinCoersion(char, int).
builtinCoersion(int, double).
builtinCoersion(double, string).
% try to coerce first type to second type
coerceTypes(X,Y) :- builtinCoersion(X,Y).
coerceTypes(X,Z) :- builtinCoersion(X,Y), coerceTypes(Y,Z).

coerce(X,Y) :- write('COERCE '), write(X), write(' to '), write(Y), write('?\n'), coerceTypes(X,Y), write('  COERCE succeeded.\n').

% Equiv types T1 and T2 directly
equiv(T1,T2):- write('EQUIV '), write(T1), write(' and '), write(T2), write('?\n'), T1 = T2, write('  EQUIV succeeded.\n').
% Equiv types T1 and T2 via coersion
equiv(T1,T2):- not(T1=T2), write('  EQUIV failed.\n'), coerce(T1,T2).

% Infer the type of a declared variable
infer(X, Type) :- var(X, Type), write('INFER '), write(X), write(' is a(n) '), write(Type), write('\n').
% Infer the return type of a function call on one argument
infer(apply_1(Function, Arg), ReturnType) :- write('-- Typechecking function call\n'), infer(Arg,TypeOfArg), check(Function,TypeOfFunction), TypeOfFunction = [TypeOfParam, FunctionsReturn], equiv(TypeOfArg, TypeOfParam), FunctionsReturn = ReturnType, write('INFER '), write(Function), write(' returns '), write(ReturnType), write('\n').
infer(apply_2(Fun, Arg1, Arg2), T) :- write('-- Typechecking function call\n'), infer(Arg1,TypeOfArg1), infer(Arg2,TypeOfArg2), check(Fun,TypeOfFunction), TypeOfFunction = [TypeOfParam1, TypeOfParam2, FunctionsReturn], equiv(TypeOfArg1, TypeOfParam1), equiv(TypeOfArg2, TypeOfParam2), FunctionsReturn = T, write('INFER '), write(Fun), write(' returns '), write(T), write('\n').

typecheck(assign(Left,Right)) :- infer(Right, RightType), infer(Left, LeftType), equiv(RightType, LeftType), write('TYPECHECK succeeded.\n').

/*
?- typecheck(assign(c,apply_1(bar,apply_2(add,a,b)))).

result:
-- Typechecking function call
-- Typechecking function call
INFER a is a(n) int
INFER b is a(n) double
CHECK add : [int,int,int]
EQUIV int and int?
  EQUIV succeeded.
EQUIV double and int?
  EQUIV failed.
COERCE double to int?
CHECK add : [double,double,double]
EQUIV int and double?
  EQUIV failed.
COERCE int to double?
  COERCE succeeded.
EQUIV double and double?
  EQUIV succeeded.
INFER add returns double
CHECK bar : [double,int]
EQUIV double and double?
  EQUIV succeeded.
INFER bar returns int
INFER c is a(n) double
EQUIV int and double?
  EQUIV failed.
COERCE int to double?
  COERCE succeeded.
TYPECHECK succeeded.
true
*/
