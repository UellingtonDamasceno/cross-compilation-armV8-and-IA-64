# Author: Uellington da Conceição Damasceno
# Email: uellington99@gmail.com || udamasceno@ecomp.uefs.br

allCFiles = $(wildcard ./*/*.c)

arm32-compiler = arm-linux-gnueabihf-gcc-8
arm64-compiler = aarch64-linux-gnu-gcc-8
intel-compiler = gcc-8

src = code.c

full-install:	install-intel-compiler install-arm32-cross-compiler install-arm64-cross-compiler

install-intel-compiler:
	@sudo apt install libc6-dev gcc-8
	@echo "GCC-8 instalado."

install-arm32-cross-compiler:
	@sudo apt install libc6-dev-armhf-cross gcc-8-arm-linux-gnueabihf
	@echo "ARM 32 cross compiler instalado."

install-arm64-cross-compiler:
	@sudo apt install libc6-dev-arm64-cross gcc-8-aarch64-linux-gnu
	@echo "ARM 64 cross compiler instalado"

compile-arm32:
	@for dir in ./ex*/; do cd $${dir}; $(arm32-compiler) -o arm32-compiled $(src); cd ..; done;

compile-arm64:
	@for dir in ./ex*/; do cd $${dir}; $(arm64-compiler) -o arm64-compiled $(src); cd ..; done;

compile-intel:
	@for dir in ./ex*/; do cd $${dir}; $(intel-compiler) -o intel-compiled $(src); cd ..; done;

generate-all-assambly-code:	generate-assembly-arm32 generate-assembly-arm64 generate-assembly-intel
	@echo "Todos os códigos assembly foram gerados!"

generate-assembly-arm32:
	@echo "Gerando assembly para arquitetura ARM-32 bits."
	@for dir in ./ex*/; do cd $${dir}; $(arm32-compiler) -o arm32-default.s $(src) -S -march=armv8-a; $(arm32-compiler) -o arm32-optimized-O1.s $(src) -O1 -S -march=armv8-a; $(arm32-compiler) -o arm32-optimized-O2.s $(src) -O2 -S -march=armv8-a; $(arm32-compiler) -o arm32-optimized-O3.s $(src) -O3 -S -march=armv8-a; cd ..; done;

generate-assembly-arm64:
	@echo "Gerando assembly para arquitetura ARM-64 bits."
	@for dir in ./ex*/; do cd $${dir}; $(arm64-compiler) -o arm64-default.s $(src) -S; $(arm64-compiler) -o arm64-optimized-O1.s $(src) -O1 -S; $(arm64-compiler) -o arm64-optimized-O2.s $(src) -O2 -S; $(arm64-compiler) -o arm64-optimized-O3.s $(src) -O3 -S; cd ..; done;


generate-assembly-intel:
	@echo "Gerando assembly para arquitetura Intel."
	@for dir in ./ex*/; do cd $${dir}; $(intel-compiler) -o intel-default.s $(src) -S -masm=intel; $(intel-compiler) -o intel-optimized-O1.s $(src) -S -O1 -masm=intel; $(intel-compiler) -o intel-optimized-O2.s $(src) -S -O2 -masm=intel; $(intel-compiler) -o intel-optimized-O3.s $(src) -S -O3 -masm=intel; cd ..; done;

clean:
	@for dir in ./ex*/; do cd $${dir}; find . -type f -not \( -name '*.c' -or -name '*.md' \) -delete; cd ..; done;
	@echo "Limpeza concluida!"
