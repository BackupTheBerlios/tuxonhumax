#
# The Main-Project Makefile
#	(C)2001 Markinho for the TuxOnHumax-Project
####
# $LOG
#
#
XDevRoot=$(PWD)

help:
	@echo ""
	@echo "TuxOnHumax Project"
	@echo ""
	@echo "Following subproject can be build:"
	@echo " fetchAll (fetch all Packets from the internet"
	@echo " core( Compiler und glibc )"
	@echo " 	.binutils       ( Binutils )"
	@echo " 	.gcc1           ( Compiler [C] )"
	@echo " 	.kernelHeader   ( Header )"
	@echo " 	.glibc          ( Glibc )"
	@echo " 	.gcc2           ( final Compiler [C,C++] )"
	@echo ""
	@echo "Good Luck and Have FUN"
	

core= \
	.binutils \
	.gcc1 \
	.kernel \
	.glibc \
	.gcc2 \

fetchAll:
	make -C Archives all
	

core: $(core)


checkPATH:
ifeq ( , $(findstring $(XDevRoot)/bin,$(PATH)))
	@echo "Please Add >>$(XDevRoot)/bin<< to your PATH"
	@exit 1;
else
	@echo "PATH OK!"
endif

#
# binutils
#
binutils-2.11.90.0.25.tar.gz:
	make -C Archives $@

.binutils: binutils-2.11.90.0.25.tar.gz
	tar -xzf Archives/binutils-2.11.90.0.25.tar.gz
	cd binutils-2.11.90.0.25 && patch -p1 < ../Patches/binutils_antiDOS.diff
	
	mkdir mips-binutils
	cd mips-binutils && ../binutils-2.11.90.0.25/configure \
		--host=i686-pc-linux-gnu \
		--target=mips-linux \
		--prefix=$(XDevRoot) \
		--exec-prefix=$(XDevRoot) \
		--libdir=$(XDevRoot)/lib \
		--nfp
		-v
		
	make -C mips-binutils
	make -C mips-binutils install
	
	touch .binutils

#
# GCC - 1st pass
#
gcc-3.0.1.tar.gz:
	make -C Archives $@

.gcc1: checkPATH .binutils \
	gcc-3.0.1.tar.gz
	tar -xzf Archives/gcc-3.0.1.tar.gz
	
	mkdir mips-gcc1
	cd mips-gcc1 && ../gcc-3.0.1/configure \
		--target=mips-linux \
		--enable-languages=c \
		--nfp \
		--disable-shared \
		--prefix=$(XDevRoot)
		
	make -C mips-gcc1
	make -C mips-gcc1 install
	
	touch .gcc1

#
# Kernel Header anlegen
#
linux-2.4.5.tar.bz2:
	make -C Archives $@

.kernelHeader: linux-2.4.5.tar.bz2
	tar -xjf Archives/linux-2.4.5.tar.bz2
	mv linux linux-2.4.5
	
	cp Patches/linux-2.4.5-BaseConfig linux-2.4.5/.config
	
	cd linux-2.4.5 && make ARCH=mips oldconfig
	cd linux-2.4.5 && make ARCH=mips include/linux/version.h
		
	ln -sf $(XDevRoot)/linux-2.4.5/include/linux include/linux
	ln -sf $(XDevRoot)/linux-2.4.5/include/asm-mips include/asm
	
	touch .kernelHeader

#
# Die XGlibc erstellen
#
glibc-2.2.3.tar.gz glibc-2.2.3-mips-base-addr-got.diff glibc-linuxthreads-2.2.3.tar.gz:
	make -C Archives $@

.glibc: checkPATH glibc-2.2.3.tar.gz glibc-2.2.3-mips-base-addr-got.diff \
		glibc-linuxthreads-2.2.3.tar.gz 
	tar -xzf Archives/glibc-2.2.3.tar.gz
	
	cd glibc-2.2.3 && patch -p 1 -i ../Archives/glibc-2.2.3-mips-base-addr-got.diff
	
	tar -xzf Archives/glibc-linuxthreads-2.2.3.tar.gz -C glibc-2.2.3
	
	mkdir mips-glibc
	cd mips-glibc && CC=mips-linux-gcc \
		AR=mips-linux-ar RANLIB=mips-linux-ranlib \
		../glibc-2.2.3/configure \
		--build=i686-pc-linux \
		--host=mips-linux \
		--prefix=$(XDevRoot) \
		--without-fp \
		--with-headers=$(XDevRoot)/linux-2.4.5/include \
		--enable-add-ons=linuxthreads
		
	make -C mips-glibc
	make -C mips-glibc install
	
	touch .glibc

#
# GCC - 2nd pass
#
.gcc2: checkPATH
	mkdir mips-gcc2
	cd mips-gcc2 && ../gcc-3.0.1/configure \
		--target=mips-linux \
		--enable-languages=c,c++ \
		--nfp \
		--enable-shared \
		--enable-threads \
		--with-libs=$(XDevRoot)/lib \
		--with-headers=../include \
		--prefix=$(XDevRoot)
	
	make -C mips-gcc2
	make -C mips-gcc2 install
	
	touch .gcc2


