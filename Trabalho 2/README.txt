______________________________________________________________________________________

  S I M U L A D O R   M I P S
______________________________________________________________________________________

  Readme.txt

  Esse ReadMe apresenta informa��es a cerca da implementa��o de algumas fun��es do Mars Mips em C desenvolvida para a disciplina de Organiza��o e Arquitetura de Computadores. O conte�do aqui visto � similar ao do relat�rio, apenas carecendo das imagens ilustrativas dos testes realizados.

______________________________________________________________________________________

 CONTE�DOS
___________

	1) INFORMA��ES B�SICAS DO TRABALHO
	2) DESCRI��O DO PROBLEMA
	3) INSTRU��ES
	4) INSTRU��ES IMPLEMENTADAS
	5) TESTES EXECUTADOS

______________________________________________________________________________________

 1) INFORMA��ES B�SICAS DO TRABALHO
____________________________________

Trabalho 2
Organiza��o e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Estudante: Marcos Paulo Cayres Rosa 
Matr�cula: 14/0027131

Detalhes do c�digo fonte:
O programa foi compilado e executado atrav�s de um sistema Ubuntu 14.04.1, sem o uso de IDEs, apenas editores b�sicos de texto. Ademais, o c�digo foi escrito em linguagem C e compilado com o gcc 4.8.4.

______________________________________________________________________________________

 2) DESCRI��O DO PROBLEMA
____________________________________

	O problema apresentado consiste em desenvolver 38 instru��es b�sicas do Assembly e simular suas execu��es no Mars Mips, considerando os registradores que podem estar em uso e, especialmente, as modifica��es na mem�ria de instru��es e dados. Para tal deveria se criar um array que correspondesse as 16384 posi��es da mem�ria, tendo em vista que cada uma representa 1 byte e considerando que na simula��o cada um dos 4096 �ndices ter� 32 bits (ou 4 bytes).
	Al�m dos detalhes apresentados anteriormente, tamb�m era necess�rio utilizar ou desenvolver c�digos ASM (n�meros primos, fibonacci e outros de teste) para gerar instru��es e dados - "text.bin" e "data.bin", respectivamente - que seriam salvos em bin�rio e, ap�s isso, na mem�ria do simulador. Por fim, deve-se imprimir e comparar os resultados obtidos diretamente pelo MIPS e os simulados em C.

______________________________________________________________________________________

 3) INSTRU��ES
_______________

	1. Utilizando um terminal Ubuntu, abrir a pasta na qual se encontra os arquivos simulador.c, mips.h e instrct.h;
	2. Efetuar o comando a seguir no terminal: "gcc simulador.c -o Nome_Executavel";
	3. Executar o arquivo criado com "./Nome_Executavel";
	4. Durante a execu��o ser� necess�rio que o usu�rio escolha dentre as diferentes op��es do menu, precisando somente seguir as informa��es explicitadas no terminal. No caso, seguir� a ordem: escolha do c�digo a ser executado (c�digo de teste, originalmente o de n�mero primos - "text" e "data" - ou de fibonacci - "textF" e "dataF"); definir se quer ver os dados e instru��es salvas na mem�ria impressos; optar entre rodar o programa inteiro, executar cada etapa individualmente, impress�o dos  resultados obtidos (pela mem�ria ou os registradores) e finalizar a execu��o do programa. Observa��o: ao executar Syscall o texto fica em vermelho para deixar mais evidente, em vista que n�o h� uma caixa separada de sa�da e s�o impressos todas as instru��es e seus respectivos resultados ao executar Run ou cada etapa de Step.
	5. Em rela��o aos testes das fun��es, estes ocorrem em base as instru��es passadas pelo bin�rio e, por causa disso, o usu�rio deve utilizar-se dos arquivos "text" e "data" que j� vem inclusos na pasta compactada, podendo tamb�m modificar o c�digo ASM ou criar um novo para ser executado pelo simulador - gerando os bin�rios necess�rios. Para isso s� � preciso conferir se o bin�rio do "data" � correspondente ao seu estado inicial e, a fim de que os resultados gerados entre o MIPS e seu simulador sejam iguais, os comandos correpondam apenas as instru��es elaboradas no c�digo fonte - tendo em vista que somente essas ser�o executadas em ambos.

______________________________________________________________________________________

 4) INSTRU��ES IMPLEMENTADAS
__________________________

	A seguir est�o apresentadas as l�gicas e formas de implementa��o resumidas das 38 intru��es requisitadas. Para maiores detalhes das 8 primeiras, recorrer ao relat�rio do trabalho 1. Observa��es: quando os registradores estiverem referenciados como S, T ou D significa que s�o decodificado a partir de rs, rt ou rd, respectivamente.
	1. Load Word (lw)
	lw $X, IMM($Y) => $X = MEMORY [$Y + IMM]. Ou seja, o endere�o armazenado em $Y somado ao offset IMM indicar� a posi��o da mem�ria da qual o dado ser� retirado e $X corresponde ao registrador no qual este ser� salvo.
