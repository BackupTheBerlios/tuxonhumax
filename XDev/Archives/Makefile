#
# Hier wird dafuer gesorgt, das alle datein aus dem Internet geladen werden
#	(C)2001 Markinho for The TuxOnHumax Project
######
# $LOG
#
#

xDevKit_Host: \
    linux-2.4.5.tar.bz2 \
    binutils-2.11.90.0.25.tar.gz
    
xDevKit_Cross: \
    gcc-3.0.1.tar.gz \
#    gcc-core-3.0.1.tar.gz \
#    gcc-g++-3.0.1.tar.gz \
    glibc-2.2.3.tar.gz \
    glibc-linuxthreads-2.2.3.tar.gz \
    glibc-2.2.3-mips-base-addr-got.diff 
    
all: xDevKit_Host xDevKit_Cross

#
# XDevKit
#

# Host Part
# Kernel
linux-2.4.%.tar.bz2:
	wget ftp://ftp.kernel.org/pub/linux/kernel/v2.4/$@ || \
	wget ftp://tuxonhumax.berlios.de/pub/tuxonhumax/$@

# binutils
binutils-2.11.90.0.25.tar.gz:	
	wget ftp://ftp.kernel.org/pub/linux/devel/binutils/binutils-2.11.90.0.25.tar.gz

# Cross part
# GCC Compiler and glibc
gcc-3.0.1.tar.gz:
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-3.0.1.tar.gz

#gcc-core-3.0.1.tar.gz:
#	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-core-3.0.1.tar.gz

#gcc-g++-3.0.1.tar.gz:
#	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-g++-3.0.1.tar.gz

glibc-2.2.3.tar.gz:
	wget ftp://ftp.gnu.org/gnu/glibc/glibc-2.2.3.tar.gz

glibc-linuxthreads-2.2.3.tar.gz:
	wget ftp://ftp.gnu.org/gnu/glibc/glibc-linuxthreads-2.2.3.tar.gz

glibc-2.2.3-mips-base-addr-got.diff:
	wget http://www.ltc.com/~brad/mips/glibc-2.2.3-mips-base-addr-got.diff

