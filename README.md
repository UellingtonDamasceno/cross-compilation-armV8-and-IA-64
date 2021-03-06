# Compilação cruzada para ARMv8 e Intel IA-64

Esse é um breve tutorial de como instalar o compilador GCC e configurá-lo para 
permitir compilação cruzada (cross-compiling) a fim de gerar códigos assembly
para processadores de arquitetura ARM-V8 e Intel IA-64 em sistemas operacionais
baseados em Linux. 

### Sumário
- [Motivação](#motivação)
- [Requisitos](#requisitos)
- [Instalação manual](#instalação-manual)
   - [ARM (32 bits)](#arm-32-bits)
   - [ARM-V8 (64 bits)](#arm-v8-64-bits)
   - [Intel IA-64](#intel-ia-64)
- [Instalação com Makefile](#instalação-com-makefile)
   - [Instalação completa](#instalação-completa)
   - [Instalação individual](#instalação-individual)
- [Gerar assembly](#gerar-assembly)
- [Observações](#observações)

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

O presente tutorial garante funcionamento para sistemas que possuem configurações
semelhantes ou que tenham a mesma versão do Ubuntu, e foi produzido utilizando as seguintes configurações:


      Distro: Linux Mint 19.3 Tricia
      Base: Ubuntu 18.04
      Kernel: 5.4.0-42-generic x86_64
      Processador: Intel Core i3-4005U
   

## Instalação manual

Os passos a seguir definem a ordem de comandos que devem ser executados para 
replicarem os resultados obtidos em cada arquitetura. 

#### ARM (32 bits)
      
      sudo apt install libc6-dev-armhf-cross
      sudo apt install gcc-8-arm-linux-gnueabihf
      
#### ARM-V8 (64 bits)
      
      sudo apt install libc6-dev-arm64-cross
      sudo apt install gcc-8-aarch64-linux-gnu
      
#### Intel IA-64

      sudo apt install libc6-dev gcc-8
      
## Instalação com Makefile 

Os passos a seguir fazem uso do utilitário GNU make
verifique se tem ele instalado em seu sitema executando
o seguinte código em seu terminal:

      make --version
   
Caso não tenha o GNU maker utilize o seguite comando:

      sudo apt install make makedev
 
### Instalação completa
   
Para instalar todos compiladores de uma unica vez. 

      sudo make full-install
   
   > Nota: 
   >
   > Ao utilizar o comando anterior será necessário 
   > confirmar a intenção de instalação por 3 vezes,
   > sendo uma para cada compilador. 

#### Instalação individual

Instalar somente o gcc-8 utilize:

      sudo make install-intel-compiler

Instalar o GCC para arm32 utilize:
      
      sudo make install-arm32-cross-compiler

Instalar o GCC para arm64 utilize:
      
      sudo make install-arm64-cross-compiler
     
## Gerar assembly
   Após ter instalado todos os compiladores é possível gerar 
   código assembly de todos exemplos desse repositório utilizando 
   o seguinte comando:
      
      make generate-all-assembly-code
      
   Também é possivel gerar apenas para uma única arquitetura por vez. 
   
      make generete-assembly-arm32
      make generate-assembly-arm64
      make generate-assembly-intel
   
   > Lembando que o compilador deverá está instalado, caso contário dará erro. 
   
## Observações
   Os pacotes "libc-6-dev", "libc6-dev-armhf-cross" e "libc6-dev-arm64-cross"
   comtêm os links simbóĺicos, cabeçalhos, e arquivos objeto nécessarios para 
   compilar e vincular programas que usam a biblioteca C padrão. Sem elas não é 
   possível gerar arquivos executáveis, e por isso, os seguintes comandos do 
   Makefile apresentarão erros se executados, caso elas não tenham sido
   instaladas: 
     
   - make compile-arm32
   - make compile-arm64
   - make compile-intel
   
