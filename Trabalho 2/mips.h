/* Trabalho 2 - SIMULADOR MIPS
Organização e Arquitetura de Computadores - 1/2016
Professor: Ricardo Pezzuol Jacobi
Turma: C

Marcos Paulo Cayres Rosa
Matrícula: 14/0027131
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "instrct.h"

#define MEM_SIZE 4096
int32_t mem[MEM_SIZE];
int32_t reg[32], lo, hi;
uint32_t pc = 0;
int32_t ri;
int op, rs, rt, rd, sa, fct, k16, k26;
typedef enum{
	false, true
} bool;
bool syc = false;

/* Função para inicializar os vetores de memória e registradores */
void init();

/* Função que lê o arquivo passado como parâmetro e coloca na memória a partir da posição indicada */
void leitura(FILE *p, int pos, int impr);

/* Aponta a instrução atual e guarda qual será a próxima */
void fetch();

/*  Associa o binário com a função correspondente */
void decode();

/* Execução de cada instrução */
void execute();

/* fetch, decode, execute */
void step();

/* Executa todas as instruções fornecidas pelo binário - fetch, decode, execute até o término*/
void run();

/* Imprime na tela e gera um arquivo binário com o resultado da memória de dados */
void dump_mem(int start, int end, char format);

/* Imprime na tela e gera um arquivo binário com o resultado dos registradores */
void dump_reg(char format);
