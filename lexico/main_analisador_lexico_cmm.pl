:- consult('analisador_lexico_cmm.pl').

% Função principal para processar e exibir tokens
main :-
    writeln('=== Iniciando Analisador Léxico ==='),
    % Exemplo de código para análise
    Codigo = ['int', 'main', '(', ')', '{', '/*', '*/' ,'int', 'x', '=', '5', ';', 'if', '(', 'x', '<', '10', ')', '{', 'x', '+=', '1', ';', '}', '}'],
    writeln('Código para análise:'),
    writeln(Codigo),
    writeln('Tokenizando...'),
    tokenizar(Codigo, Tokens),
    writeln('Tokens Gerados:'),
    writeln(Tokens).

% Executa a função principal ao carregar o arquivo
:- main.
