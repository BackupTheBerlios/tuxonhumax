 
 
 #
 # ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 # º	 This file is generated	by The Interactive Disassembler	(IDA)	     º
 # º	 Copyright (c) 2000 by DataRescue sa/nv, <ida@datarescue.com>	     º
 # º	      Licensed to: Thomas Wright, DVDMods, 1 user, special	     º
 # ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 #
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 # File	Name   : D:\Thomas\H208\Bin_asm208\30.12.01\28f160_0bis9C0.bin
 # Format      : Binary	File
 # Base	Address: 0000h Range: 9FC00000h	- 9FC009D0h Loaded length: 09D0h

*******************************************************************************************
Kommentar von Schuggi !	30.12.01

Ich denke hier wird die	Hardware initialisiert
Flash-Bereiche ins RAM kopiert
und dann ins RAM gesprungen

Kopiert	wird:
0x93006000 bis 0x93010000 nach 0x8C1A0000
0x9FC01000 bis 0x9FC0E000 nach 0x8C000000

Hier sind auch einige Funktionen die von hier aus nicht	benutzt	werden.
Vieleicht werden die von den RAM-Funktionen aus	angesprungen
*******************************************************************************************

 # Processor	   : mipsr   
 # Target assembler: GNU assembler
 # Byte	sex	   : Big endian

 # ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

 # Segment type: Pure code
		.text #	seg000
		lui	$t0, 0x40	 # Load	Upper Immediate
		mfc0	$t1, SR		 # Status register
		nop
		or	$t1, $t0, $t1	 # OR
		mtc0	$t1, SR		 # Status register
		nop
		mtc0	$0, Cause	 # Cause of last exception
		lui	$v0, 0x1000	 # Load	Upper Immediate
		mtc0	$v0, SR		 # Status register
		move	$s7, $0
		lui	$gp, 0x9FC1	 # Load	Upper Immediate
		addiu	$gp, 0x89D0	 # Add Immediate Unsigned
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x350	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR

Sprung zu 0x9FC0350 ( 0xBFC0350	?)
.
		jr	$t0		 # Jump	Register
 # [000000BC BYTES: COLLAPSED FUNCTION 9FC00044_noCode.	PRESS KEYPAD "+" TO EXPAND]
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9FC00100:				 # CODE	XREF: seg000:9FC00100j
		b	loc_9FC00100	 # Branch Always

		nop

 # [00000078 BYTES: COLLAPSED FUNCTION 9FC00108_noCode.	PRESS KEYPAD "+" TO EXPAND]
		addi	$sp, 0xFF84	 # Add Immediate
		sw	$1, 0($sp)	 # Store Word
		sw	$v0, 4($sp)	 # Store Word
		sw	$v1, 8($sp)	 # Store Word
		sw	$a0, 0xC($sp)	 # Store Word
		sw	$a1, 0x10($sp)	 # Store Word
		sw	$a2, 0x14($sp)	 # Store Word
		sw	$a3, 0x18($sp)	 # Store Word
		sw	$t0, 0x1C($sp)	 # Store Word
		sw	$t1, 0x20($sp)	 # Store Word
		sw	$t2, 0x24($sp)	 # Store Word
		sw	$t3, 0x28($sp)	 # Store Word
		sw	$t4, 0x2C($sp)	 # Store Word
		sw	$t5, 0x30($sp)	 # Store Word
		sw	$t6, 0x34($sp)	 # Store Word
		sw	$t7, 0x38($sp)	 # Store Word
		sw	$t8, 0x3C($sp)	 # Store Word
		sw	$t9, 0x40($sp)	 # Store Word
		sw	$s0, 0x44($sp)	 # Store Word
		sw	$s1, 0x48($sp)	 # Store Word
		sw	$s2, 0x4C($sp)	 # Store Word
		sw	$s3, 0x50($sp)	 # Store Word
		sw	$s4, 0x54($sp)	 # Store Word
		sw	$s5, 0x58($sp)	 # Store Word
		sw	$s6, 0x5C($sp)	 # Store Word
		sw	$s7, 0x60($sp)	 # Store Word
		sw	$fp, 0x64($sp)	 # Store Word
		sw	$ra, 0x68($sp)	 # Store Word
		mflo	$t0		 # Move	From LO
		mfhi	$t1		 # Move	From HI
		sw	$t0, 0x6C($sp)	 # Store Word
		sw	$t1, 0x70($sp)	 # Store Word
		mfc0	$t0, Cause	 # Cause of last exception
		mfc0	$k1, EPC	 # Exception Program Counter
		andi	$t0, 0x3C	 # AND Immediate
		beqz	$t0, loc_9FC00248  # Branch on Zero

		nop
		li	$t1, 0x20	 # Load	Immediate
		beq	$t0, $t1, loc_9FC00284	# Branch on Equal

		nop
		mfc0	$a0, Cause	 # Cause of last exception
		mfc0	$a1, EPC	 # Exception Program Counter
		mfc0	$a2, SR		 # Status register
		move	$a3, $ra
		lui	$t0, 0x8C1F	 # Load	Upper Immediate
		ori	$t0, 0xFFF4	 # OR Immediate
		lw	$t0, 0($t0)	 # Load	Word
		nop
		jalr	$t0		 # Jump	And Link Register

		nop

