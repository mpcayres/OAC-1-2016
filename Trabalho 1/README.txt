_____________________________________________________________________________________
_
  S I M U L A D O R   M I P S
_____________________________________________________________________________________
_
  Readme.txt

  Esse ReadMe apresenta informações a cerca da implementação de algumas funções do
  Mars Mips em C desenvolvida para a disciplina de Organização e Arquitetura de
  Computadores. O conteúdo aqui visto é similar ao do relatório, apenas carecendo
  das imagens ilustrativas dos testes realizados.

_____________________________________________________________________________________
_
 CONTEÚDOS
___________

	1) INFORMAÇÕES BÁSICAS DO TRABALHO
	2) DESCRIÇÃO DO PROBLEMA
	3) INSTRUÇÕES
	4) FUNÇÕES IMPLEMENTADAS
	5) TESTES EXECUTADOS

______________________________________________________________________________________

 1) INFORMAÇÕES BÁSICAS DO TRABALHO
____________________________________

Organização e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Estudante: Marcos Paulo Cayres Rosa 
Matrícula: 14/0027131

Detalhes do código fonte:
O programa foi compilado e executado através de um sistema Ubuntu 14.04.1, sem o uso
de IDEs, apenas editores básicos de texto. Ademais, o código foi escrito em 
linguagem C e compilado com o gcc 4.8.4.

______________________________________________________________________________________

 2) DESCRIÇÃO DO PROBLEMA
____________________________________

O problema apresentado consiste em desenvolver 8 funções básicas do Assembly e 
simular sua execução no Mars Mips, considerando os registradores que podem estar em
uso e, especialmente, as modificações na memória de instruções e dados. Para tal
deveria se criar um array que correspondesse as 16384 posições da memória, tendo em 
vista que cada uma representa 1 byte e considerando que na simulação cada um dos 
4096 índices terá 32 bits (ou 4 bytes).
Além disso, também era necessário desenvolver códigos ASM para gerar instruções e 
dados ("text.bin" e "data.bin", respectivamente) que seriam salvos em binário e, 
após isso, na memória do simulador. Por fim, deve-se imprimir e comparar os 
resultados obtidos diretamente pelo MIPS e os simulados em C.

______________________________________________________________________________________

 3) INSTRUÇÕES
_______________

	1. Utilizando um terminal Ubuntu, abrir a pasta na qual se encontra o 
	   arquivo 140027131.c e mips.h;
	2. Efetuar o comando a seguir no terminal: "gcc 140027131.c -o 
	   Nome_Executavel". Observação: durante os testes o programa foi compilado 
	   com "gcc 140027131.c -ansi -Wall -o Nome_Executavel" para garantir que este
	   segue o padrão Ansi e que não há nenhum "warning flag" ativado;
	3. Executar o arquivo criado com "./Nome_Executavel";
	4. Durante a execução será necessário que o usuário aperte "Enter" entre as
	   diferentes etapas (impressão das informações advindas dos binários, 
	   efetivazação das instruções do MIPS - testes das funções, impressão dos 
	   resultados obtidos);
	5. Em relação aos testes das funções, estes ocorrem em base as instruções
	   passadas pelo binário e, por causa disso, o usuário deve utilizar-se dos
	   arquivos "text" e "data" que já vem inclusos na pasta compactada, 
	   podendo também modificar o código ASM ou criar um novo para ser executado
	   pelo simulador - gerando os binários necessários. Para isso só é preciso 
	   conferir se o binário do "data" é correspondente ao seu estado inicial e, 
	   a fim de que os resultados gerados entre o MIPS e seu simulador sejam 
	   iguais, os comandos correpondam apenas as 8 funções elaboradas no código 
	   fonte - tendo em vista que somente essas serão executadas em ambos.

______________________________________________________________________________________

 4) FUNÇÕES IMPLEMENTADAS
