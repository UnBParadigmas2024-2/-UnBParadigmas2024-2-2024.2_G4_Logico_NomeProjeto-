# Zenilda Pedrosa Vieira - 212002907 

## Lições Aprendidas

Tive a oportunidade de no semestre passado cursar a disciplina de Compiladores com o professor Bruno Ribas. O trabalho final dessa disciplina foi implementar um compilador em C ou Python para uma versão simplificada de Pascal. Aqui na disciplina de Paradigmas, ao observarmos as características do paradigma lógico utilizando a linguagem Prolog, decidimos encarar o desafio de criar um compilador de uma versão simplificada da linguagem C, a qual denominamos C--. Nosso foco foi na análise léxica e sintática, não se estendendo à análise semântica nem à tradução devido à complexidade maior dessas etapas e ao curto tempo disponível.

Com o desafio aceito, foi muito interessante criar esse compilador em poucos dias. Nosso escopo é bastante simplificado, mas foi o suficiente para termos um primeiro contato com a linguagem Prolog e colocar em prática várias funcionalidades e conceitos aprendidos em sala e nas vídeo-aulas. 

## Percepções

O paradigma lógico é uma forma bastante interessante de programar. Tive mais facilidade de compreendê-lo do que o paradigma funcional. E também gostei mais da linguagem Prolog do que da linguagem Haskell. Compreeendo que elas tem funcionalidades e aplicações diferentes, mas pra mim que sou da velha guarda :), um paradigma baseado em pura lógica me faz programar com olhos brilhando rsrsrs. Me faz me sentir em casa ;).

## Contribuições e Fragilidades

Aprender uma linguagem nova e um paradigma novo é sempre desafiador. Devido à problemas de saúde, não pude colaborar muito na codificação, mas acompanhei toda a evolução do projeto, desde suas definições iniciais até a implementação final. No início contribui com um primeiro código em Prolog (bem simples), resultante da conversão do meu trabalho do compilador de Pascal em Python do semestre anterior. Esse código serviu como uma arrancada inicial para o compilador g--, mesmo que de forma tímida, com uma contribuição maior pra análise léxica.

Já no final da implementação pude voltar a contribuir, ajudando na revisão final dos códigos da análise léxica e sintática. Na análise léxica, ajudei a organizar o código com comentários e com a inclusão de rotinas de retorno de mensagens de erro ao encontrar erros léxicos no código testado. Na análise sintática, colaborei também com a inclusão de rotinas de mensagens de erro ao encontrar erros sintáticos e com a solução do loop infinito que o código estava apresentando. Também inclui formatações na saída gerada pelo analisador sintático para melhorar sua legibilidade. E por fim, ajudei nos testes do compilador já funcionando e no debug e aprimoramento da versão final. Não participei da documentação do repositório e, aproveitando a oportunidade, gostaria de elogiar os integrantes do grupo, que se dedicaram muito e se esforçaram para fazer a melhor entrega possível.


##  Trabalhos Futuros

Nosso compilador tem um escopo reduzido devido ao pouco tempo disponível para a entrega do presente projeto. Mesmo assim, estou orgulhosa do resultado final, acreditando que evoluímos bastante em tão curto tempo e que conseguimos implementar em prolog as funcionalidades básicas de um analisador léxico e um analisador sintático para a linguagem C--. Como melhorias e aprimorações gostaria de citar:
* Análise léxica: inclusão de mais tokens que podem ser reconhecidos, como incremento e decremento, números negativos, outras funções embutidas, etc.
* Análise sintática: ampliar a gramática C--, como o reconhecimento de funções e procedimentos (não somente a main).
* Implementar a análise semântica.
* Implementar a tradução do código para alguma linguagem assembly.