loc_9FC00248:				 # CODE	XREF: seg000:9FC0020Cj
		sw	$k1, 0x74($sp)	 # Store Word
		nop
		mfc0	$a0, Cause	 # Cause of last exception
		mfc0	$a1, SR		 # Status register
		lui	$t0, 0x8C1F	 # Load	Upper Immediate
		ori	$t0, 0xFFF8	 # OR Immediate
		lw	$t0, 0($t0)	 # Load	Word
		nop
		jalr	$t0		 # Jump	And Link Register

		nop
		beqz	$v0, loc_9FC002C4  # Branch on Zero

		nop
		nop
		b	loc_9FC002B0	 # Branch Always

		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9FC00284:				 # CODE	XREF: seg000:9FC00218j
		sw	$ra, 0x78($sp)	 # Store Word
		lw	$t0, 0x1C($sp)	 # Load	Word
		lw	$t1, 0x20($sp)	 # Load	Word
		addi	$k1, 4		 # Add Immediate
		jalr	$k1		 # Jump	And Link Register

		nop
		lw	$k1, 0x78($sp)	 # Load	Word
		sw	$v0, 4($sp)	 # Store Word
		sw	$k1, 0x74($sp)	 # Store Word
		b	loc_9FC002C4	 # Branch Always

		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9FC002B0:				 # CODE	XREF: seg000:9FC0027Cj
		lw	$k1, 0x74($sp)	 # Load	Word
		nop
		addi	$k1, 0xFFFC	 # Add Immediate
		b	loc_9FC002C8	 # Branch Always

		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_9FC002C4:				 # CODE	XREF: seg000:9FC00270j
					 # seg000:9FC002A8j
		lw	$k1, 0x74($sp)	 # Load	Word