No c�digo fonte isso foi implementado do seguinte modo: primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 4, cessando o procedimento caso n�o seja, e depois retorna o dado encontrada na posi��o solicitada da mem�ria, sendo que este � dividido por 4 nessa implementa��o, por cada elemento do array possuir 4 bytes. Ademais, durante a execu��o das instru��es, � especificado o registrador no qual deve ser salvo o valor retornado.

	2. Load HalfWord (lh)
	Similar ao Load Word, difere pelo fato do dado salvo n�o completar os 32 bits poss�veis de armazenamento, mas metade disso (2 bytes). No caso, opera em cima de uma metade determinada do dado, estendendo o sinal para os demais bits.
Na implementa��o, primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 2, cessando o procedimento caso n�o seja, depois utiliza uma m�scara para pegar somente os bits especificados e repete o sinal encontrado. Ademais, segue a l�gica do Load Word.

	3. Load HalfWord Unsigned (lhu)
	Possui quase o mesmo modo de opera��o do Load HalfWord, com a diferen�a estando em n�o estender o sinal, mas mant�-lo como positivo em todos os casos.

	4. Load Byte (lb)
	Similar ao Load Word, difere pelo dado salvo n�o completar os 32 bits poss�veis de armazenamento, mas um quarto disso (1 byte). Dessa forma, opera apenas em um byte determinado da palavra, estendendo o sinal nos demais bits.
Na implementa��o, primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 1, cessando o procedimento caso n�o seja, depois utiliza uma m�scara para pegar somente os bits especificados e repete o sinal encontrado. Ademais, segue a l�gia do Load Word.

	5. Loab Byte Unsigned (lbu)
	Possui quase o mesmo funcionamento do Load Byte,  s� que estender� o sinal positivo em todos os casos.

	6. Store Word (sw)
	sw $X, IMM($Y) => MEMORY [$Y + IMM] = $X. Ou seja, $X indicar� o registrador do qual o dado ser� retirado e  o endere�o armazenado em $Y somado ao offset IMM corresponde a posi��o da mem�ria na qual este ser� salvo.
No c�digo fonte isso foi implementado do seguinte modo: primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 4, cessando o procedimento caso n�o seja, e depois, na posi��o especificada (dividida por 4 nessa implementa��o, por cada elemento do array possuir 4 bytes), salvando o dado passado como par�metro, sendo que este durante a execu��o das instru��es, � especificado a partir do registrador explicitado pelo comando.

	7. Store HalfWord (sh)
	Similar ao Store Word, difere pelo dado salvo n�o completar os 32 bits poss�veis de armazenamento, mas metade disso (2 bytes), com os demais bits correspondendo ao que havia previamente na mem�ria.
Na implementa��o, primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 2, cessando o procedimento caso n�o seja. Ademais, opera da mesma forma que o Store Word.

	8. Store Byte (sb)
	Similar ao Store Word, difere pelo dado salvo n�o completar os 32 bits poss�veis de armazenamento, mas um quarto disso (1 byte), com os demais bits correspondente ao que havia previamente na mem�ria. 
