% Carregar a base léxica
:- consult('base_lexica.pl').

analisa(Input, Tokens) :-
    (string(Input) -> string_codes(Input, CharList); CharList = Input),
    analisa_charlist(CharList, Tokens).

analisa_charlist([], []).
analisa_charlist([Char|Resto], Tokens) :-
    char_type(Char, space), !, % Ignorar espaços
    analisa_charlist(Resto, Tokens).
analisa_charlist(Lista, [Token|Tokens]) :-
    pega_numero(Lista, Numero, Resto),
    Numero \= [],
    number_codes(Num, Numero),
    Token = numconst(Num),
    analisa_charlist(Resto, Tokens).
analisa_charlist([Char, Next|Resto], [Token|Tokens]) :-
    atom_codes(Operador, [Char, Next]), % Verifica operadores compostos (ex.: <=, >=)
    token(Token, Operador), !,
    analisa_charlist(Resto, Tokens).
analisa_charlist([Char|Resto], [Token|Tokens]) :-
    atom_codes(Simbolo, [Char]),
    token(Token, Simbolo), !,
    analisa_charlist(Resto, Tokens).
analisa_charlist(Lista, [Token|Tokens]) :-
    pega_identificador(Lista, Identificador, Resto),
    atom_codes(Ident, Identificador),
    (token(Token, Ident) -> true; Token = id(Ident)),
    analisa_charlist(Resto, Tokens).

% Função auxiliar para pegar identificadores
pega_identificador([Char|Resto], [Char|IdentificadorResto], RestoFinal) :-
    char_type(Char, alpha), !, % Letras
    pega_identificador(Resto, IdentificadorResto, RestoFinal).
pega_identificador([Char|Resto], [Char|IdentificadorResto], RestoFinal) :-
    char_type(Char, digit), !, % Números dentro de identificadores
    pega_identificador(Resto, IdentificadorResto, RestoFinal).
pega_identificador(Lista, [], Lista).

% Função auxiliar para pegar números
pega_numero([Char|Resto], [Char|NumeroResto], RestoFinal) :-
    char_type(Char, digit), !, % Apenas dígitos
    pega_numero(Resto, NumeroResto, RestoFinal).
pega_numero(Lista, [], Lista).
