:- consult('lexico/analisador_lexico.pl').
:- consult('sintatico/analisador_sintatico.pl').

% Função principal para processar e exibir tokens
% Para executar o compilador, basta executar swipl -s main.pl -g main -- codigo.cmm
main :-
    current_prolog_flag(argv, Args),
    ( Args = [Filename|_] ->
        writeln('=== Iniciando Analisador Léxico ==='),
        writeln('Lendo código do arquivo...'),
        read_file(Filename, Codigo),
        writeln('Código para análise:'),
        writeln(Codigo),
        writeln('Tokenizando...'),
        tokenizar(Codigo, Tokens),
        writeln('Tokens Gerados:'),
        writeln(Tokens),
        writeln('=== Analise Sintática ==='),
        parser(Tokens)
    ; writeln('Erro: Nenhum arquivo fornecido como argumento.'), halt(1)
    ).

% Função para ler o conteúdo do arquivo e convertê-lo em uma lista de palavras
read_file(Filename, Codigo) :-
    open(Filename, read, Stream),
    read_string(Stream, _, String),
    close(Stream),
    split_string(String, " \t\n", " \t\n", Words),
    maplist(atom_string, Codigo, Words).
