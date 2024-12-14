# José Luís Ramos Teixeira  -  190057858 

## Lições Aprendida

Trabalhar com Prolog e um projeto de compilador foi um desafio novo. Aprendi bastante sobre a importância de seguir uma gramática bem definida para estruturar um analisador léxico, além de lidar com a modularização em uma linguagem menos usual. Também percebi como o design inicial do projeto influencia diretamente a clareza e funcionalidade do código final.

## Percepções

Senti que a integração foi mais fácil que no trabalho anterior, onde utilizamos Haskell, especialmente na hora de unir as contribuições de todos. Porém, a modularização e divisão de partes entre os membros do grupo foi um pouco mais complicada, seja pelo escopo desafiador de um compilador ou pelas particularidades do Prolog.

## Contribuições e Fragilidades

Minha contribuição principal foi na construção da base léxica e no desenvolvimento do analisador léxico, garantindo que seguisse a gramática `C--`. Realizei ajustes importantes na organização dos arquivos, revisão e refatoração de nomes e tokens, e documentação inicial do módulo léxico. 

O projeto inclui mensagens de erro básicas no analisador léxico, como para caracteres fora da gramática ou ordens incorretas. Contudo, uma fragilidade foi não conseguir estender essas mensagens para cobrir mais cenários específicos ou criar um analisador léxico mais robusto para gramáticas mais complexas.

##  Trabalhos Futuros

- Melhorar a modularização e integração entre as etapas do compilador.
- Ampliar as mensagens de erro no analisador léxico para maior cobertura de casos específicos.
- Expandir a gramática para se aproximar ainda mais da linguagem C.