loc_9FC002C8:				 # CODE	XREF: seg000:9FC002BCj
		lw	$t0, 0x70($sp)	 # Load	Word
		lw	$t1, 0x6C($sp)	 # Load	Word
		mthi	$t0		 # Move	To HI
		mtlo	$t1		 # Move	To LO
		lw	$ra, 0x68($sp)	 # Load	Word
		lw	$fp, 0x64($sp)	 # Load	Word
		lw	$s7, 0x60($sp)	 # Load	Word
		lw	$s6, 0x5C($sp)	 # Load	Word
		lw	$s5, 0x58($sp)	 # Load	Word
		lw	$s4, 0x54($sp)	 # Load	Word
		lw	$s3, 0x50($sp)	 # Load	Word
		lw	$s2, 0x4C($sp)	 # Load	Word
		lw	$s1, 0x48($sp)	 # Load	Word
		lw	$s0, 0x44($sp)	 # Load	Word
		lw	$t9, 0x40($sp)	 # Load	Word
		lw	$t8, 0x3C($sp)	 # Load	Word
		lw	$t7, 0x38($sp)	 # Load	Word
		lw	$t6, 0x34($sp)	 # Load	Word
		lw	$t5, 0x30($sp)	 # Load	Word
		lw	$t4, 0x2C($sp)	 # Load	Word
		lw	$t3, 0x28($sp)	 # Load	Word
		lw	$t2, 0x24($sp)	 # Load	Word
		lw	$t1, 0x20($sp)	 # Load	Word
		lw	$t0, 0x1C($sp)	 # Load	Word
		lw	$a3, 0x18($sp)	 # Load	Word
		lw	$a2, 0x14($sp)	 # Load	Word
		lw	$a1, 0x10($sp)	 # Load	Word
		lw	$a0, 0xC($sp)	 # Load	Word
		lw	$v1, 8($sp)	 # Load	Word
		lw	$v0, 4($sp)	 # Load	Word
		lw	$1, 0($sp)	 # Load	Word
		addi	$sp, 0x7C	 # Add Immediate
		jr	$k1		 # Jump	Register
		cop0	0x10		 # Coprocessor 0 Operation

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Einsprung von Position 0x9FC00040
.
sieht aus wie eine Initialisierung
0xBA800014 = 0
0xBA800008 = 0x0100000
0xBA800004 = 0
		lui	$t0, 0xBA80	 # Load	Upper Immediate
		ori	$t0, 0x14	 # t0 =	0xBA800014
		li	$t1, 0		 # Load	Immediate
		sw	$t1, 0($t0)	 # 0 nach 0xBA800014
		lui	$t0, 0xBA80	 # Load	Upper Immediate
		ori	$t0, 8		 # t0 =	0xBA800008
		lui	$t1, 0x100	 # Load	Upper Immediate
		sw	$t1, 0($t0)	 # 0x01000000 nach 0xBA800008
		lui	$t0, 0xBA80	 # Load	Upper Immediate
		ori	$t0, 4		 # t0 =	0xBA800004
		li	$t1, 0		 # Load	Immediate
		sw	$t1, 0($t0)	 # 0 nach 0xBA800004
		li	$t2, 0x28	 # Load	Immediate

Hier wird  gewartet bis	das Register t2	auf 0 gesetzt wird

loc_9FC00384:				 # CODE	XREF: seg000:9FC00384j
		bnez	$t2, loc_9FC00384  # Branch on Not Zero

		addiu	$t2, 0xFFFF	 # Add Immediate Unsigned
0xBA800004 = 0x01000000
.
		lui	$t0, 0xBA80	 # Load	Upper Immediate
		ori	$t0, 4		 # OR Immediate
		lui	$t1, 0x100	 # Load	Upper Immediate
		sw	$t1, 0($t0)	 # Store Word

warten bis das unterste	Bit von	0xB0800110 auf 0 geht
( es werden nur	die untersten 16Bit beachtet )
.
		lui	$t0, 0xB080	 # Load	Upper Immediate
		ori	$t0, 0x110	 # OR Immediate

loc_9FC003A4:				 # CODE	XREF: seg000:9FC003B4j
		lh	$t1, 0($t0)	 # Load	Halfword
		nop
		andi	$t1, 0xFFFE	 # AND Immediate
		nop
		beq	$0, $t1, loc_9FC003A4  # Branch	on Equal

		nop
0xB080034A = 0xFF
.
		lui	$t0, 0xB080	 # Load	Upper Immediate
		ori	$t0, 0x34A	 # OR Immediate
		li	$t1, 0xFF	 # Load	Immediate
		sh	$t1, 0($t0)	 # Store Halfword
		nop

warten bis das unterste	Bit von	0xB080011C auf 0 geht
( es werden nur	die untersten 16Bit beachtet )
.
		lui	$t0, 0xB080	 # Load	Upper Immediate
		ori	$t0, 0x11C	 # OR Immediate

loc_9FC003D8:				 # CODE	XREF: seg000:9FC003E8j
		lh	$t1, 0($t0)	 # Load	Halfword
		nop
		andi	$t1, 0xFFFE	 # AND Immediate
		nop
		beq	$0, $t1, loc_9FC003D8  # Branch	on Equal

		nop
