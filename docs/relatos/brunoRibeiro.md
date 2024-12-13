# Bruno Campos Ribeiro- 211039288

## Lições Aprendida

O desenvolvimento do compilador g-- apresentou desafios notáveis que, 
com empenho, foram superados, proporcionando lições valiosas para minha 
trajetória acadêmica. Este projeto me permitiu relembrar e aplicar de 
forma prática os conceitos aprendidos na disciplina de Compiladores. 
Além disso, utilizar conhecimentos do paradigma lógico ampliou meu 
aprendizado, fortalecendo a relação entre teoria e prática.

## Percepções

Esse trabalho se mostrou mais desafiador do que o primeiro, principalmente
no que diz respeito ao projeto em si. Contudo, percebi que tive mais 
facilidade ao usar a linguagem Prolog para implementar soluções, em 
comparação com minha experiência anterior com Haskell. O maior desafio foi 
aprender uma nova linguagem de programação em um curto período, enquanto já 
era necessário usar construções complexas para desenvolver o compilador, 
mesmo em sua versão simplificada.

## Contribuições e Fragilidades

Estive ativamente envolvido em todas as etapas do projeto, desde as reuniões 
iniciais para definir o tema e elicitar requisitos, até a definição e 
elaboração da gramática da linguagem c--, eliminação de recursões à esquerda, 
desenvolvimento do analisador sintático, testes de integração entre os módulos 
léxico e sintático, identificação de fragilidades no código (algumas corrigidas a 
tempo, outras não). Contribuí também na produção do vídeo de apresentação e em 
alguns pontos da documentação.

A principal fragilidade do projeto foi a má gestão na divisão dos subgrupos, onde 
concentrar os membros mais experientes em compiladores em uma única tarefa resultou 
em um analisador sintático funcional e coerente. Entretanto, isso levou a limitações 
na análise léxica, que não identificava corretamente erros em algumas situações. Além 
disso, foi necessário reduzir o escopo, dadas as restrições de tempo para o 
desenvolvimento e o nível geral de conhecimento técnico da equipe em programação lógica 
e construção de compiladores.

##  Trabalhos Futuros

- Melhorar o analisador léxico para identificar corretamente mais expressões da linguagem C (por exemplo, x++, ++x, números negativos, pontos flutuantes, funções).
- Adicionar reconhecimento de erros léxicos com mensagens de erro mais detalhadas.
- Expandir a gramática do c-- e, consequentemente, as regras de produção.
- Desenvolver a árvore sintática.
- Tornar mais robusta a identificação de erros sintáticos, indicando o erro e sua localização.
- Implementar um analisador semântico em Prolog ou integrando com outras linguagens.
- Traduzir o código para outra linguagem.
