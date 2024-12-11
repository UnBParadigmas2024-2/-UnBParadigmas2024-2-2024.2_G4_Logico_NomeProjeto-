# *g--*, um compilador para a linguagem *C--*

> *"C makes it easy to shoot yourself in the foot; C++ makes it harder, but when you do it blows your whole leg off."* ― Bjarne Stroustrup

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 02<br>
**Paradigma**: Lógico<br>

## Alunos
| Matrícula  | Aluno                              |
| ---------- | ---------------------------------- |
| 21/1039288 | Bruno Campos Ribeiro               |
| 21/1039297 | Bruno Martins Valério Bomfim       |
| 20/2016462 | Heitor Marques                     |
| 21/1029352 | Igor e Silva Penha                 |
| 19/0057858 | José Luís Ramos Teixeira           |
| 21/1029405 | Leonardo Gonçalves Machado         |
| 20/2016767 | Lucas Felipe Soares                |
| 20/0062379 | Marcos Vinícius de Deus            |
| 20/2045268 | Raquel T. Eucaria Pereira da Costa |
| 21/2002907 | Zenilda Pedrosa Vieira             |

## Sobre

**g--** é o projeto de um possível compilador desenvolvido em Prolog para a linguagem fictícia C--, que representa um subconjunto simplificado da linguagem C.  Criado com o objetivo de explorar conceitos fundamentais de compiladores, linguagens de programação e o paradigma lógico de programação, o **g--** busca processar o código-fonte escrito em C--, verificando sua correctude léxica e sintática.

### A Linguagem C--

C-- é projetada como um subset da linguagem C, contendo apenas os recursos essenciais da linguagem para facilitar o processo de análise e compilação. Algumas de suas características incluem:

- Tipos de dados básicos: `int`, `char`, `void`, além de constantes como `true` e `false`.
- Estruturas de controle: `if`, `else`, `while`, e `return`.
- Declaração de variáveis: Permite declarações simples e inicializações.
- Função principal: O ponto de entrada do programa é uma função `main()` obrigatória.
- Expressões matemáticas: Suporte a operadores aritméticos (`+`, `-`, `*`, `/`, `%`) e relacionais (`<`, `>`, `==`, etc.).

O C-- elimina recursos mais complexos do C, como funções e ponteiros, tornando a linguagem mais factível para o projeto da disciplina.

#### Estrutura do Compilador g--:

1. **Análise Léxica:** O analisador léxico transforma o código-fonte em uma sequência de tokens, representando as menores unidades significativas da linguagem, como identificadores, números, operadores e palavras-chave.

2. **Análise Sintática:** O analisador sintático utiliza um conjunto de regras gramaticais para verificar se a sequência de tokens forma estruturas válidas em C--. Essa etapa é implementada como um parser descendente recursivo em Prolog,  utilizando predicados para cada produção da gramática.

## Screenshots

## Instalação 

## Uso 

## Vídeo

## Participações

| Nome do Membro                | Contribuição                                   | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios (ex. links para commits) |
| ----------------------------- | --------------------------------------------- | ------------------------------------------- | -------------------------------------- |
| Bruno Campos Ribeiro          |                                               |                                             |                                        |
| Bruno Martins Valério Bomfim  |                                               |                                             |                                        |
| Heitor Marques                |                                               |                                             |                                        |
| Igor e Silva Penha            |                                               |                                             |                                        |
| José Luís Ramos Teixeira      |                                               |                                             |                                        |
| Leonardo Gonçalves Machado    |                                               |                                             |                                        |
| Lucas Felipe Soares           |                                               |                                             |                                        |
| Marcos Vinícius de Deus       |                                               |                                             |                                        |
| Raquel T. Eucaria Pereira da Costa |                                          |                                             |                                        |
| Zenilda Pedrosa Vieira        |                                               |                                             |                                        |



## Outros 
Quaisquer outras informações sobre o projeto podem ser descritas aqui. Não esqueça, entretanto, de informar sobre:

#### (I) Lições Aprendidas

#### (II) Percepções


#### (III) Contribuições e Fragilidades


#### (IV) Trabalhos Futuros

## Bibliografia

[1] AHO, Alfred V.; LAM, Monica S.; SETHI, Ravi; ULLMAN, Jeffrey D. **Compilers: Principles, Techniques, and Tools**. 2. ed. Boston: Pearson Addison Wesley, 2006.

[2] COSTA JÚNIOR, Edson Alves da. **Repositório da Disciplina de Compiladores 1**. Disponível em: [link](https://github.com/edsomjr/Compiladores). Acesso em: 10 dez. 2024.

[3] RIBAS, Bruno César. **Materiais da Disciplina de Compiladores 1**. Disponível em: [link](https://www.brunoribas.com.br/compiladores/2024-2/). Acesso em: 10 dez. 2024.

[4] SERRANO, Milene. **Materiais da Disciplina de Paradigmas de Programação**. Disponível em: [link](https://aprender3.unb.br/). Acesso em: 10 dez. 2024.
