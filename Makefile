# Author: Uellington da Conceição Damasceno
# Email: uellington99@gmail.com || udamasceno@ecomp.uefs.br

allCFiles = $(wildcard ./*/*.c)

arm32-compiler = arm-linux-gnueabihf-gcc-8
arm64-compiler = aarch64-linux-gnu-gcc-8
intel-compiler = gcc-8

src = code.c

full-install:	install-intel-compiler install-arm32-cross-compiler install-arm64-cross-compiler

install-intel-compiler:
	@sudo apt install gcc-8-multilib gcc-8

install-arm32-cross-compiler:
	@sudo apt install gcc-8-multilib-arm-linux-gnueabi gcc-8-multilib-arm-linux-gnueabihf gcc-8-arm-linux-gnueabihf

install-arm64-cross-compiler:
	@sudo apt install libc6-dev-arm64-cross gcc-8-aarch64-linux-gnu

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
	@for dir in ./ex*/; do cd $${dir}; $(arm32-compiler) -S -o arm32-default $(src) -march=armv8-a; $(arm32-compiler) -O1 -S -o arm32-otimized-O1 $(src) -march=armv8-a;$(arm32-compiler) -O2 -S -o arm32-otimized-O2 $(src) -march=armv8-a;$(arm32-compiler) -O3 -S -o arm32-otimized-O3 $(src) -march=armv8-a;cd ..;done;
	@echo "Gerado."

generate-assembly-arm64:
	@echo "Gerando assembly para arquitetura ARM-64 bits."
	@for dir in ./ex*/; do cd $${dir}; $(arm64-compiler) -S -o arm64-default $(src); $(arm64-compiler) -O1 -S -o arm64-otimized-O1 $(src); $(arm64-compiler) -O2 -S -o arm64-otimized-O2 $(src); $(arm64-compiler) -O3 -S -o arm64-otimized-O3 $(src); cd ..; done;
	@echo "Gerado"

generate-assembly-intel:
	@echo "Gerando assembly para arquitetura Intel."
	@for dir in ./ex*/; do cd $${dir}; $(intel-compiler) -S -o intel-default $(src); $(intel-compiler) -S -O1 -o intel-otimized-O1 $(src); $(intel-compiler) -S -O2 -o intel-otimized-O2 $(src); $(intel-compiler) -S -O3 -o intel-otimized-O3 $(src); cd ..; done;
	@echo "Gerado."
clean:
	for dir in ./ex*/; do cd $${dir}; find . -type f -not \( -name '*.c' -or -name '*.md' \) -delete; cd ..; done;

