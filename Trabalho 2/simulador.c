/* Trabalho 2 - SIMULADOR MIPS
Organização e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Marcos Paulo Cayres Rosa
Matrícula: 14/0027131
*/

#include "mips.h"

int32_t lw(uint32_t address, int16_t kte){
	int32_t aux;
	
	if((address+kte)%4 != 0){
		printf("\nError. Para 'lw' endereços devem ser múltiplos de 4.\n");
		exit(EXIT_FAILURE);
	}

	aux = (int32_t) mem[(address + kte)/4];

	return aux;
}

int32_t lh(uint32_t address, int16_t kte){
	int32_t aux;

	if((address+kte)%2 != 0){
		printf("\nError. Para 'lh' endereços devem ser múltiplos de 2.\n");
		exit(EXIT_FAILURE);
	}
	
	if((address+kte)%4 == 0){
		aux = (int32_t) (mem[(address + kte)/4] & 0x0000ffff);
		if(aux >= 0x00008000)
			aux = (int32_t) aux | 0xffff0000;
	}
	else{
		aux = (int32_t) (mem[(address + kte-2)/4] & 0xffff0000);
		if(aux >= 0x80000000)
			aux = (int32_t) aux | 0x0000ffff;
		aux = aux >> 16;
	}

	return aux;
}

int32_t lhu(uint32_t address, int16_t kte){
	uint32_t aux;

	if((address+kte)%2 != 0){
		printf("\nError. Para 'lhu' endereços devem ser múltiplos de 2.\n");
		exit(EXIT_FAILURE);
	}
	
	if((address+kte)%4 == 0)
		aux = (int32_t) (mem[(address + kte)/4] & 0x0000ffff);
	else{
		aux = (int32_t) (mem[(address + kte-2)/4] & 0xffff0000);
		aux = aux >> 16;
	}

	return aux;
}

int32_t lb(uint32_t address, int16_t kte){
	int32_t aux;

	if((address+kte)%1 != 0){
		printf("\nError. Para 'lb' endereços devem ser múltiplos de 1.\n");
		exit(EXIT_FAILURE);
	}
	
	if((address+kte)%4 == 0){
		aux = (int32_t) (mem[(address + kte)/4] & 						0x000000ff);
		if(aux >= 0x00000080)
			aux = (int32_t) aux | 0xffffff00;
	}
	else if((address+kte)%4 == 3){
		aux = (int32_t) (mem[(address + kte-3)/4] & 						0xff000000);
		if(aux >= 0x80000000)
			aux = (int32_t) aux | 0x00ffffff;
		aux = aux >> 24;
	}
	else if((address+kte)%2 == 0){
		aux = (int32_t) (mem[(address + kte-2)/4] & 						0x00ff0000);
		if(aux >= 0x00800000)
			aux = (int32_t) aux | 0xff00ffff;
		aux = aux >> 16;
	}
	else{
		aux = (int32_t) (mem[(address + kte-1)/4] & 						0x0000ff00);
		if(aux >= 0x00008000)
			aux = (int32_t) aux | 0xffff00ff;
		aux = aux >> 8;
	}

	return aux;
}

int32_t lbu(uint32_t address, int16_t kte){
	uint32_t aux;

	if((address+kte)%1 != 0){
		printf("\nError. Para 'lbu' endereços devem ser múltiplos de 1.\n");
		exit(EXIT_FAILURE);
	}
	
	if((address+kte)%4 == 0)
		aux = (int32_t) (mem[(address + kte)/4] & 						0x000000ff);
	else if((address+kte)%4 == 3){
		aux = (int32_t) (mem[(address + kte-3)/4] & 						0xff000000);
		aux = aux >> 24;
	}
	else if((address+kte)%2 == 0){
		aux = (int32_t) (mem[(address + kte-2)/4] & 						0x00ff0000);
		aux = aux >> 16;
	}
	else{
		aux = (int32_t) (mem[(address + kte-1)/4] & 						0x0000ff00);
		aux = aux >> 8;
	}

	return aux;
}