0xB1000048 = 0x92
		lui	$t0, 0xB100	 # Load	Upper Immediate
		ori	$t0, 0x48	 # OR Immediate
		li	$t1, 0x92	 # Load	Immediate
		sw	$t1, 0($t0)	 # Store Word
		nop
0xB1000000+0x10	= 0x18618650
		lui	$a0, 0xB100	 # Load	Upper Immediate
		lui	$a2, 0x1861	 # Load	Upper Immediate
		ori	$a2, 0x8650	 # OR Immediate
		sw	$a2, 0x10($a0)	 # Store Word
0xB1000000+0x18	= 0x1C71C740
		lui	$a2, 0x1C71	 # Load	Upper Immediate
		ori	$a2, 0xC740	 # OR Immediate
		sw	$a2, 0x18($a0)	 # Store Word
0xB1000000+0x20	= 0x18618650
		lui	$a2, 0x1861	 # Load	Upper Immediate
		ori	$a2, 0x8650	 # OR Immediate
		sw	$a2, 0x20($a0)	 # Store Word
0xB1000000+0x60	= 0x1040
		li	$a2, 0x1040	 # Load	Immediate
		sw	$a2, 0x60($a0)	 # Store Word
		li	$a2, 0xC8	 # Load	Immediate

Hier wird  gewartet bis	das Register a2	auf 0 gesetzt wird
( vieleeicht durch eine	intterruptfunktion oder	so etwas „hnliches )

loc_9FC00438:				 # CODE	XREF: seg000:9FC00438j
		bnez	$a2, loc_9FC00438  # Branch on Not Zero

a2 = 0xFFFF
0xB1000000+0x60	= 0x02149349
		addiu	$a2, 0xFFFF	 # Add Immediate Unsigned
		lui	$a2, 0x214	 # Load	Upper Immediate
		ori	$a2, 0x9340	 # OR Immediate
		sw	$a2, 0x60($a0)	 # Store Word
0xB1000000+0x68	= 0x7
		li	$a2, 7		 # Load	Immediate
		sw	$a2, 0x68($a0)	 # Store Word
0xB1000000+0 = 0x70110571
		lui	$a2, 0x7011	 # Load	Upper Immediate
		ori	$a2, 0x571	 # OR Immediate
		sw	$a2, 0($a0)	 # Store Word
0xB0900000 = 0x80000400
		lui	$a1, 0xB090	 # Load	Upper Immediate
		lui	$a2, 0x8000	 # Load	Upper Immediate
		ori	$a2, 0x400	 # OR Immediate
		sw	$a2, 0($a1)	 # Store Word
		li	$a2, 0xC8	 # Load	Immediate

Hier wird  gewartet bis	das Register a2	auf 0 gesetzt wird

loc_9FC00474:				 # CODE	XREF: seg000:9FC00474j
		bnez	$a2, loc_9FC00474  # Branch on Not Zero

		addiu	$a2, 0xFFFF	 # Add Immediate Unsigned
0xB0900000 = 0x23
		li	$a2, 0x23	 # Load	Immediate
		sw	$a2, 0($a1)	 # Store Word
		li	$a2, 0xC8	 # Load	Immediate

Hier wird  gewartet bis	das Register a2	auf 0 gesetzt wird

loc_9FC00488:				 # CODE	XREF: seg000:9FC00488j
		bnez	$a2, loc_9FC00488  # Branch on Not Zero

		addiu	$a2, 0xFFFF	 # Add Immediate Unsigned
Sprung zur Unterfunktion mit Rcksprungadresse auf 0x9FC00498
.
		jal	sub_9FC0054C	 # l”scht alle Bits bis	auf das	Bit 0x00080000 des CoprozUntit0-Register 0x22

		nop
		jal	sub_9FC00570	 # 0cBBC00000 =	0x8000000

		nop

Kopiert	den Bereich von	0x9FC01000 bis 0x9FC0E000 nach 0x8C000000
( Flashprogramm	ins Ram	kopieren )
.
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		ori	$t0, 0x1000	 # OR Immediate
		lui	$t1, 0x9FC0	 # Load	Upper Immediate
		ori	$t1, 0xE000	 # OR Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate

