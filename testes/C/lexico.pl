% Base léxica para análise
% Delimitadores
delimitador('(').
delimitador(')').
delimitador('{').
delimitador('}').
delimitador('[').
delimitador(']').
delimitador(';').
delimitador(',').
delimitador(':').

% Operadores compostos
operador_composto('+=').
operador_composto('-=').
operador_composto('*=').
operador_composto('/=').
operador_composto('&&').
operador_composto('||').
operador_composto('==').
operador_composto('!=').
operador_composto('<=').
operador_composto('>=').

% Operadores simples
operador('+').
operador('-').
operador('*').
operador('/').
operador('%').
operador('=').
operador('<').
operador('>').
operador('!').

% Palavras reservadas
palavra_reservada('main').
palavra_reservada('void').
palavra_reservada('char').
palavra_reservada('int').
palavra_reservada('if').
palavra_reservada('else').
palavra_reservada('while').
palavra_reservada('return').
palavra_reservada('break').
palavra_reservada('true').
palavra_reservada('false').

% Analisador léxico principal
analisa_arquivo(NomeArquivo, Tokens) :-
    % Lê o conteúdo do arquivo como string
    open(NomeArquivo, read, Stream),
    read_string(Stream, _, Conteudo),
    close(Stream),
    % Converte string em lista de caracteres e analisa
    analisa(Conteudo, Tokens).

% Analisa uma string ou lista de caracteres
analisa(Input, Tokens) :-
    (string(Input) -> string_codes(Input, CharList); CharList = Input),
    analisa_charlist(CharList, Tokens).

% Analisa uma lista de caracteres
analisa_charlist([], []).
analisa_charlist([Char|Resto], Tokens) :-
    char_type(Char, space), !, % Ignorar espaços em branco
    analisa_charlist(Resto, Tokens).
analisa_charlist([Char|Resto], [Token|Tokens]) :-
    atom_codes(Delim, [Char]),
    delimitador(Delim), !,
    Token = delimitador(Delim),
    analisa_charlist(Resto, Tokens).
analisa_charlist(Lista, [Token|Tokens]) :-
    pega_composto(Lista, Composto, Resto),
    atom_codes(Operador, Composto),
    (operador_composto(Operador) -> 
        Token = operador_composto(Operador) 
    ; operador(Operador) -> 
        Token = operador(Operador)),
    analisa_charlist(Resto, Tokens).
analisa_charlist([Char|Resto], [Token|Tokens]) :-
    atom_codes(Operador, [Char]),
    operador(Operador), !,
    Token = operador(Operador),
    analisa_charlist(Resto, Tokens).
analisa_charlist(Lista, [Token|Tokens]) :-
    pega_identificador(Lista, Identificador, Resto),
    atom_codes(Ident, Identificador),
    (palavra_reservada(Ident) ->
        Token = palavra_reservada(Ident)
    ;   Token = identificador(Ident)),
    analisa_charlist(Resto, Tokens).
analisa_charlist(Lista, [Token|Tokens]) :-
    pega_numero(Lista, Numero, Resto),
    atom_codes(Num, Numero),
    Token = numero(Num),
    analisa_charlist(Resto, Tokens).

% Função auxiliar para pegar operadores compostos
pega_composto([A,B|Resto], [A,B], Resto) :-
    atom_codes(Operador, [A,B]),
    operador_composto(Operador), !.
pega_composto(Lista, [A], Resto) :-
    [A|Resto] = Lista.

% Função auxiliar para pegar identificadores
pega_identificador([Char|Resto], [Char|IdentificadorResto], RestoFinal) :-
    char_type(Char, alpha), !,
    pega_identificador(Resto, IdentificadorResto, RestoFinal).
pega_identificador([Char|Resto], [Char|IdentificadorResto], RestoFinal) :-
    char_type(Char, digit), !,
    pega_identificador(Resto, IdentificadorResto, RestoFinal).
pega_identificador(Lista, [], Lista).

% Função auxiliar para pegar números
pega_numero([Char|Resto], [Char|NumeroResto], RestoFinal) :-
    char_type(Char, digit), !,
    pega_numero(Resto, NumeroResto, RestoFinal).
pega_numero(Lista, [], Lista).


% saida do analisador lexico do arquivo testes/C/codigo_exemplo.c
% analisa_arquivo('codigo_exemplo.c', Tokens).
% Tokens = [palavra_reservada(int),palavra_reservada(main),delimitador((),palavra_reservada(void),delimitador()),delimitador({),palavra_reservada(int),identificador(x),delimitador(,),identificador(y),delimitador(:),identificador(10),delimitador(;),palavra_reservada(if),delimitador((),identificador(x),operador(>),identificador(y),delimitador()),delimitador({),identificador(x),operador(+),operador(=),identificador(y),delimitador(;),delimitador(}),palavra_reservada(else),delimitador({),identificador(y),operador(-),operador(=),identificador(x),delimitador(;),delimitador(}),palavra_reservada(return),identificador(x),delimitador(;),delimitador(})] 