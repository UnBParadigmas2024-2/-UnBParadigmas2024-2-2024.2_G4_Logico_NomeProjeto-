:- consult('lexico/analisador_lexico.pl').
:- consult('sintatico/analisador_sintatico.pl').

% Função principal para processar e exibir tokens
% Para executar o compilador, basta executar swipl -s main.pl -g main -- codigo.cmm
main :-
    current_prolog_flag(argv, Args),
    ( Args = [Filename|_] ->
        writeln(''),
        writeln('===== Iniciando Analisador Léxico ====='),
        ( analisa_arquivo(Filename, Tokens)
            ->  writeln('======================================='),
                writeln('Análise léxica concluída com sucesso')
            ;   writeln('======================================='),
                writeln('Encontrado erro léxico'),
                writeln('======================================='),
                halt(1)),
        writeln('======================================='),
        writeln('Tokens Gerados:'),
        writeln(Tokens),
        writeln(''),
        writeln('=== Iniciando Analisador Sintático ===='),
        writeln('======================================='),
        ( parser(Tokens)
            ->  writeln('\n======================================='),
                writeln('Análise sintática concluída com sucesso')
            ;   writeln('======================================='),
                writeln('Encontrado erro de sintaxe'),
                writeln('======================================='),
                halt(1)),
        writeln('======================================='),
        writeln('Analise Completa - Código aceito'),
        writeln('=======================================\n'),
        halt(0)
    ;   writeln('======================================='),
        writeln('Erro: Nenhum arquivo fornecido como argumento'),
        writeln('=======================================\n'),
        halt(1)
    ).

% Analisador léxico principal
analisa_arquivo(NomeArquivo, Tokens) :-
    open(NomeArquivo, read, Stream),
    read_string(Stream, _, Conteudo),
    close(Stream),
    analisa(Conteudo, Tokens).
