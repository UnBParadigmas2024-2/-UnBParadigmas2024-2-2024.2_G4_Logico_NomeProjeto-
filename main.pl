:- consult('lexico/analisador_lexico.pl').
:- consult('sintatico/analisador_sintatico.pl').

% Função principal para processar e exibir tokens
% Para executar o compilador, basta executar swipl -s main.pl -g main -- codigo.cmm
main :-
    current_prolog_flag(argv, Args),
    ( Args = [Filename|_] ->
        writeln('=== g-- Versão 1.0.0 | 13 de dezembro de 2024 ===\n'),
        writeln('===== Iniciando Analisador Léxico ====='),
        ( analisa_arquivo(Filename, Tokens)
            ->  writeln('======================================='),
                writeln('\033[32mAnálise léxica concluída com sucesso!\033[0m')
            ;   writeln('======================================='),
                writeln('\033[31mEncontrado erro léxico.\033[0m'),
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
                writeln('\033[32mAnálise sintática concluída com sucesso!\033[0m')
            ;   writeln('======================================='),
                writeln('\033[31mEncontrado erro de sintaxe.\033[0m'),
                writeln('======================================='),
                halt(1)),
        writeln('======================================='),
        writeln('\033[32mAnálise Completa - Código aceito!\033[0m'),
        writeln('=======================================\n'),
        halt(0)
    ;   writeln('=== g-- Versão 1.0.0 | 13 de dezembro de 2024 ==='),
        writeln('Autores: Bruno Ribeiro, Bruno Martins, Heitor Marques,'), 
        writeln('Igor Penha, José Luís Teixeira, Leonardo Machado, Lucas Soares,'), 
        writeln('Marcos de Deus, Raquel Eucária e Zenilda Vieira'),
        writeln('\nSeu compilador g-- foi instalado corretamente!'),
        writeln('Compile seu código c-- com "swipl -s main.pl -g main -- <filename>.cmm"'),
        halt(0)
    ).

% Analisador léxico principal
analisa_arquivo(NomeArquivo, Tokens) :-
    open(NomeArquivo, read, Stream),
    read_string(Stream, _, Conteudo),
    close(Stream),
    analisa(Conteudo, Tokens).
