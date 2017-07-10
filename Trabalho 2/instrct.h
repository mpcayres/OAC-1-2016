/* Trabalho 2 - SIMULADOR MIPS
Organização e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Marcos Paulo Cayres Rosa
Matrícula: 14/0027131
*/

enum	OPCODES{
EXT=0x00,		LW=0x23,		LB=0x20,		LBU=0x24,
LH=0x21, 		LHU=0x25,		LUI=0x0F,		SW=0x2B,
SB=0x28, 		SH=0x29,		BEQ=0x04,		BNE=0x05,
BLEZ=0x06,	BGTZ=0x07,	ADDI=0x08,	SLTI=0x0A,
SLTIU=0x0B,	ANDI=0x0C,	ORI=0x0D,		XORI=0x0E,
J=0x02,		JAL=0x03,		ADDIU=0x09
} opcode;
 	
enum	FUNCT{
ADD=0x20,		SUB=0x22,		MULT=0x18,	DIV=0x1A,
AND=0x24,		OR=0x25, 		XOR=0x26,		NOR=0x27,
SLT=0x2A,		JR=0x08,		SLL=0x00,	 	SRL=0x02,
SRA=0x03,		SYSCALL=0x0c,	MFHI=0x10,	MFLO=0x12
} funct;

/* Lê um inteiro alinhado, só aceitando endereços múltiplos de 4 {$X = MEMORY[$Y+IMM]}
OPCODE -> 100011 */
int32_t lw(uint32_t address, int16_t kte);

/* Lê meia palavra - 16 bits, retorna inteiro com sinal e só aceita endereços múltiplos de 2
OPCODE-> 100001 */
int32_t lh(uint32_t address, int16_t kte);

/* Lê meia palavra - 16 bits, só aceitando endereços múltiplos de 4
OPCODE -> 100101 */
int32_t lhu(uint32_t address, int16_t kte);

/* Lê um byte, retorna inteiro com sinal
OPCODE -> 100000 */
int32_t lb(uint32_t address, int16_t kte);

/* Lê um byte
OPCODE -> 100100 */
int32_t lbu(uint32_t address, int16_t kte);

/* Escreve um inteiro alinhado na memória, só aceitando endereços múltiplos de 4 {MEMORY[$Y+IMM] = $X}
OPCODE -> 101011 */
void sw(uint32_t address, int16_t kte, int32_t dado);

/* Escreve meia palavra - 16 bits, só aceitando endereços múltiplos de 2
OPCODE -> 101001 */
void sh(uint32_t address, int16_t kte, int16_t dado);

/* Escreve um byte na memória 
OPCODE -> 101000 */
void sb(uint32_t address, int16_t kte, int8_t dado);

/* Executa algumas das operações do Syscall */
void syscall();