__________________________

	1. Load Word (lw)
	   A lógica dessa função corresponde a: lw $X, IMM($Y) => $X = MEMORY [$Y + 
	   IMM]. Ou seja, o endereço armazenado em $Y somado ao offset IMM indicará 
	   a posição da memória da qual o dado será retirado e $X corresponde ao 
	   registrador no qual este será salvo. Um exemplo disso é lw $t1, 4($t2), 
	   que salva em $t1 os bits salvos na memória com posição $t2 deslocado 4 
	   bytes.
	   No código fonte isso foi implementado do seguinte modo: primeiramente é 
	   analisado se a soma do endereço com o offset é um múltiplo de 4, cessando 
	   o procedimento caso não seja, e depois retorna o dado encontrada na 
	   posição solicitada da memória, sendo que este é dividido por 4 nessa 
	   implementação, por cada elemento do array possuir 4 bytes. Ademais, 
	   durante a execução das instruções, é especificado o registrador no qual 
	   deve ser salvo o valor retornado.

	2. Load HalfWord (lh)
	   Similar ao Load Word, o endereço armazenado em $Y somado ao offset IMM 
	   indicará a posição da memória da qual o dado será retirado e $X 
	   corresponde ao registrador no qual este será salvo. O que difere é que o 
	   dado salvo não completará os 32 bits possíveis de armazenamento, mas 
	   metade disso (2 bytes). No caso, opera em cima de uma metade determinada 
	   do dado, completando os demais bits estendendo o sinal. Um exemplo disso 
	   é lh $t1, 2($t2), que salva em $t1 metade dos dados salvos na memória com 
	   posição $t2 deslocado 2 bytes e completa os demais bits com o sinal 
	   correspondente.
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 2, cessando o procedimento caso não seja, depois 
	   utiliza uma máscara para pegar somente os bits especificados e repete o 
	   sinal encontrado. Então, retorna o dado encontrada na posição solicitada 
	   da memória, sendo que este é dividido por 4 nessa implementação, por cada 
	   elemento do array possuir 4 bytes. Ademais, durante a execução das 
	   instruções, é especificado o registrador no qual deve ser salvo o valor 
	   retornado.
	   Observação: as máscaras usadas são 0x0000ffff e 0xffff0000 e aplica-se com 
	   elas a operação “AND” (&). Para o sinal, caso o primeiro bit seja 1, é 
	   usada ao final a máscara inversa com a operação “OR” ( | ). Por fim, caso 
	   os bytes coletados sejam do fim da palavra, deslocasse 16 bits antes de 
	   retornar o valor.

	3. Load HalfWord Unsigned (lhb)
	   Possui quase o mesmo modo de operação do Load HalfWord, com o endereço 
	   armazenado em $Y somado ao offset IMM indicando a posição da memória da 
	   qual o dado será retirado e $X correspondendo ao registrador no qual este 
	   será salvo. Além disso, o dado salvo também não completará os 32 bits 
	   possíveis de armazenamento, mas metade disso (2 bytes). A diferença está 
	   em não estender o sinal, mas mantê-lo como positivo em todos os casos. Um 
	   exemplo disso é lhb $t1, 2($t2), que salva em $t1 metade dos dados salvos 
	   na memória com posição $t2 deslocado 2 bytes e completa os demais bits 
	   com o sinal positivo (0).
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 2, cessando o procedimento caso não seja, depois 
	   utiliza uma máscara para pegar somente os bits especificados. Então, 
	   retorna o dado encontrada na posição solicitada da memória, sendo que este 
	   é dividido por 4 nessa implementação, por cada elemento do array possuir 4 
	   bytes. Ademais, durante a execução das instruções, é especificado o 
	   registrador no qual deve ser salvo o valor retornado.
	   Observação: as máscaras usadas são 0x0000ffff e 0xffff0000 e aplica-se com 
	   elas a operação “AND” (&). Por fim, caso os bytes coletados sejam do 
	   início da palavra, deslocasse 16 bits antes de retornar o valor.

	4. Load Byte (lb)
	   Similar ao Load Word, o endereço armazenado em $Y somado ao offset IMM 
	   indicará a posição da memória da qual o dado será retirado e $X 
	   corresponde ao registrador no qual este será salvo. O que difere é que o 
	   dado salvo não completará os 32 bits possíveis de armazenamento, mas um 
	   quarto disso (1 byte). Dessa forma, opera apenas em um byte determinado da
	   palavra, completando os demais bits estendendo o sinal. Um exemplo disso é 
	   lb $t1, 1($t2), que salva em $t1 o byte salvo na memória com posição $t2 
	   deslocado 1 byte e completa os demais bits com o sinal correspondente.
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 1, cessando o procedimento caso não seja, depois 
	   utiliza uma máscara para pegar somente os bits especificados e repete o 
	   sinal encontrado. Então, retorna o dado encontrada na posição solicitada 
	   da memória, sendo que este é dividido por 4 nessa implementação, por cada 
	   elemento do array possuir 4 bytes. Ademais, durante a execução das 
	   instruções, é especificado o registrador no qual deve ser salvo o valor 
	   retornado.
	   Observação: as máscaras usadas são 0x000000ff, 0xff000000, 0x00ff0000 e 
	   0x0000ff00 e aplica-se com elas a operação “AND” (&). Para o sinal, caso 
	   o primeiro bit seja 1, é usada ao final a máscara complementar com a 
	   operação “OR” ( | ). Por fim, caso os bytes coletados não sejam do fim da 
	   palavra, deslocasse 24, 16 ou 8 bits antes de retornar o valor 
	   (respectivos as três últimas máscaras indicadas acima).


	5. Loab Byte Unsigned (lbu)
	   Possui quase o mesmo funcionamento do Load Byte, com o endereço armazenado 
	   em $Y somado ao offset IMM indicando a posição da memória da qual o dado 
	   será retirado e $X correspondendo ao registrador no qual este será salvo. 
	   Da mesma forma, o dado salvo não completará os 32 bits possíveis de 
	   armazenamento, mas um quarto disso (1 byte), só que estenderá o sinal 
	   positivo em todos os casos. Um exemplo disso é lbh $t1, 1($t2), que salva
	   em $t1 o byte salvo na memória com posição $t2 deslocado 1 byte e completa 
	   os demais bits com o sinal positivo (0).
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 1, cessando o procedimento caso não seja, depois 
	   utiliza uma máscara para pegar somente os bits especificados. Então, 
	   retorna o dado encontrada na posição solicitada da memória, sendo que 
	   este é dividido por 4 nessa implementação, por cada elemento do array 
	   possuir 4 bytes. Ademais, durante a execução das instruções, é 
	   especificado o registrador no qual deve ser salvo o valor retornado.
	   Observação: as máscaras usadas são 0x000000ff, 0xff000000, 0x00ff0000 e
	   0x0000ff00 e aplica-se com elas a operação “AND” (&). Por fim, caso os 
	   bytes coletados não sejam do fim da palavra, deslocasse 24, 16 ou 8 bits 
	   antes de retornar o valor (respectivos as três últimas máscaras 
	   indicadas acima).

	6. Store Word (sw)
	   A lógica dessa função corresponde a: sw $X, IMM($Y) => MEMORY [$Y + IMM] 
	   = $X. Ou seja, $X indicará o registrador do qual o dado será retirado e 
	   o endereço armazenado em $Y somado ao offset IMM corresponde a posição da 
	   memória na qual este será salvo. Um exemplo disso é sw $t1, 4($t2), que 
	   salva na memória, com posição $t2 deslocado 4 bytes, os bits encontrados 
	   em $t1.
	   No código fonte isso foi implementado do seguinte modo: primeiramente é 
	   analisado se a soma do endereço com o offset é um múltiplo de 4, cessando 
	   o procedimento caso não seja, e depois, na posição especificada (dividida 
	   por 4 nessa implementação, por cada elemento do array possuir 4 bytes), 
	   salvando o dado passado como parâmetro, sendo que este durante a execução 
	   das instruções, é especificado a partir do registrador explicitado pelo 
	   comando.

	7. Store HalfWord (sh)
	   Similar ao Store Word, $X indicará o registrador do qual o dado será 
	   retirado e o endereço armazenado em $Y somado ao offset IMM corresponde a 
	   posição da memória na qual este será salvo. O que difere é que o dado 
	   salvo não completará os 32 bits possíveis de armazenamento, mas metade 
	   disso (2 bytes), com os demais bits correspondente ao que havia
	   previamente na memória. Um exemplo disso é sh $t1, 2($t2), que salva na
	   memória, com posição $t2 deslocado 2 bytes, os bits encontrados em $t1.
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 2, cessando o procedimento caso não seja, e depois, 
	   na posição especificada (dividida por 4 nessa implementação, por cada 
	   elemento do array possuir 4 bytes), salvando o dado passado como parâmetro, 
	   sendo que este durante a execução das instruções, é especificado a partir 
	   do registrador explicitado pelo comando.
	   Observação: as máscaras usadas são 0x0000ffff e 0xffff0000 e aplica-se com 
 	   elas a operação “AND” (&). Além disso, o resultado encontrado é somado ao 
	   encontrado a partir da mesma operação “AND” aplicada na posição de memória 
	   especificada com a máscara complementar. Por fim, caso os bytes coletados 
	   sejam do fim da palavra, deslocasse 16 bits para a esquerda antes de 
	   retornar o valor.

	8. Store Byte (sb)
	   Similar ao Store Word, $X indicará o registrador do qual o dado será 
	   retirado e o endereço armazenado em $Y somado ao offset IMM corresponde a 
	   posição da memória na qual este será salvo. O que difere é que o dado 
	   salvo não completará os 32 bits possíveis de armazenamento, mas um quarto 
	   disso (1 byte), com os demais bits correspondente ao que havia previamente 
	   na memória. Um exemplo disso é sb $t1, 1($t2), que salva na memória, com 
	   posição $t2 deslocado 1 byte, os bits encontrados em $t1.
	   Na implementação, primeiramente é analisado se a soma do endereço com o 
	   offset é um múltiplo de 1, cessando o procedimento caso não seja, e depois,
	   na posição especificada (dividida por 4 nessa implementação, por cada 
	   elemento do array possuir 4 bytes), salvando o dado passado como parâmetro, 
	   sendo que este durante a execução das instruções, é especificado a partir 
	   do registrador explicitado pelo comando.
	   Observação: as máscaras usadas são 0x000000ff, 0xff000000, 0x00ff0000 e 
	   0x0000ff00 e aplica-se com elas a operação “AND” (&). Além disso, o 
	   resultado encontrado é somado ao encontrado a partir da mesma operação 
	   “AND” aplicada na posição de memória especificada com a máscara 
	   complementar. Por fim, caso os bytes coletados não sejam do fim da 
	   palavra, deslocasse 24, 16 ou 8 bits antes de retornar o valor 
	   (respectivos as três últimas máscaras indicadas acima).

Para poder testar e analisar as funções acima mencionadas existem outras auxiliares 
criadas: 
	- leitura, que recebe os arquivos binários e salva eles na memória;
	- init, inicializando a memória e os registradores;
	- instrExec, usando o array da memória para determinar as instruções a 
serem executadas, a partir de informações como op code, rs, rt e imm;
	- gerarData, imprimindo os resultados na tela e gerando um binário “dataSim”, 
com o estado final da espaço dos dados na memória.

______________________________________________________________________________________

 5) TESTES EXECUTADOS
______________________

Conforme os testes executados foram a partir do código ASM, as comparações de
resultado são feitas a partir de imagens mostrando os dados armazenados tanto na 
memória quanto nos registradores em cada etapa tanto no MIPS quanto em seu simulador.
Devido a isso, as informações a cerca disso estão contidas apenas no relatório.

______________________________________________________________________________________
______________________________________________________________________________________