void sw(uint32_t address, int16_t kte, int32_t dado){
	if((address+kte)%4 != 0){
		printf("\nError. Para 'sw' endereços devem ser múltiplos de 4.\n");
		exit(EXIT_FAILURE);
	}

	mem[(address + kte)/4] = (int32_t) dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado){
	int32_t aux1, aux2;

	if((address+kte)%2 != 0){
		printf("\nError. Para 'sh' endereços devem ser múltiplos de 2.\n");
		exit(EXIT_FAILURE);
	}
	
	if((address+kte)%4 == 0){
		aux1 = (int32_t) mem[(address + kte)/4] & 0xffff0000;
		aux2 = (int32_t) dado & 0x0000ffff;
		mem[(address + kte)/4] = (int32_t) aux1 + aux2;
	}
	else{
		aux1 = (int32_t) mem[(address + kte-2)/4] & 0x0000ffff;
		aux2 = (int32_t) dado & 0x0000ffff;
		aux2 = aux2 << 16;
		mem[(address + kte-2)/4] = (int32_t) aux1 + aux2;
	}
}

void sb(uint32_t address, int16_t kte, int8_t dado){
	int32_t aux1, aux2;

	if((address+kte)%1 != 0){
		printf("\nError. Para 'sb' endereços devem ser múltiplos de 1.\n");
		exit(EXIT_FAILURE);
	}

	if((address+kte)%4 == 0){
		aux1 = (int32_t) mem[(address + kte)/4] & 0xffffff00;
		aux2 = (int32_t) dado & 0x000000ff;
		mem[(address + kte)/4] =
		(int32_t) aux1 + aux2;
	}
	else if((address+kte)%4 == 3){
		aux1 = (int32_t) mem[(address + kte-3)/4] & 0x00ffffff;
		aux2 = (int32_t) dado & 0x000000ff;
		aux2 = aux2 << 24;
		mem[(address + kte-3)/4] =
			(int32_t) aux1 + aux2;
	}
	else if((address+kte)%2 == 0){
		aux1 = (int32_t) mem[(address + kte-2)/4] & 0xff00ffff;
		aux2 = (int32_t) dado & 0x000000ff;
		aux2 = aux2 << 16;
		mem[(address + kte-2)/4] =
			(int32_t) aux1 + aux2;
	}
	else{
		aux1 = (int32_t) mem[(address + kte-1)/4] & 0xffff00ff;
		aux2 = (int32_t) dado & 0x000000ff;
		aux2 = aux2 << 8;
		mem[(address + kte-1)/4] =
			(int32_t) aux1 + aux2;	
	}
}

void syscall(){
	int aux, c, i;

	if(reg[2] == 1){
		printf("\033[31msyscall\n");
		printf(">> %d\033[0m\n", reg[4]);
	}
	else if(reg[2] == 4){
		printf("\033[31msyscall\n>> ");
		aux = reg[4];
		c = lb(aux,0);
		for(i = 1; c != '\0'; i++){
			printf("%c",c);
			c = lb(aux,i);
			if(i == 3){
				i = -1;
				aux += 4;
			}
		}
		printf("\033[0m\n");
	}
	else if(reg[2] == 10){
		printf("\033[31msyscall\nTerminate program.\033[0m\n");
		syc = true;
	}
	else
		printf("\033[31msyscall\n>> Código em $v0 não implementado ou inválido.\033[0m\n");
}

void init(){
	int i;

	for(i = 0; i < 32; i++)
		reg[i] = 0;

	hi = 0; lo = 0;
	
	for(i = 0; i < MEM_SIZE; i++)
		mem[i] = 0;

}

void leitura(FILE *p, int pos, int impr){
	int32_t n;
	int i = pos, cont;

	fread(&n,sizeof(int32_t),1,p);
	while(!feof(p)){
		mem[i] = n;
		if(n == 0){
			cont = 1;
			fread(&n,sizeof(int32_t),1,p);
			while(n == 0 && !feof(p)){
				cont++; i++;
				mem[i] = n;
				fread(&n,sizeof(int32_t),1,p);
			}
			if(n != 0){
				i++;
				mem[i] = n;
			}
			
			if(impr == 0){
				if(cont == 1) printf("0x%08x 0x%08x ",
								mem[i-1],mem[i]);
				else{
					if(n == 0)
						printf("{%d repetições de 0x%08x} ",
							cont,mem[i]);
					else
						printf("{%d repetições de 0x%08x} 0x%08x ", cont,mem[i-1],mem[i]);
				}
			}
		}
		else{
			if(impr == 0)
				printf("0x%08x ",mem[i]);
		}
		
		i++;
		fread(&n,sizeof(int32_t),1,p);
	}
	printf("\n");
}