loc_9FC004B4:				 # CODE	XREF: seg000:9FC004C8j
		lw	$t5, 0($t0)	 # Load	Word
		addi	$t0, 4		 # Add Immediate
		sw	$t5, 0($t2)	 # Store Word
		addi	$t2, 4		 # Add Immediate
		sltu	$1, $t0, $t1	 # Set on Less Than Unsigned
		bnez	$1, loc_9FC004B4  # Branch on Not Zero

		nop

Kopiert	den Bereich von	0x93006000 bis 0x93010000 nach 0x8C1A0000
( ??? ins Ram kopieren )
.
		lui	$t0, 0x9300	 # Load	Upper Immediate
		ori	$t0, 0x6000	 # OR Immediate
		lui	$t1, 0x9301	 # Load	Upper Immediate
		lui	$t2, 0x8C1A	 # Load	Upper Immediate

loc_9FC004E0:				 # CODE	XREF: seg000:9FC004F4j
		lw	$t5, 0($t0)	 # Load	Word
		addi	$t0, 4		 # Add Immediate
		sw	$t5, 0($t2)	 # Store Word
		addi	$t2, 4		 # Add Immediate
		sltu	$1, $t0, $t1	 # Set on Less Than Unsigned
		bnez	$1, loc_9FC004E0  # Branch on Not Zero

		nop

Setzt den SP (Stackpointer) auf	die Adresse 0x8C1FFFF0
.
		lui	$sp, 0x8C1F	 # Load	Upper Immediate
		ori	$sp, 0xFFF0	 # OR Immediate

t0 = 0x9FC00520+ t7+0xA0000000 ( t7=0 ?)
Jump zu	0xBFC00520 (=0x9FC00520	?)
.
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x520	 # Add Immediate Unsigned
		addu	$t0, $s7	 # Add Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	sub_9FC00898	 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # und Springe zu 0xBFC008C8 (=	0x9FC008C8 ?)

		nop
		jal	sub_9FC008F0	 # 
					 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # 
					 # Data-Cache fr den Bereich 0x80000000 einstellen
					 # CoprozUnit0-Register	SR in den Originalzustand bringen
					 # und Rcksprung

		nop

Sprung auf die Adresse 0x9FC0540
.
		lui	$t1, 0x9FC0	 # Load	Upper Immediate
		addiu	$t1, 0x540	 # Add Immediate Unsigned
		jr	$t1		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Sprung ins Ram auf die Adresse 0x8C000000
		lui	$t0, 0x8C00	 # Load	Upper Immediate
		jr	$t0		 # Jump	Register
		nop


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # l”scht alle Bits bis	auf das	Bit 0x00080000 des CoprozUntit0-Register 0x22

sub_9FC0054C:				 # CODE	XREF: seg000:9FC00490p
		lui	$t1, 8		 # Load	Upper Immediate
		nor	$t1, $0, $t1	 # NOR
		mfc0	$t2, $22	 # Move	from CP0
		nop
		and	$t0, $t1, $t2	 # AND
		mtc0	$t0, $22	 # Move	to CP0
		nop
		jr	$ra		 # Jump	Register
		nop

 # End of function sub_9FC0054C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # 0cBBC00000 =	0x8000000

