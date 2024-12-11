% Carregar a base léxica
:- consult('base_lexica.pl').

% Tokenizar uma lista de caracteres
tokenizar([], []).
tokenizar([H|T], [Token|Tokens]) :-
    atom_chars(H, _),  % Divide o caractere em lista de caracteres
    token(Token, H), !,    % Encontra o token correspondente
    tokenizar(T, Tokens).
tokenizar([H|_], _) :-
    format('Erro: Token desconhecido ~w~n', [H]),
    fail.

% Função para processar o código como uma lista de strings (tokens separados manualmente)
tokenizar_codigo(Codigo, Tokens) :-
    atomics_to_string(Codigo, ' ', CodigoString), % Junta as palavras com espaços
    string_chars(CodigoString, Chars),           % Converte para lista de caracteres
    tokenizar(Chars, Tokens).
