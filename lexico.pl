% tokens
token(void, 'void').
token(char, 'char').
token(int, 'int').
token(main, 'main').
token(void, 'void').
token(left_paren, '(').
token(right_paren, ')').
token(left_brace, '{').
token(right_brace, '}').
token(semicolon, ';').
token(comma, ',').
token(colon, ':').
token(assign, '=').
token(add_assign, '+=').
token(sub_assign, '-=').
token(mul_assign, '*=').
token(div_assign, '/=').
token(if, 'if').
token(else, 'else').
token(while, 'while').
token(return, 'return').
token(break, 'break').
token(increment, '++').
token(decrement, '--').
token(or, '||').
token(and, '&&').
token(not, '!').
token(relop('<'), '<').
token(relop('>'), '>').
token(relop('=='), '==').
token(relop('!='), '!=').
token(relop('>='), '>=').
token(relop('<='), '<=').
token(sumop('+'), '+').
token(sumop('-'), '-').
token(mulop('*'), '*').
token(mulop('/'), '/').
token(mulop('%'), '%').
token(unaryop('-'), '-').

% defincao de ids e constantes
token(id(ID), ID) :- atom_chars(ID, [C|_]), char_type(C, alpha).
token(numconst(NUM), NUM) :- number(NUM).
token(charconst(CHAR), CHAR) :- atom_chars(CHAR, ['\'', _ , '\'']).
token(true, 'true').
token(false, 'false').

% Tokenize uma lista de átomos (código de entrada)
tokenize([], []).
tokenize([H|T], [Token|Tokens]) :-
    token(Token, H),
    tokenize(T, Tokens).

% execute: swpl
% tokenize(['int', 'main', '(', ')', '{', 'return', ';', '}'], Tokens).
% roda os testes...deixei um exemplo

% teste:
% usa essa entrada aqui:tokenize(['int', 'main', '(', ')', '{', 'return', ';', '}'], Tokens).
% ele vai retornar isso:  Tokens = [int, main, left_paren, right_paren, left_brace, return, semicolon, right_brace].
