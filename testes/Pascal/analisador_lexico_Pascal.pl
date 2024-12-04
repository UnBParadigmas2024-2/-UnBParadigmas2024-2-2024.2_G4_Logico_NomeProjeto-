% Identifica o tipo de um token
% regra identificar_token/2
% ===================================
identificar_token(Token, palavra_reservada) :- palavra_reservada(Token).
identificar_token(Token, operador) :- operador(Token).
identificar_token(Token, operador_composto) :- operador_composto(Token).
identificar_token(Token, delimitador) :- delimitador(Token).
identificar_token(Token, numero) :- number(Token). % Para números
identificar_token(Token, identificador) :- atom(Token), \+ palavra_reservada(Token).
    % Verifica se o Token é um identificador.
    % Deve ser um átomo que NÃO é uma palavra reservada.
identificar_token('none', espaco) :- espaco(' ').

% Tokenização do código em Pascal
tokenizar([], []). % Caso base: lista vazia
tokenizar([C|Resto], Tokens) :- 
    processar_caractere(C, Resto, Token, RestoAtualizado),
    (Token = none ->
        % Ignorar tokens do tipo 'none' (espaços em branco)
        tokenizar(RestoAtualizado, Tokens);
    % Adiciona token válido
    Tokens = [Token|OutrosTokens],
    tokenizar(RestoAtualizado, OutrosTokens)).

% Processa cada caractere e identifica o tipo de token
processar_caractere(C, Resto, Token, RestoAtualizado) :-
    (char_type(C, space) ->
        % Ignorar espaços em branco, tabulações e quebras de linha
        RestoAtualizado = Resto, % Avança sem modificar a lista
        Token = none; % Nenhum token gerado
    letra(C) ->
        % Extrai identificadores
        extrair_identificador([C|Resto], Identificador, RestoAtualizado),
        (palavra_reservada(Identificador) -> Token = palavra_reservada(Identificador);
        Token = identificador(Identificador));
    digito(C) ->
        % Extrai números
        extrair_numero([C|Resto], Numero, RestoAtualizado),
        Token = numero(Numero);
    delimitador(C) ->
        % Identifica delimitadores
        Token = delimitador(C),
        RestoAtualizado = Resto;
    operador(C) ->
        % Identifica operadores simples
        Token = operador(C),
        RestoAtualizado = Resto;
    append([C], Resto, [C, P | Resto]),
    atom_concat(C, P, Op),
    operador_composto(Op) ->
        % Identifica operadores compostos
        Token = operador_composto(Op),
        RestoAtualizado = Resto;
    % Caso padrão: caractere desconhecido
    Token = unknown(C),
    RestoAtualizado = Resto).


% Extrai identificadores compostos por letras e dígitos
extrair_identificador([C|Resto], [C|Identificador], RestoAtualizado) :-
    letra_ou_digito(C),
    extrair_identificador(Resto, Identificador, RestoAtualizado).
extrair_identificador(Resto, [], Resto). % Termina quando não há mais letras ou dígitos


% Extrai números (sequências de dígitos)
extrair_numero([C|Resto], [C|Numero], RestoAtualizado) :-
    digito(C),
    extrair_numero(Resto, Numero, RestoAtualizado).
extrair_numero(Resto, [], Resto). % Termina quando não há mais dígitos

