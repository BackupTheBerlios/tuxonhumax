#
# The Main-Project Makefile
#	(C)2001 Markinho for the TuxOnHumax-Project
####
# Changelog can be found at the end of the file !
#############################
# Configuration
###

include XDev.config

XDevRoot=$(PWD)

vpath %.tar.gz Archives
vpath %.tar.bz2 Archives
vpath %.diff Archives
#############################

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
	@echo " boot( MiLiLo und Kernel )"
	@echo " 	.miLiLo         (Linux Loader for MIPS)"
	@echo " 	.kernel         (Linux Kernel)"
	@echo ""
	@echo "Good Luck and Have FUN"


core= \
	.binutils \
	.gcc1 \
	.kernelHeader \
	.glibc \
	.gcc2

boot= \
	.miLiLo \
	.kernel


fetchAll:
	make -C Archives all


core: $(core)
boot: $(boot)


checkPATH:
ifeq ( , $(findstring $(XDevRoot)/bin,$(PATH)))
	@echo "Please Add >>$(XDevRoot)/bin<< to your PATH"
	@exit 1;
endif
	@echo "PATH OK!"


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
		-v
		
	make -C mips-binutils
	make -C mips-binutils install
	
ifdef deleteBuildingDirectories
	rm -rf mips-binutils
endif
ifdef deleteSourceDirectories
	rm -rf binutils-2.11.90.0.25
endif	
	touch .binutils

#
# GCC - 1st pass
#
gcc-3.0.1.tar.gz:
	make -C Archives $@

.gcc1: .binutils \
	gcc-3.0.1.tar.gz
	
	make checkPATH
	tar -xzf Archives/gcc-3.0.1.tar.gz
	
	mkdir mips-gcc1
	cd mips-gcc1 && ../gcc-3.0.1/configure \
		--target=mips-linux \
		--enable-languages=c \
		--disable-shared \
		--prefix=$(XDevRoot)
		
	make -C mips-gcc1
	make -C mips-gcc1 install
	
ifdef deleteBuildingDirectories
	rm -rf mips-gcc1
endif
#ifdef deleteSourceDirectories **disabled damit .gcc2 auch noch laeuft**
#	rm -rf gcc-3.0.1
#endif	
	touch .gcc1

#
# Kernel Header anlegen
#
linux-$(KernelVersion).tar.bz2:
	make -C Archives $@

.kernelHeader: .binutils \
		linux-$(KernelVersion).tar.bz2
	tar -xIf Archives/linux-$(KernelVersion).tar.bz2
	mv linux linux-$(KernelVersion)
	ln -s linux-$(KernelVersion) linux
	
	cp Patches/linux-$(KernelVersion)-BaseConfig linux-$(KernelVersion)/.config
	
	cd linux-$(KernelVersion) && make ARCH=mips oldconfig
	cd linux-$(KernelVersion) && make ARCH=mips include/linux/version.h

	ln -sf $(XDevRoot)/linux-$(KernelVersion)/include/linux include/linux
	ln -sf $(XDevRoot)/linux-$(KernelVersion)/include/asm-mips include/asm

	touch .kernelHeader

#
# Die XGlibc erstellen
#
glibc-2.2.3.tar.gz glibc-2.2.3-mips-base-addr-got.diff glibc-linuxthreads-2.2.3.tar.gz:
	make -C Archives $@

.glibc: .binutils .gcc1 .kernelHeader\
		glibc-2.2.3.tar.gz glibc-2.2.3-mips-base-addr-got.diff \
		glibc-linuxthreads-2.2.3.tar.gz
	make checkPATH
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
		--with-fp \
		--with-headers=$(XDevRoot)/linux/include \
		--enable-add-ons=linuxthreads
		
	make -C mips-glibc
	make -C mips-glibc install
	
ifdef deleteBuildingDirectories
	rm -rf mips-glibc
endif
ifdef deleteSourceDirectories
	rm -rf glibc-2.2.3
endif	
	touch .glibc

#
# GCC - 2nd pass
#
.gcc2: .binutils .gcc1 .glibc
	make checkPATH
	mkdir mips-gcc2
	cd mips-gcc2 && ../gcc-3.0.1/configure \
		--target=mips-linux \
		--enable-languages=c,c++ \
		--enable-shared \
		--enable-threads \
		--with-libs=$(XDevRoot)/lib \
		--with-headers=../include \
		--prefix=$(XDevRoot)
		
	make -C mips-gcc2
	make -C mips-gcc2 install
	
ifdef deleteBuildingDirectories
	rm -rf mips-gcc2
endif
ifdef deleteSourceDirectories
	rm -rf gcc-3.0.1
endif	
	touch .gcc2

#
#
#
.miLiLo: core
	@echo "MIPS Linux Loader: Not yet!"

#
#
#
.kernel: core .miLiLo
	make -C linux dep clean zImage modules
	@echo "MIPS Linux Kernel: Not yet complete !"



#############################
# $Log: Makefile,v $
# Revision 1.12  2001/12/03 22:47:57  markinho
# kernel upgrade to 2.4.13 (oss-sgi-Version)
#
# Revision 1.11  2001/11/30 13:30:25  markinho
# Nun funktionieren die Dependencies
#
#############################