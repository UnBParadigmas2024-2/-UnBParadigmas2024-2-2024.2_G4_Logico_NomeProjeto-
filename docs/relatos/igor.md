# Igor e Silva Penha - 211029352

## Lições Aprendida

O projeto do compilador g-- trouxe desafios significativos, os quais com dedicação foram solucionados, proporcionando aprendizados valiosos para minha jornada acadêmica. Por meio desse trabalho, tive a oportunidade de relembrar conceitos aprendidos na disciplina de Compiladores e aplicá-los de forma prática. Além disso, integrar conhecimentos do paradigma lógico expandiu ainda mais meu aprendizado, consolidando a conexão entre teoria e prática.

## Percepções

Este trabalho se mostrou mais desafiador que o primeiro, especialmente no que diz respeito ao projeto em si. No entanto, percebi que tive maior facilidade ao utilizar a linguagem Prolog para implementar soluções, em comparação com minha experiência com Haskell. A maior dificuldade foi a necessidade de aprender uma nova linguagem de programação em um curto espaço de tempo, ao mesmo tempo em que já era necessário empregar construções complexas para desenvolver o compilador, mesmo em uma versão reduzida.

## Contribuições e Fragilidades

Participei de forma ativa em todas as fases do projeto, desde as primeiras reuniões para definição do tema e elicitação de requisitos, até a definição e produção da gramática da linguagem c--, eliminação de recursões à esquerda, desenvolvimento do analisador sintático, testes de integração entre os módulos léxico e sintático, identificação de fragilidades no código (algumas corrigidas a tempo, outras não). Por fim, na produção do vídeo de apresentação e alguns pontos na documentação.

A principal fragilidade do projeto foi a má gestão na divisão dos subgrupos, em que ao concentrarmos os integrantes mais experientes com compiladores em uma única frente, resultou em um analisador sintático funcional e coêrente. Porém, como consequência, a análise léxica apresentou limitações, não identificando corretamente erros léxicos em algumas situações. Além disso, a necessidade de redução do escopo, considerando o tempo limitado para desenvolvimento e o nível de conhecimento técnico geral da equipe em programação lógica e construção de compiladores.

##  Trabalhos Futuros

- Aprimorar o analisador léxico, para identificar corretamente mais expressões da linguagem C (e.g. x++, ++x, números negativos, ponto flutuante, funções);
- Adicionar o reconhecimento de erros léxicos, podendo adicionar mensagens de erro mais completas;
- Aumentar o tamanho da gramática do c--, e consequentemente, as regras de produção;
- Desenvolver a árvore sintática;
- Deixar mais robusta a identificação de erros sintáticos, podendo fornecer qual foi o erro e em qual linha;
- Implementar um analisador semântico em Prolog ou então fazendo comunicação com outras linguagens;
- Fazer a tradução do código para outra linguagem.

