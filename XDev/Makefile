#
# The Main-Project Makefile
#	(C)2001 Markinho for the TuxOnHumax-Project
####
# $LOG
#
#
XDevRoot=/Humax

help:
	@echo ""
	@echo "TuxOnHumax Project"
	@echo ""
	@echo "Following subproject can be build:"
	@echo " fetchAll (fetch all Packets from the internet"
	@echo " core( Compiler und glibc )"
	@echo " .binutils( xBinutils )"
	@echo " .gcc     ( xCompiler )"
	@echo " .gcc-core( core + header? )"
	@echo " .glibc   ( xGlibc )"
	@echo " .gcc-g++ ( final xCompiler )"
	@echo ""
	@echo "Good Luck and Have FUN"
	

core= \
	.binutils \
	.gcc \
	.gcc-core \
	.glibc \
	.gcc-g++ \

fetchAll:
	make -C Archives all
	

core: $(core)

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
		-objdir=.
	make -C mips-binutils
	make -C mips-binutils install
	
	touch .binutils

.gcc:
	tar -xzf Archives/gcc-3.0.1.tar.gz
	mkdir mips-gcc
	cd mips-gcc && ../gcc-3.0.1/configure \
		--target=mips-linux \
		--enable-languages=c --disable-shared \
		--prefix=$(XDevRoot)
	make -C mips-gcc
	make -C mips-gcc install

.gcc-core:

.glibc:
	tar -xzf Archives/glibc-2.2.3.tar.gz
	cd glibc-2.2.3 && patch -p 1 -i ../Archives/glibc-2.2.3-mips-base-addr-got.diff
	tar -xzf Archives/glibc-linuxthreads-2.2.3.tar.gz
	mkdir mips-glibc
	cd mips-glibc && ../glibc-2.2.3/configure \
		--build=i686-linux \
		--host=mips-linux \
		--enable-add-ons \
		--prefix=/$(XDevRoot)
	make -C mips-glibc
	make -C install install_root=/$(XDevRoot)/glibc-inst
	ln -s glibc-inst/lib lib
	ln -s glibc-inst/include include

.gcc-g++: