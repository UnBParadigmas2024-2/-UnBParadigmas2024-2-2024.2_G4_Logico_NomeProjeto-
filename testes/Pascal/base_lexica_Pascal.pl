% Base de Dados - Palavras Reservadas
% predicado palavra_reservada/1
% cada palavra reservada eh um fato
% ===================================
palavra_reservada("and").
palavra_reservada("array").
palavra_reservada("begin").
palavra_reservada("div").
palavra_reservada("do").
palavra_reservada("else").
palavra_reservada("end").
palavra_reservada("function").
palavra_reservada("goto").
palavra_reservada("if").
palavra_reservada("label").
palavra_reservada("not").
palavra_reservada("of").
palavra_reservada("or").
palavra_reservada("procedure").
palavra_reservada("program").
palavra_reservada("then").
palavra_reservada("type").
palavra_reservada("var").
palavra_reservada("while").
palavra_reservada("read").
palavra_reservada("write").

% Operadores Simples
% predicado operador/1
% cada operador eh um fato
% ===================================
operador('+').
operador('-').
operador('*').
operador('/').
operador('<').
operador('>').
operador('=').

% Operadores Compostos
% predicado operador_composto/1
% cada operador composto eh um fato
% ===================================
operador_composto(':=').
operador_composto('<=').
operador_composto('>=').
operador_composto('<>').

% Delimitadores
% predicado delimitador/1
% cada delimitador eh um fato
% ===================================
delimitador('(').
delimitador(')').
delimitador('[').
delimitador(']').
delimitador(';').
delimitador(':').
delimitador(',').
delimitador('.').

% Caracteres válidos
% ===================================
letra(Char) :- char_type(Char, alpha).
digito(Char) :- char_type(Char, digit).
letra_ou_digito(Char) :- letra(Char); digito(Char).

% Espaço em branco como token especial
espaco(' '). % Tratamento explícito para o espaço