Na implementa��o, primeiramente � analisado se a soma do endere�o com o offset � um m�ltiplo de 1, cessando o procedimento caso n�o seja. Ademais, segue a l�gica do Store Word.

	9.Load Upper Immediate (lui)
	O valor imediato � deslocado 16 bits para esquerda e salvo no registrador T, com os 16 bits inferiores permanecendo como zero.

	10.Branch on Equal (beq)
	Caso os valores salvos nos registradores S e T sejam iguais, avan�a o pc com o valor correspondente ao imediato deslocado 2 bits para esquerda.

	11.Branch on Not Equal (bne)
	Similar ao Branch on Equal, por�m analisa se os registrados s�o diferentes.

	12.Branch on Less than or Equal to Zero (blez)
	Similar ao Branch on Equal, por�m analisa se o registrador especificado � menor ou igual � zero.

	13.Branch on Greater than Zero (bgtz)
	Similar ao Branch on Equal, por�m analisa se o registrador especificado � maior do que zero.

	14.Add Immediate (addi)
	Faz adi��o entre um registrador S e um valor imediato (com sinal estendido) e salva o resultado em um registrador T.

	15.Set on Less than Immediate (slti)
	Se o registrador S � menor do que o imediato, T � colocado como 1, caso contr�rio, 0.

	16.Set on Less than Immediate Unsigned 	(sltiu)
	Mesmo processo do slti, mas com o imediato sem sinal.

	17.Bitwise And Immediate (andi)
	Executa um opera��o and entre um registrador S e um imediato e salva em T.

	18.Bitwise Or Immediate (ori)
	Mesma l�gica de andi com or ao inv�s de and.

	19.Bitwise Exclusive Or Immediate (xori)
	Mesma l�gica de andi com xor ao inv�s de and.

	20.Jump (j)
	Iguala pc ao endere�o especificado pelo imediato (deslocado 2 bits para esquerda).

	21.Jump And Link (jal)
	Executa as fun��es de j, mas tamb�m salva no registrador $31 o endere�o atual do pc.

	22.Add Immediate Unsigned (addiu)
	Instru��o colocada a mais das que foram pedidas originalmente, por usar em alguns testes. Executa o mesmo que addi, por�m sem overflow.

	23.Add (add)
	Adi��o entre dois registradores S e T, salvando em D o resultado.

	24.Subtract (sub)
	Subtra��o entre dois registradores S e T, salvando em D o resultado.

	25.Multiply (mult)
	Multiplica��o entre dois registradores S e T, salvando o resultado em $lo.

	26.Divide (div)
	Divis�o entre dois registradores S e T, salvando o quociente em $lo e o resto em $hi.

	27.Bitwise And (and)
	Opera��o and entre dois registradores S e T, salvando o resultado em D.

	28.Bitwise or (or)
	Opera��o or entre dois registradores S e T, salvando o resultado em D.

	29.Bitwise Exclusive Or (xor)
	Opera��o xor entre dois registradores S e T, salvando o resultado em D.

	30.Bitwise Not Or (nor)
	Opera��o nor entre dois registradores S e T, salvando o resultado em D.

	31.Set on Less Than (slt)
	Se S � menor do que T, D � igualado � 1, caso contr�rio, 0.

	32.Jump Register (jr)
	Iguala pc ao endere�o condito em S.

	33.Shift Left Logical (sll)
	Salva em D o valor deslocado de T pela quantidade especificada pelo shamt.

	34.Shift Right Logical (srl)
	Salva em D o valor deslocado de T pela quantidade espeificada pelo shamt.

	35.Shift Right Arithmetic (sra)
	Mesma opera��o de srl, por�m com o sinal deslocado junto.

	36.Move From HI (mfhi)
	O conte�do de $hi � colocado em D.

	37.Move From LO (mflo)
	O conte�do de $lo � colocado em D.

	38.Syscall
	Gera uma interrup��o de software, sendo que tr�s das op��es foram implementadas: 
		I.Registrador $2 igual a 1 faz imprimir valor inteiro salvo no registrador $4.
		II.Registrador $2 igual a 4 faz imprimir caracteres salvos a partir do registrador $4 at� encontrador um comando de parada.
		III.Registrador $2 igual a 10 finaliza a execua��o do c�digo.

	Para poder testar de fato o simulador e as instru��es mencionadas acimas, existem fun��es criadas com o prop�sito de imitar o funcionamento do MIPS. Sendo que estas se utilizam de um array de mem�ria de tamanho 4096 (cada elemento com 32 bits) e os 32 registradores mais pc, hi, lo e ri.
	-init, inicializa a mem�ria e os registradores;
	-leitura, recebe os arquivos bin�rios e salva eles na mem�ria;
	-fetch, l� uma instru��o da mem�ria, associa esta ao campo ri e coloca pc para indicar a pr�xima a ser executada;
	-decode, usa o array da mem�ria para determinar as instru��es a serem executadas, a partir de informa��es como opcode, rs, rt, rd, shamt, funct e constantes de 16 ou 24 bits;
	-execute, de acordo com os campos descodificados, executa a instru��o demandada;
	-step, chama as fun��es fetch, decode e execute caso o pc n�o tenha excedido o m�ximo e o syscall de finaliza��o n�o tenha sido chamado;
	-run, executa as instru��es de modo similar ao step, por�m n�o chama uma distinta a cada vez que � utilizado, mas todas de uma vez at� chegar ao m�ximo valor para pc ou a chamada de um syscall de finaliza��o;
?dump_reg, imprime na tela e gera um bin�rio "regSim" com os valores dos registradores;
?dump_data, imprime na tela e gera um bin�rio "dataSim" com os valores encontrados no espa�o especificado da mem�ria, recomendado ser o m�nimo e m�ximo dos dados.
______________________________________________________________________________________

 5) TESTES EXECUTADOS
______________________

Conforme os testes executados foram a partir do c�digo ASM, as compara��es de resultado s�o feitas a partir de imagens mostrando os dados armazenados tanto na  mem�ria quanto nos registradores em cada etapa tanto no MIPS quanto em seu simulador. Devido a isso, as informa��es a cerca disso est�o contidas apenas no relat�rio.

______________________________________________________________________________________
______________________________________________________________________________________
