ipl.bin : ipl.nas Makefile
	nasm ipl.nas -o ipl.bin -l ipl.lst

helloos.img : ipl.bin Makefile
	cat ipl.bin > helloos.img

asm :
	make -r ipl.bin

img :
	make -r helloos.img

run :
	make img
	qemu-system-i386 helloos.img
