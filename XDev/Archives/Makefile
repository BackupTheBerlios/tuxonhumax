#
# Hier wird dafuer gesorgt, das alle datein aus dem Internet geladen werden
#	(C)2001 Markinho for The TuxOnHumax Project
######
# $LOG
#
#

xDevKit: \
    binutils-2.11.90.0.25.tar.gz \
    gcc-3.0.1.tar.gz \
    gcc-core-3.0.1.tar.gz \
    gcc-g++-3.0.1.tar.gz \
    glibc-2.2.3.tar.gz \
    glibc-linuxthreads-2.2.3.tar.gz \
    glibc-2.2.3-mips-base-addr-got.diff 
    
all: xDevKit

#
# XDevKit
#

binutils-2.11.90.0.25.tar.gz:	
	wget ftp://ftp.kernel.org/pub/linux/devel/binutils/binutils-2.11.90.0.25.tar.gz

# GCC Compiler and glibc
gcc-3.0.1.tar.gz:
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-3.0.1.tar.gz

gcc-core-3.0.1.tar.gz:
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-core-3.0.1.tar.gz

gcc-g++-3.0.1.tar.gz:
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-3.0.1/gcc-g++-3.0.1.tar.gz

glibc-2.2.3.tar.gz:
	wget ftp://ftp.gnu.org/gnu/glibc/glibc-2.2.3.tar.gz

glibc-linuxthreads-2.2.3.tar.gz:
	wget ftp://ftp.gnu.org/gnu/glibc/glibc-linuxthreads-2.2.3.tar.gz

glibc-2.2.3-mips-base-addr-got.diff:
	wget http://www.ltc.com/~brad/mips/glibc-2.2.3-mips-base-addr-got.diff

