:- consult('lexico/analisador_lexico.pl').
:- consult('sintatico/analisador_sintatico.pl').

% Função principal para processar e exibir tokens
% Para executar o compilador, basta executar swipl -s main.pl -g main -- codigo.cmm
main :-
    current_prolog_flag(argv, Args),
    ( Args = [Filename|_] ->
        writeln('=== Iniciando Analisador Léxico ==='),
        analisa_arquivo(Filename, Tokens),
        writeln('Tokens Gerados:'),
        writeln(Tokens),
        writeln('=== Analise Sintática ==='),
        parser(Tokens),
        writeln('Analise Completa'),
        halt(0)
    ; writeln('Erro: Nenhum arquivo fornecido como argumento.'), halt(1)
    ).

% Analisador léxico principal
analisa_arquivo(NomeArquivo, Tokens) :-
    open(NomeArquivo, read, Stream),
    read_string(Stream, _, Conteudo),
    close(Stream),
    analisa(Conteudo, Tokens).
