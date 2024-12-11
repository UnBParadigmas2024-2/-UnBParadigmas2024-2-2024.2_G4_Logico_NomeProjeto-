% Palavras-chave
token(void, 'void').
token(char, 'char').
token(int, 'int').
token(main, 'main').
token(if, 'if').
token(else, 'else').
token(while, 'while').
token(return, 'return').
token(break, 'break').
token(true, 'true').
token(false, 'false').
token(switch, 'switch').
token(case, 'case').
token(do, 'do').
token(for, 'for').
token(sizeof, 'sizeof').
token(struct, 'struct').


% Símbolos
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
token(increment, '++').
token(decrement, '--').

% Operadores lógicos e relacionais
token(or, '||').
token(and, '&&').
token(not, '!').
token(relop('<'), '<').
token(relop('>'), '>').
token(relop('=='), '==').
token(relop('!='), '!=').
token(relop('>='), '>=').
token(relop('<='), '<=').
token(comment_single, '//').
token(comment_multi_start, '/*').
token(comment_multi_end, '*/').

% Operadores aritméticos
token(sumop('+'), '+').
token(sumop('-'), '-').
token(mulop('*'), '*').
token(mulop('/'), '/').
token(mulop('%'), '%').
token(unaryop('-'), '-').

% Identificadores e constantes
token(id(ID), ID) :- atom_chars(ID, [C|_]), char_type(C, alpha).
token(numconst(NUM), NUM) :- atom_number(NUM, _).
token(charconst(CHAR), CHAR) :- atom_chars(CHAR, ['\'', _, '\'']).