void fetch(){
	ri = mem[pc/4];
	pc += 4;
}

void decode(){
	op = ri >> 26 & 0x3f;
	rs = ri >> 21 & 0x1f;
	rt = ri >> 16 & 0x1f;
	rd = ri >> 11 & 0x1f;
	sa = ri >> 6 & 0x1f;
	fct = ri & 0x3f;
	k16 = ri & 0xffff;
	k26 = ri & 0x3ffffff;
}

void execute(){
	int ender;
	
	opcode = op;
	if(opcode == BEQ || opcode == BNE || opcode == BLEZ ||
	   opcode == BGTZ || opcode == ADDI || opcode == ADDIU ||
	   opcode == SLTI || opcode == SLTIU ||
	   opcode == ANDI || opcode == ORI || opcode == XORI){
		if(k16 >= 0x8000)
			k16 = k16 | 0xffff0000;
		else 
			k16 = k16 & 0x0000ffff;
	}
	switch(opcode){
		case LW:
			printf("lw $%d,%d($%d)\n",rt,k16,rs);
			reg[rt] = lw(reg[rs],k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case LH:
			printf("lh $%d,%d($%d)\n",rt,k16,rs);
			reg[rt] = lh(reg[rs],k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case LHU:
			printf("lhu $%d,%d($%d)\n",rt,k16,rs);
			reg[rt] = lhu(reg[rs],k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case LB:
			printf("lb $%d,%d($%d)\n",rt,k16,rs);
			reg[rt] = lb(reg[rs],k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case LBU:
			printf("lbu $%d,%d($%d)\n",rt,k16,rs);
			reg[rt] = lbu(reg[rs],k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case LUI:
			printf("lui $%d,%d\n",rt,k16);
			reg[rt] = k16 << 16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case SW:
			printf("sw $%d,%d($%d)\n",rt,k16,rs);
			sw(reg[rs],k16,reg[rt]);
			ender = (reg[rs] + k16)/4;
			printf(">> mem[$%d+%d] = 0x%08x\n",rs,k16,mem[ender]);
			break;
		case SH:
			printf("sh $%d,%d($%d)\n",rt,k16,rs);
			sh(reg[rs],k16,reg[rt]);
			ender = (reg[rs] + k16)/4;
			printf(">> mem[$%d+%d] = 0x%08x\n",rs,k16,mem[ender]);
			break;
		case SB:
			printf("sb $%d,%d($%d)\n",rt,k16,rs);
			sb(reg[rs],k16,reg[rt]);
			ender = (reg[rs] + k16)/4;
			printf(">> mem[$%d+%d] = 0x%08x\n",rs,k16,mem[ender]);
			break;
		case BEQ:
			printf("beq $%d,$%d,%d\n",rs,rt,k16);
			if(reg[rs] == reg[rt])
				pc += (k16 << 2);
			printf(">> pc = 0x%08x\n",pc);
			break;
		case BNE:
			printf("bne $%d,$%d,%d\n",rs,rt,k16);
			if(reg[rs] != reg[rt])
				pc += (k16 << 2);
			printf(">> pc = 0x%08x\n",pc);
			break;
		case BLEZ:
			printf("blez $%d,%d\n",rs,k16);
			if(reg[rs] <= 0)
				pc += (k16 << 2);
			printf(">> pc = 0x%08x\n",pc);
			break;
		case BGTZ:
			printf("bgtz $%d,%d\n",rs,k16);
			if(reg[rs] > 0)
				pc += (k16 << 2);
			printf(">> pc = 0x%08x\n",pc);
			break;
		case ADDI:
			printf("addi $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = reg[rs] + k16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case ADDIU:
			printf("addiu $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = ((uint32_t) reg[rs] + k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case SLTI:
			printf("slti $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = reg[rs] < k16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case SLTIU:
			printf("sltiu $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = ((uint32_t) reg[rs]) < ((uint32_t) k16);
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case ANDI:
			printf("andi $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = reg[rs] & k16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case ORI:
			printf("ori $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = reg[rs] | k16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case XORI:
			printf("xori $%d,$%d,0x%04x\n",rt,rs,k16);
			reg[rt] = reg[rs] ^ k16;
			printf(">> $%d = 0x%08x\n",rt,reg[rt]);
			break;
		case J:
			printf("j %d\n",k26);
			pc = (pc & 0xf0000000) | (k26 << 2);
			printf(">> pc = 0x%08x\n",pc);
			break;
		case JAL:
			printf("jal %d\n",k26);
			reg[31] = pc;
			pc = (pc & 0xf0000000) | (k26 << 2);
			printf(">> $ra = 0x%08x, pc = 0x%08x\n",reg[31],pc);
			break;
		default:
			break;
	}

	if(op == EXT){
		switch(fct){
			case ADD:
				printf("add $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] + reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case SUB:
				printf("sub $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] - reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case MULT:
				printf("mult $%d,$%d\n",rs,rt);
				lo = reg[rs] * reg[rt];
				printf(">> $lo = 0x%08x\n",lo);
				break;
			case DIV:
				printf("div $%d,$%d\n",rs,rt);
				lo = reg[rs] / reg[rt];
				hi = reg[rs] % reg[rt]; 
				printf(">> $lo = 0x%08x, $hi = 0x%08x\n",lo,hi);
				break;
			case AND:
				printf("and $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] & reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case OR:
				printf("or $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] | reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case XOR:
				printf("add $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] ^ reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case NOR:
				printf("nor $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = ~(reg[rs] | reg[rt]);
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case SLT:
				printf("slt $%d,$%d,$%d\n",rd,rs,rt);
				reg[rd] = reg[rs] < reg[rt];
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case JR:
				printf("jr $%d\n",rs);
				pc = reg[rs];
				printf(">> pc = 0x%08x\n",reg[rs]);
				break;
			case SLL:
				printf("sll $%d,$%d,%d\n",rd,rt,sa);
				reg[rd] = (uint32_t) reg[rt] << sa;
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case SRL:
				printf("srl $%d,$%d,%d\n",rd,rt,sa);
				reg[rd] = (uint32_t) reg[rt] >> sa;
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case SRA:
				printf("sra $%d,$%d,%d\n",rd,rt,sa);
				reg[rd] = reg[rt] >> sa;
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case MFHI:
				printf("mfhi $%d\n",rd);
				reg[rd] = hi;
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case MFLO:
				printf("mflo $%d\n",rd);
				reg[rd] = lo;
				printf(">> $%d = 0x%08x\n",rd,reg[rd]);
				break;
			case SYSCALL:
				syscall();
				break;
			default:
				break;
		}
	}
}

void step(){
	if(pc < MEM_SIZE*2 && syc == false){
		fetch();
		decode();
		execute();
	}
}

void run(){
	while(pc < MEM_SIZE*2 && syc == false){
		fetch();
		decode();
		execute();
	}
}

void dump_mem(int start, int end, char format){
	int i, cont;
	FILE *dataS;

	dataS = fopen("dataSim.bin", "wb");
	
	printf("\nData obtida pela simulação:\n");
	if(format == 'h' || format == 'H'){
		for(i = start/4; i < end/4; i++){
			if(mem[i] == 0) {
				cont = 0;
				while(mem[i] == 0 && i < end/4){
					fprintf(dataS,"0x%08x ",mem[i]);
					cont++; i++;
				}
			
				if(cont == 1) printf("0x%08x 0x%08x ",
								mem[i-1],mem[i]);
				else{
					if(mem[i] == 0)
						printf("{%d repetições de 0x%08x} ",
							cont,mem[i]);
					else
						printf("{%d repetições de 0x%08x} 0x%08x ", cont,mem[i-1],mem[i]);
				}
			}
			else printf("0x%08x ",mem[i]);

			fprintf(dataS,"0x%08x ",mem[i]);
		}
	} else{
		for(i = start/4; i < end/4; i++){
			if(mem[i] == 0) {
				cont = 0;
				while(mem[i] == 0 && i < end/4){
					fprintf(dataS,"%d ",mem[i]);
					cont++; i++;
				}
			
				if(cont == 1) printf("%d %d ",
								mem[i-1],mem[i]);
				else{
					if(mem[i] == 0)
						printf("{%d repetições de %d} ",
							cont,mem[i]);
					else
						printf("{%d repetições de %d} %d ", cont,mem[i-1],mem[i]);
				}
			}
			else printf("%d ",mem[i]);

			fprintf(dataS,"%d ",mem[i]);
		}
	}
	printf("\n");

	fclose(dataS);
}

void dump_reg(char format){
	int i;
	FILE *regS;

	regS = fopen("regSim.bin", "wb");

	printf("\nRegistradores após a simulação:\n");
	if(format == 'h' || format == 'H'){
		for(i = 0; i < 32; i++){
			fprintf(regS,"0x%08x ",reg[i]);
			printf("$%d = 0x%08x   ", i, reg[i]);
		}
		fprintf(regS,"0x%08x 0x%08x 0x%08x",pc,hi,lo);
		printf("pc = 0x%08x\thi = 0x%08x\tlo = 0x%08x\n",pc,hi,lo);
	} else{
		for(i = 0; i < 32; i++){
			fprintf(regS,"%d ",reg[i]);
			printf("$%d = %d   ", i, reg[i]);
		}
		fprintf(regS,"%d %d %d",pc,hi,lo);
		printf("pc = %d   hi = %d   lo = %d\n",pc,hi,lo);
	}
	fclose(regS);
}

int main(){
	FILE *data, *text;
	int aux, ini, fim;
	char fmt;

	system("clear");
	init();

	printf("\n\n ---SIMULADOR MIPS--- \n\nDeseja executar qual dos códigos abaixo:\n 1. Teste - default: números primos\n 2. Fibonacci\nDigite o número correspondente: ");
	scanf("%d",&aux);
	while(aux != 1 && aux != 2){
		printf("Digite 1 para código Default e 2 para Fibonacci: ");
		scanf("%d",&aux);
	}
	getchar();

	if(aux == 1){
		data = fopen("data.bin", "rb");
		text = fopen("text.bin", "rb");
	}
	else{
		data = fopen("dataF.bin", "rb");
		text = fopen("textF.bin", "rb");
	}

	if(!data){
		printf("\nNão foi possível abrir o arquivo data.bin\n");
		return EXIT_FAILURE;
	}
	if(!text){
		printf("\nNão foi possível abrir o arquivo text.bin\n");
		return EXIT_FAILURE;
	}

	printf("\nDeseja ver os dados obtidos a partir do binário?\nCaso positivo, digite 0. Caso contrário, 1: ");
	scanf("%d",&aux);
	leitura(data,MEM_SIZE/2,aux);
	fclose(data);

	printf("\nDeseja ver as instruções obtidas a partir do binário?\nCaso positivo, digite 0. Caso contrário, 1: ");
	scanf("%d",&aux);
	leitura(text,0,aux);
	fclose(text);

	do{
		printf("\nEscolha uma das opções abaixo:\n 1. Step (fetch, decode, execute)\n 2. Run\n 3. Dump_reg\n 4. Dump_mem\n 5. Finalizar\nDigite sua escolha: ");
		scanf("%d",&aux);
		if(aux == 3 || aux == 4){
			printf("Executar em decimal ou hexadecimal [d/h]: ");
			scanf(" %c",&fmt);
			while(fmt != 'h' && fmt != 'H' && 
				 fmt != 'd' && fmt != 'D'){
				printf("Insira 'd' para decimal e 'h' para hexadecimal: ");
				scanf(" %c",&fmt);
			}
		}
		switch(aux){
			case 1:
				step();
				break;
			case 2:
				run();
				break;
			case 3:
				dump_reg(fmt);
				break;
			case 4:
				printf("Digite a posição de início\n(Obs.: memória de dados começa em 8192): ");
				scanf("%d",&ini);
				printf("Digite a posição final\n(Obs.: memória termina em 16384): ");
				scanf("%d",&fim);
				dump_mem(ini,fim,fmt);
				break;
			case 5:
				break;
			default:
				printf("Valores válidos somente de 1 à 5.");
		}
	} while(aux != 5);

	return EXIT_SUCCESS;
}