sub_9FC00570:				 # CODE	XREF: seg000:9FC00498p
		lui	$t1, 0xBBC0	 # Load	Upper Immediate
		lui	$t2, 0x8000	 # Load	Upper Immediate
		sw	$t2, 0($t1)	 # Store Word
		nop
		jr	$ra		 # Jump	Register
		nop

 # End of function sub_9FC00570

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x10  #  
		.byte	 0  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3C  # <
		.byte	 8  #  
		.byte	 0  #  
		.byte 0xFF  #  
		.byte 0x35  # 5
		.byte	 8  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0x40  # @
		.byte 0x88  # ˆ
		.byte 0x58  # X
		.byte	 0  #  
		.byte 0x24  # $
		.byte	 2  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 3  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x27  # '
		.byte 0xBD  # ½
		.byte 0xFF  #  
		.byte 0xE8  # è
		.byte 0xAF  # ¯
		.byte 0xBF  # ¿
		.byte	 0  #  
		.byte 0x14  #  
		.byte 0xAF  # ¯
		.byte 0xB0  # °
		.byte	 0  #  
		.byte 0x10  #  
		.byte 0x40  # @
		.byte 0x10  #  
		.byte 0x60  # `
		.byte	 0  #  
		.byte 0x40  # @
		.byte 0x80  # €
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 4  #  
		.byte 0x11  #  
		.byte	 0  #  
		.byte 0x21  # !
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xAF  # ¯
		.byte 0x82  # ‚
		.byte 0x80  # €
		.byte	 0  #  
		.byte	 4  #  
		.byte 0x11  #  
		.byte	 0  #  
		.byte  0xC  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xAF  # ¯
		.byte 0x82  # ‚
		.byte 0x80  # €
		.byte	 4  #  
		.byte 0x3C  # <
		.byte	 1  #  
		.byte 0xFF  #  
		.byte 0xEF  # ï
		.byte 0x34  # 4
		.byte 0x21  # !
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte	 2  #  
		.byte	 1  #  
		.byte 0x80  # €
		.byte 0x24  # $
		.byte 0x40  # @
		.byte 0x90  # 
		.byte 0x60  # `
		.byte	 0  #  
		.byte 0x8F  # 
		.byte 0xBF  # ¿
		.byte	 0  #  
		.byte 0x14  #  
		.byte 0x8F  # 
		.byte 0xB0  # °
		.byte	 0  #  
		.byte 0x10  #  
		.byte 0x27  # '
		.byte 0xBD  # ½
		.byte	 0  #  
		.byte 0x18  #  
		.byte	 3  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
 # [0000002C BYTES: COLLAPSED FUNCTION sub_9FC00608. PRESS KEYPAD "+" TO EXPAND]
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		li	$v0, 0x2000	 # Load	Immediate
		mtc0	$t7, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
 # [0000002C BYTES: COLLAPSED FUNCTION sub_9FC0064C. PRESS KEYPAD "+" TO EXPAND]
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		li	$v0, 0x1000	 # Load	Immediate
		mtc0	$t7, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t7, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t7, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x6C0	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		lui	$1, 0x80	 # Load	Upper Immediate
		and	$v0, $t7, $1	 # AND
		lui	$1, 0x80	 # Load	Upper Immediate
		or	$t0, $t7, $1	 # OR
		mtc0	$t0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t6, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t6, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x710	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		bal	sub_9FC008F0	 # 
					 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # 
					 # Data-Cache fr den Bereich 0x80000000 einstellen
					 # CoprozUnit0-Register	SR in den Originalzustand bringen
					 # und Rcksprung

		nop
		nop
		lui	$1, 0xFF7F	 # Load	Upper Immediate
		ori	$1, 0xFFFF	 # OR Immediate
		and	$t0, $t6, $1	 # AND
		or	$t0, $t6, $a0	 # OR
		mtc0	$t0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t7, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t7, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x76C	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		lui	$1, 0x80	 # Load	Upper Immediate
		and	$v0, $t7, $1	 # AND
		lui	$1, 0x80	 # Load	Upper Immediate
		or	$t0, $t7, $1	 # OR
		mtc0	$t0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t6, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t6, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x7BC	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		bal	sub_9FC008F0	 # 
					 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # 
					 # Data-Cache fr den Bereich 0x80000000 einstellen
					 # CoprozUnit0-Register	SR in den Originalzustand bringen
					 # und Rcksprung

		nop
		nop
		lui	$1, 0x80	 # Load	Upper Immediate
		and	$v0, $t6, $1	 # AND
		lui	$1, 0xFF7F	 # Load	Upper Immediate
		ori	$1, 0xFFFF	 # OR Immediate
		and	$t0, $t6, $1	 # AND
		mtc0	$t0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t7, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t7, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x81C	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		lui	$t0, 0x100	 # Load	Upper Immediate
		and	$v0, $t7, $t0	 # AND
		or	$t7, $t0	 # OR
		mtc0	$t7, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$t6, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t6, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x868	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		bal	sub_9FC00898	 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # und Springe zu 0xBFC008C8 (=	0x9FC008C8 ?)

		nop
		nop
		lui	$1, 0x100	 # Load	Upper Immediate
		and	$v0, $t6, $1	 # AND
		lui	$1, 0xFEFF	 # Load	Upper Immediate
		ori	$1, 0xFFFF	 # OR Immediate
		and	$t0, $t6, $1	 # AND
		mtc0	$t0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
 # und Springe zu 0xBFC008C8 (=	0x9FC008C8 ?)

