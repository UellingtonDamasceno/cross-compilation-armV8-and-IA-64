# Compilação cruzada para ARMv8 e Intel IA-64

Esse é um breve tutorial de como instalar o compiladr GCC e configura-lo para 
permitir compilação cruzada (cross-compiling) a fim de gerar códigos assembly
para processadores de arquitetura ARM-V8 e Intel IA-64 em sistemas operacionais
baseado em Linux. 

### Sumário
- [Motivação](#motivação)
- [Requisitos](#requisitos)
- [Instalação manual](#instalação-manual)
   - [ARM (32 bits)](#arm-32-bits)
   - [ARM-V8 (64 bits)](#arm-v8-64-bits)
   - [Intel IA-64](#intel-ia-64)
- [Instalação com Makefile](#instalação-com-makefile)
- [Gerar assembly](#gerar-assembly)
- [Observações](#observações)
- [Libs extras](#libs-extras)

----

## Motivação

Durante o processo de desenvolvimento de software para sistemas embarcados
é comum ter que gerar arquivos binários para processadores com arquitetura
diferente da que geralmente é utilizada no ambiente de desenvolvimento. 
Produzir um arquivo binário para um processador e executá-lo em outro com 
arquitetura diferente pode gerar problemas de desempenho ocasionados
pela má otimização do código ou a não execução do mesmo, pois diferentes
CPUs têm diferentes capacidades, suportam diferentes conjuntos de instruções
e têm maneiras diferentes de execução de código. 

## Requisitos

## Instalação manual
#### ARM (32 bits)
#### ARM-V8 (64 bits)
#### Intel IA-64
## Instalação com Makefile

## Gerar assembly

## Observações

## Libs extras
