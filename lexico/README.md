# Analisador Léxico C--

Este diretório contém o analisador léxico para a linguagem **C--**, desenvolvido em **SWI-Prolog**. A seguir, você encontrará instruções para executar o analisador, junto com uma breve descrição de cada arquivo.

<br></br>

## **Como usar**

### Requisitos
- **SWI-Prolog** instalado na máquina. Para instalar no Ubuntu:
```bash
sudo apt update
sudo apt install swi-prolog
```

### Executando o Analisador Léxico
1. Abra o terminal e navegue até a pasta `lexico`:
```bash
cd /caminho/para/lexico
```
2. Inicie o **SWI-Prolog**:
```bash
swipl
```
3. Carregue o arquivo principal:
```bash
?- [main_analisador_lexico_cmm].
```
4. O analisador exibirá os tokens gerados para o código de exemplo que olocamos lá dentro.

### Para sair do SWI-Prolog
Digite:
```bash
?- halt.
```

<br></br>

## **Descrição dos Arquivos**

### `base_lexica_cmm.pl`
Contém as definições dos tokens da linguagem **C--**, como palavras-chave, operadores e símbolos. É o "dicionário" usado pelo analisador léxico.

### `analisador_lexico_cmm.pl`
Implementa a lógica do analisador léxico. Recebe o código-fonte (como uma lista de strings) e retorna os tokens correspondentes.

### `main_analisador_lexico_cmm.pl`
Ponto de entrada principal para rodar o analisador. Contém exemplos de código para teste.

### `programa.cmm`
Arquivo exemplo de código em **C--** usado para testar o analisador léxico. Não é carregado automaticamente pelo sistema.