sub_9FC00898:				 # CODE	XREF: seg000:9FC00520p
					 # seg000:9FC00868p ...
		mfc0	$t7, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t7, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x9FC0	 # Load	Upper Immediate
		addiu	$t0, 0x8C8	 # Add Immediate Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$t0, $t1	 # OR
		jr	$t0		 # Jump	Register
		nop

 # End of function sub_9FC00898

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

Instruction-Cache fr den Bereich 0x80000000 aktivieren	(?)
Inhalt des Registers t7	ins CoprozUnit0-Register SR schreiben
und Rcksprung
.
		lui	$t0, 0x8000	 # Load	Upper Immediate
		li	$t1, 0xFF	 # Load	Immediate

loc_9FC008D0:				 # CODE	XREF: seg000:9FC008D8j
		cache	0, 0($t0)	 # Index Invalidate (primary instruction cache)
		addi	$t0, 0x10	 # Add Immediate
		bnez	$t1, loc_9FC008D0  # Branch on Not Zero

		addi	$t1, 0xFFFF	 # Add Immediate
		mtc0	$t7, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # 
 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
 # 
 # Data-Cache fr den Bereich 0x80000000 einstellen
 # CoprozUnit0-Register	SR in den Originalzustand bringen
 # und Rcksprung

sub_9FC008F0:				 # CODE	XREF: seg000:9FC00528p
					 # seg000:9FC00710p ...
		mfc0	$t7, SR		 # Status register
		nop
		li	$1, 0xFFFFFFFE	 # Load	Immediate
		and	$t0, $t7, $1	 # AND
		mtc0	$t0, SR		 # Status register
		lui	$t0, 0x8000	 # Load	Upper Immediate
		li	$t1, 0x3F	 # Load	Immediate

loc_9FC0090C:				 # CODE	XREF: sub_9FC008F0+24j
		cache	1, 0($t0)	 # Index Invalidate (primary data cache)
		addi	$t0, 0x10	 # Add Immediate
		bnez	$t1, loc_9FC0090C  # Branch on Not Zero

		addi	$t1, 0xFFFF	 # Add Immediate
		mtc0	$t7, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # End of function sub_9FC008F0

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		b	sub_9FC00898	 # alle	Bits ausser Bit	0 des CoprozUnit0-Regisster SR l”schen
					 # und Springe zu 0xBFC008C8 (=	0x9FC008C8 ?)

		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		li	$t0, 0x10	 # Load	Immediate
		add	$a1, $a0	 # Add
		addiu	$a1, 0xF	 # Add Immediate Unsigned
		li	$1, 0xFFFFFFF0	 # Load	Immediate
		and	$a1, $1		 # AND
		li	$1, 0xFFFFFFF0	 # Load	Immediate
		and	$a0, $1		 # AND
		nop

loc_9FC00958:				 # CODE	XREF: seg000:9FC00964j
		cache	0x11, 0($a0)	 # Hit Invalidate (primary data	cache)
		nop
		add	$a0, $t0	 # Add
		bne	$a0, $a1, loc_9FC00958	# Branch on Not	Equal

		nop
		nop
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		mfc0	$v0, PRId	 # Processor Revision Identifier
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mfc0	$v0, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mfc0	$v0, $22	 # Move	from CP0
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mfc0	$v0, EPC	 # Exception Program Counter
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		mfc0	$v0, BadVAddr	 # Bad virtual address
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sync			 # Sync
		nop
		nop
		jr	$ra		 # Jump	Register
		nop

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop


		 # end 
