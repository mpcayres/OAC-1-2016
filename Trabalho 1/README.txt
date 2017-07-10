_____________________________________________________________________________________
_
  S I M U L A D O R   M I P S
_____________________________________________________________________________________
_
  Readme.txt

  Esse ReadMe apresenta informa��es a cerca da implementa��o de algumas fun��es do
  Mars Mips em C desenvolvida para a disciplina de Organiza��o e Arquitetura de
  Computadores. O conte�do aqui visto � similar ao do relat�rio, apenas carecendo
  das imagens ilustrativas dos testes realizados.

_____________________________________________________________________________________
_
 CONTE�DOS
___________

	1) INFORMA��ES B�SICAS DO TRABALHO
	2) DESCRI��O DO PROBLEMA
	3) INSTRU��ES
	4) FUN��ES IMPLEMENTADAS
	5) TESTES EXECUTADOS

______________________________________________________________________________________

 1) INFORMA��ES B�SICAS DO TRABALHO
____________________________________

Organiza��o e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Estudante: Marcos Paulo Cayres Rosa 
Matr�cula: 14/0027131

Detalhes do c�digo fonte:
O programa foi compilado e executado atrav�s de um sistema Ubuntu 14.04.1, sem o uso
de IDEs, apenas editores b�sicos de texto. Ademais, o c�digo foi escrito em 
linguagem C e compilado com o gcc 4.8.4.

______________________________________________________________________________________

 2) DESCRI��O DO PROBLEMA
____________________________________

O problema apresentado consiste em desenvolver 8 fun��es b�sicas do Assembly e 
simular sua execu��o no Mars Mips, considerando os registradores que podem estar em
uso e, especialmente, as modifica��es na mem�ria de instru��es e dados. Para tal
deveria se criar um array que correspondesse as 16384 posi��es da mem�ria, tendo em 
vista que cada uma representa 1 byte e considerando que na simula��o cada um dos 
4096 �ndices ter� 32 bits (ou 4 bytes).
Al�m disso, tamb�m era necess�rio desenvolver c�digos ASM para gerar instru��es e 
dados ("text.bin" e "data.bin", respectivamente) que seriam salvos em bin�rio e, 
ap�s isso, na mem�ria do simulador. Por fim, deve-se imprimir e comparar os 
resultados obtidos diretamente pelo MIPS e os simulados em C.

______________________________________________________________________________________

 3) INSTRU��ES
_______________

	1. Utilizando um terminal Ubuntu, abrir a pasta na qual se encontra o 
	   arquivo 140027131.c e mips.h;
	2. Efetuar o comando a seguir no terminal: "gcc 140027131.c -o 
	   Nome_Executavel". Observa��o: durante os testes o programa foi compilado 
	   com "gcc 140027131.c -ansi -Wall -o Nome_Executavel" para garantir que este
	   segue o padr�o Ansi e que n�o h� nenhum "warning flag" ativado;
	3. Executar o arquivo criado com "./Nome_Executavel";
	4. Durante a execu��o ser� necess�rio que o usu�rio aperte "Enter" entre as
	   diferentes etapas (impress�o das informa��es advindas dos bin�rios, 
	   efetivaza��o das instru��es do MIPS - testes das fun��es, impress�o dos 
	   resultados obtidos);
	5. Em rela��o aos testes das fun��es, estes ocorrem em base as instru��es
	   passadas pelo bin�rio e, por causa disso, o usu�rio deve utilizar-se dos
	   arquivos "text" e "data" que j� vem inclusos na pasta compactada, 
	   podendo tamb�m modificar o c�digo ASM ou criar um novo para ser executado
	   pelo simulador - gerando os bin�rios necess�rios. Para isso s� � preciso 
	   conferir se o bin�rio do "data" � correspondente ao seu estado inicial e, 
	   a fim de que os resultados gerados entre o MIPS e seu simulador sejam 
	   iguais, os comandos correpondam apenas as 8 fun��es elaboradas no c�digo 
	   fonte - tendo em vista que somente essas ser�o executadas em ambos.

______________________________________________________________________________________

 4) FUN��ES IMPLEMENTADAS
