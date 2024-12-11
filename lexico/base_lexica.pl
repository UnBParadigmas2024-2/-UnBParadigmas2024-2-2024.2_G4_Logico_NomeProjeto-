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

% Símbolos
token(left_paren, '(').
token(right_paren, ')').
token(left_brace, '{').
token(right_brace, '}').
token(semicolon, ';').
token(comma, ',').
token(assign, '=').
token(add_assign, '+=').
token(sub_assign, '-=').
token(mul_assign, '*=').
token(div_assign, '/=').

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

% Operadores aritméticos
token(sumop('+'), '+').
token(sumop('-'), '-').
token(mulop('*'), '*').
token(mulop('/'), '/').
token(mulop('%'), '%').
token(unaryop('-'), '-').