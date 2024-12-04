:- consult('base_lexica_Pascal.pl').
:- consult('analisador_lexico_Pascal.pl').


% Função principal para ler, processar e salvar tokens
analisar_arquivo_com_saida(ArquivoEntrada, ArquivoSaida) :-
    writeln('Lendo arquivo...'),
    read_file_to_string(ArquivoEntrada, Codigo, []),
    atom_chars(Codigo, Chars),
    writeln('Tokenizando código...'),
    tokenizar(Chars, Tokens),
    writeln('Tokens Gerados:'),
    writeln(Tokens).
%    classificar_tokens(Tokens, TokensClassificados),
%    writeln('Tokens Classificados:'),
%    writeln(TokensClassificados),
%    escrever_tokens(ArquivoSaida, TokensClassificados),
%    writeln('Tokens processados e salvos com sucesso.').

% Classifica cada token com seu tipo
% classificar_tokens([], []).
% classificar_tokens([Token|Resto], [(Token, Tipo)|OutrosTokens]) :-
%    identificar_token(Token, Tipo),
%    classificar_tokens(Resto, OutrosTokens).

% Escreve os tokens com seus tipos em um arquivo de saída
% escrever_tokens(ArquivoSaida, TokensClassificados) :-
%    open(ArquivoSaida, write, Stream),
%    escrever_lista(Stream, TokensClassificados),
%    close(Stream).

% Auxiliar para escrever cada linha no arquivo
% escrever_lista(_, []).
% escrever_lista(Stream, [(Token, Tipo)|Resto]) :-
%    format(Stream, '~w: ~w~n', [Tipo, Token]),
%    escrever_lista(Stream, Resto).