__________________________

	1. Load Word (lw)
	   A l�gica dessa fun��o corresponde a: lw $X, IMM($Y) => $X = MEMORY [$Y + 
	   IMM]. Ou seja, o endere�o armazenado em $Y somado ao offset IMM indicar� 
	   a posi��o da mem�ria da qual o dado ser� retirado e $X corresponde ao 
	   registrador no qual este ser� salvo. Um exemplo disso � lw $t1, 4($t2), 
	   que salva em $t1 os bits salvos na mem�ria com posi��o $t2 deslocado 4 
	   bytes.
	   No c�digo fonte isso foi implementado do seguinte modo: primeiramente � 
	   analisado se a soma do endere�o com o offset � um m�ltiplo de 4, cessando 
	   o procedimento caso n�o seja, e depois retorna o dado encontrada na 
	   posi��o solicitada da mem�ria, sendo que este � dividido por 4 nessa 
	   implementa��o, por cada elemento do array possuir 4 bytes. Ademais, 
	   durante a execu��o das instru��es, � especificado o registrador no qual 
	   deve ser salvo o valor retornado.

	2. Load HalfWord (lh)
	   Similar ao Load Word, o endere�o armazenado em $Y somado ao offset IMM 
	   indicar� a posi��o da mem�ria da qual o dado ser� retirado e $X 
	   corresponde ao registrador no qual este ser� salvo. O que difere � que o 
	   dado salvo n�o completar� os 32 bits poss�veis de armazenamento, mas 
	   metade disso (2 bytes). No caso, opera em cima de uma metade determinada 
	   do dado, completando os demais bits estendendo o sinal. Um exemplo disso 
	   � lh $t1, 2($t2), que salva em $t1 metade dos dados salvos na mem�ria com 
	   posi��o $t2 deslocado 2 bytes e completa os demais bits com o sinal 
	   correspondente.
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 2, cessando o procedimento caso n�o seja, depois 
	   utiliza uma m�scara para pegar somente os bits especificados e repete o 
	   sinal encontrado. Ent�o, retorna o dado encontrada na posi��o solicitada 
	   da mem�ria, sendo que este � dividido por 4 nessa implementa��o, por cada 
	   elemento do array possuir 4 bytes. Ademais, durante a execu��o das 
	   instru��es, � especificado o registrador no qual deve ser salvo o valor 
	   retornado.
	   Observa��o: as m�scaras usadas s�o 0x0000ffff e 0xffff0000 e aplica-se com 
	   elas a opera��o �AND� (&). Para o sinal, caso o primeiro bit seja 1, � 
	   usada ao final a m�scara inversa com a opera��o �OR� ( | ). Por fim, caso 
	   os bytes coletados sejam do fim da palavra, deslocasse 16 bits antes de 
	   retornar o valor.

	3. Load HalfWord Unsigned (lhb)
	   Possui quase o mesmo modo de opera��o do Load HalfWord, com o endere�o 
	   armazenado em $Y somado ao offset IMM indicando a posi��o da mem�ria da 
	   qual o dado ser� retirado e $X correspondendo ao registrador no qual este 
	   ser� salvo. Al�m disso, o dado salvo tamb�m n�o completar� os 32 bits 
	   poss�veis de armazenamento, mas metade disso (2 bytes). A diferen�a est� 
	   em n�o estender o sinal, mas mant�-lo como positivo em todos os casos. Um 
	   exemplo disso � lhb $t1, 2($t2), que salva em $t1 metade dos dados salvos 
	   na mem�ria com posi��o $t2 deslocado 2 bytes e completa os demais bits 
	   com o sinal positivo (0).
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 2, cessando o procedimento caso n�o seja, depois 
	   utiliza uma m�scara para pegar somente os bits especificados. Ent�o, 
	   retorna o dado encontrada na posi��o solicitada da mem�ria, sendo que este 
	   � dividido por 4 nessa implementa��o, por cada elemento do array possuir 4 
	   bytes. Ademais, durante a execu��o das instru��es, � especificado o 
	   registrador no qual deve ser salvo o valor retornado.
	   Observa��o: as m�scaras usadas s�o 0x0000ffff e 0xffff0000 e aplica-se com 
	   elas a opera��o �AND� (&). Por fim, caso os bytes coletados sejam do 
	   in�cio da palavra, deslocasse 16 bits antes de retornar o valor.

	4. Load Byte (lb)
	   Similar ao Load Word, o endere�o armazenado em $Y somado ao offset IMM 
	   indicar� a posi��o da mem�ria da qual o dado ser� retirado e $X 
	   corresponde ao registrador no qual este ser� salvo. O que difere � que o 
	   dado salvo n�o completar� os 32 bits poss�veis de armazenamento, mas um 
	   quarto disso (1 byte). Dessa forma, opera apenas em um byte determinado da
	   palavra, completando os demais bits estendendo o sinal. Um exemplo disso � 
	   lb $t1, 1($t2), que salva em $t1 o byte salvo na mem�ria com posi��o $t2 
	   deslocado 1 byte e completa os demais bits com o sinal correspondente.
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 1, cessando o procedimento caso n�o seja, depois 
	   utiliza uma m�scara para pegar somente os bits especificados e repete o 
	   sinal encontrado. Ent�o, retorna o dado encontrada na posi��o solicitada 
	   da mem�ria, sendo que este � dividido por 4 nessa implementa��o, por cada 
	   elemento do array possuir 4 bytes. Ademais, durante a execu��o das 
	   instru��es, � especificado o registrador no qual deve ser salvo o valor 
	   retornado.
	   Observa��o: as m�scaras usadas s�o 0x000000ff, 0xff000000, 0x00ff0000 e 
	   0x0000ff00 e aplica-se com elas a opera��o �AND� (&). Para o sinal, caso 
	   o primeiro bit seja 1, � usada ao final a m�scara complementar com a 
	   opera��o �OR� ( | ). Por fim, caso os bytes coletados n�o sejam do fim da 
	   palavra, deslocasse 24, 16 ou 8 bits antes de retornar o valor 
	   (respectivos as tr�s �ltimas m�scaras indicadas acima).


	5. Loab Byte Unsigned (lbu)
	   Possui quase o mesmo funcionamento do Load Byte, com o endere�o armazenado 
	   em $Y somado ao offset IMM indicando a posi��o da mem�ria da qual o dado 
	   ser� retirado e $X correspondendo ao registrador no qual este ser� salvo. 
	   Da mesma forma, o dado salvo n�o completar� os 32 bits poss�veis de 
	   armazenamento, mas um quarto disso (1 byte), s� que estender� o sinal 
	   positivo em todos os casos. Um exemplo disso � lbh $t1, 1($t2), que salva
	   em $t1 o byte salvo na mem�ria com posi��o $t2 deslocado 1 byte e completa 
	   os demais bits com o sinal positivo (0).
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 1, cessando o procedimento caso n�o seja, depois 
	   utiliza uma m�scara para pegar somente os bits especificados. Ent�o, 
	   retorna o dado encontrada na posi��o solicitada da mem�ria, sendo que 
	   este � dividido por 4 nessa implementa��o, por cada elemento do array 
	   possuir 4 bytes. Ademais, durante a execu��o das instru��es, � 
	   especificado o registrador no qual deve ser salvo o valor retornado.
	   Observa��o: as m�scaras usadas s�o 0x000000ff, 0xff000000, 0x00ff0000 e
	   0x0000ff00 e aplica-se com elas a opera��o �AND� (&). Por fim, caso os 
	   bytes coletados n�o sejam do fim da palavra, deslocasse 24, 16 ou 8 bits 
	   antes de retornar o valor (respectivos as tr�s �ltimas m�scaras 
	   indicadas acima).

	6. Store Word (sw)
	   A l�gica dessa fun��o corresponde a: sw $X, IMM($Y) => MEMORY [$Y + IMM] 
	   = $X. Ou seja, $X indicar� o registrador do qual o dado ser� retirado e 
	   o endere�o armazenado em $Y somado ao offset IMM corresponde a posi��o da 
	   mem�ria na qual este ser� salvo. Um exemplo disso � sw $t1, 4($t2), que 
	   salva na mem�ria, com posi��o $t2 deslocado 4 bytes, os bits encontrados 
	   em $t1.
	   No c�digo fonte isso foi implementado do seguinte modo: primeiramente � 
	   analisado se a soma do endere�o com o offset � um m�ltiplo de 4, cessando 
	   o procedimento caso n�o seja, e depois, na posi��o especificada (dividida 
	   por 4 nessa implementa��o, por cada elemento do array possuir 4 bytes), 
	   salvando o dado passado como par�metro, sendo que este durante a execu��o 
	   das instru��es, � especificado a partir do registrador explicitado pelo 
	   comando.

	7. Store HalfWord (sh)
	   Similar ao Store Word, $X indicar� o registrador do qual o dado ser� 
	   retirado e o endere�o armazenado em $Y somado ao offset IMM corresponde a 
	   posi��o da mem�ria na qual este ser� salvo. O que difere � que o dado 
	   salvo n�o completar� os 32 bits poss�veis de armazenamento, mas metade 
	   disso (2 bytes), com os demais bits correspondente ao que havia
	   previamente na mem�ria. Um exemplo disso � sh $t1, 2($t2), que salva na
	   mem�ria, com posi��o $t2 deslocado 2 bytes, os bits encontrados em $t1.
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 2, cessando o procedimento caso n�o seja, e depois, 
	   na posi��o especificada (dividida por 4 nessa implementa��o, por cada 
	   elemento do array possuir 4 bytes), salvando o dado passado como par�metro, 
	   sendo que este durante a execu��o das instru��es, � especificado a partir 
	   do registrador explicitado pelo comando.
	   Observa��o: as m�scaras usadas s�o 0x0000ffff e 0xffff0000 e aplica-se com 
 	   elas a opera��o �AND� (&). Al�m disso, o resultado encontrado � somado ao 
	   encontrado a partir da mesma opera��o �AND� aplicada na posi��o de mem�ria 
	   especificada com a m�scara complementar. Por fim, caso os bytes coletados 
	   sejam do fim da palavra, deslocasse 16 bits para a esquerda antes de 
	   retornar o valor.

	8. Store Byte (sb)
	   Similar ao Store Word, $X indicar� o registrador do qual o dado ser� 
	   retirado e o endere�o armazenado em $Y somado ao offset IMM corresponde a 
	   posi��o da mem�ria na qual este ser� salvo. O que difere � que o dado 
	   salvo n�o completar� os 32 bits poss�veis de armazenamento, mas um quarto 
	   disso (1 byte), com os demais bits correspondente ao que havia previamente 
	   na mem�ria. Um exemplo disso � sb $t1, 1($t2), que salva na mem�ria, com 
	   posi��o $t2 deslocado 1 byte, os bits encontrados em $t1.
	   Na implementa��o, primeiramente � analisado se a soma do endere�o com o 
	   offset � um m�ltiplo de 1, cessando o procedimento caso n�o seja, e depois,
	   na posi��o especificada (dividida por 4 nessa implementa��o, por cada 
	   elemento do array possuir 4 bytes), salvando o dado passado como par�metro, 
	   sendo que este durante a execu��o das instru��es, � especificado a partir 
	   do registrador explicitado pelo comando.
	   Observa��o: as m�scaras usadas s�o 0x000000ff, 0xff000000, 0x00ff0000 e 
	   0x0000ff00 e aplica-se com elas a opera��o �AND� (&). Al�m disso, o 
	   resultado encontrado � somado ao encontrado a partir da mesma opera��o 
	   �AND� aplicada na posi��o de mem�ria especificada com a m�scara 
	   complementar. Por fim, caso os bytes coletados n�o sejam do fim da 
	   palavra, deslocasse 24, 16 ou 8 bits antes de retornar o valor 
	   (respectivos as tr�s �ltimas m�scaras indicadas acima).

Para poder testar e analisar as fun��es acima mencionadas existem outras auxiliares 
criadas: 
	- leitura, que recebe os arquivos bin�rios e salva eles na mem�ria;
	- init, inicializando a mem�ria e os registradores;
	- instrExec, usando o array da mem�ria para determinar as instru��es a 
serem executadas, a partir de informa��es como op code, rs, rt e imm;
	- gerarData, imprimindo os resultados na tela e gerando um bin�rio �dataSim�, 
com o estado final da espa�o dos dados na mem�ria.

______________________________________________________________________________________

 5) TESTES EXECUTADOS
______________________

Conforme os testes executados foram a partir do c�digo ASM, as compara��es de
resultado s�o feitas a partir de imagens mostrando os dados armazenados tanto na 
mem�ria quanto nos registradores em cada etapa tanto no MIPS quanto em seu simulador.
Devido a isso, as informa��es a cerca disso est�o contidas apenas no relat�rio.

______________________________________________________________________________________
______________________________________________________________________________________