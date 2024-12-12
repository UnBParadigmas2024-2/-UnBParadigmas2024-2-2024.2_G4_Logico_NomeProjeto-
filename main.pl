:- consult('lexico/analisador_lexico_cmm.pl').
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
    ; writeln('=== g-- Versão 1.0.0 | 13 de dezembro de 2024 ==='),
      writeln('Autores: Bruno Ribeiro, Bruno Martins, Heitor Marques,'), 
      writeln('Igor Penha, José Luís Teixeira, Leonardo Machado, Lucas Soares,'), 
      writeln('Marcos de Deus, Raquel Eucária e Zenilda Vieira'),
      writeln('\nSeu compilador g-- foi instalado corretamente!'),
      writeln('Compile seu código c-- com "swipl -s main.pl -g main -- <filename>.cmm"'),  halt(1)
    ).

% Função para ler o conteúdo do arquivo e convertê-lo em uma lista de palavras
read_file(Filename, Codigo) :-
    open(Filename, read, Stream),
    read_string(Stream, _, String),
    close(Stream),
    split_string(String, " \t\n", " \t\n", Words),
    maplist(atom_string, Codigo, Words).
