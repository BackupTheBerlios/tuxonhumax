 
 
 #
 # ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 # º	 This file is generated	by The Interactive Disassembler	(IDA)	     º
 # º	 Copyright (c) 2000 by DataRescue sa/nv, <ida@datarescue.com>	     º
 # º	      Licensed to: Thomas Wright, DVDMods, 1 user, special	     º
 # ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 #
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 # File	Name   : D:\Thomas\H208\Bin_asm208\30.12.01\1000 bis 9820\28f160_1000bis9820.bin
 # Format      : Binary	File
 # Base	Address: 0000h Range: 8C000000h	- 8C008830h Loaded length: 8830h


 # Processor	   : mipsr   
 # Target assembler: GNU assembler
 # Byte	sex	   : Big endian

 # ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

 # Segment type: Pure code
		.text #	seg000
		move	$s7, $0
Ich denke hier wird der	RAM-Speicherbereich 0x8C018830 bis 0x8c18DDC0 gel”scht
		lui	$gp, 0x8C01	 # Load	Upper Immediate
		addiu	$gp, 0x810	 # Add Immediate Unsigned
		addi	$t0, $gp, 0x8020  # Add	Immediate
		lui	$t1, 0x17	 # Load	Upper Immediate
		addiu	$t1, 0x5590	 # Add Immediate Unsigned
		addu	$t1, $gp	 # Add Unsigned
		lui	$1, 0xA000	 # Load	Upper Immediate
		or	$t0, $1		 # OR
		lui	$1, 0xA000	 # Load	Upper Immediate
		or	$t1, $1		 # OR

loc_8C00002C:				 # CODE	XREF: seg000:8C000034j
		sw	$0, 0($t0)	 # Store Word
		sltu	$1, $t0, $t1	 # Set on Less Than Unsigned
		bnez	$1, loc_8C00002C  # Branch on Not Zero
		addi	$t0, 4		 # Add Immediate

Sprung nach 0x8C000080
.
		lui	$1, 0x8C00	 # Load	Upper Immediate
		addiu	$1, 0x80	 # Add Immediate Unsigned
		addu	$1, $s7		 # Add Unsigned
		lui	$t1, 0xA000	 # Load	Upper Immediate
		or	$1, $t1		 # OR
		jalr	$1		 # Jump	And Link Register
		nop

Sprung nach 0x8C0000E0
		lui	$1, 0x8C00	 # Load	Upper Immediate
		addiu	$1, 0x8E0	 # Add Immediate Unsigned
		addu	$1, $s7		 # Add Unsigned
		jalr	$1		 # Jump	And Link Register
		nop

Sprung nach sub_8C0029C0
		jal	sub_8C0029C0	 # Jump	And Link
		nop

Sprung nach 0x9FC10000 
Hier wird das Programm im Flash	ausgefhrt
		lui	$t0, 0x9FC1	 # Load	Upper Immediate
		jr	$t0		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
0x8C1FFFF4 = 0x8C0059F0	(sieht aus wie das Setzen eines	Vektors	?)
		lui	$t0, 0x8C1F	 # Load	Upper Immediate
		ori	$t0, 0xFFF4	 # OR Immediate
		lui	$t1, 0x8C00	 # Load	Upper Immediate
		addiu	$t1, 0x59F0	 # Add Immediate Unsigned
		sw	$t1, 0($t0)	 # Store Word
		nop
0x8C1FFFF8 = 0x8C005B80	(sieht aus wie das Setzen eines	Vektors	?)
		lui	$t0, 0x8C1F	 # Load	Upper Immediate
		ori	$t0, 0xFFF8	 # OR Immediate
		lui	$t1, 0x8C00	 # Load	Upper Immediate
		addiu	$t1, 0x5B80	 # Add Immediate Unsigned
		sw	$t1, 0($t0)	 # Store Word
		nop
0x8C0089C0 = 0
		lui	$t1, 0x8C01	 # Load	Upper Immediate
		addiu	$t1, 0x89C0	 # Add Immediate Unsigned
		li	$t2, 0x20	 # Load	Immediate

loc_8C0000BC:				 # CODE	XREF: seg000:8C0000C4j
		addiu	$t2, 0xFFFF	 # Add Immediate Unsigned
		sw	$0, 0($t1)	 # Store Word
		bnez	$t2, loc_8C0000BC  # Branch on Not Zero
		addiu	$t1, 4		 # Add Immediate Unsigned
		lui	$t0, 0x40	 # Load	Upper Immediate
		ori	$t0, 0x2400	 # OR Immediate

CoprozUnit0-Register SR	verodert mit 0x402400 
und Rcksprung
.
		mfc0	$t1, SR		 # Status register
		nop
		or	$t2, $t0, $t1	 # OR
		mtc0	$t2, SR		 # Status register
		nop
		jr	$ra		 # Jump	Register
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0000F0:				 # CODE	XREF: sub_8C005C48+2Cp
		mtc0	$0, Count	 # Timer Count
		mtc0	$a0, Compare	 # Timer Compare
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C0000F0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000100:				 # CODE	XREF: seg000:8C005C9Cp
		mtc0	$a0, Compare	 # Timer Compare
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C000100

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
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
		.byte	 3  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 8  #  
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
		.byte 0x98  # ˜
		.byte	 0  #  
		.byte	 3  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 8  #  
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
		.byte 0xA8  # ¨
		.byte	 0  #  
		.byte	 3  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # im CoprozUnit0-Register SR bit 0 setzen

sub_8C000148:				 # CODE	XREF: seg000:8C000928p
		mfc0	$t0, SR		 # Status register
		nop
		li	$t1, 1		 # Load	Immediate
		or	$t0, $t1	 # OR
		mtc0	$t0, SR		 # Status register
		nop
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C000148


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # Sync	loads and stores to shared memory

sub_8C000168:				 # CODE	XREF: seg000:8C005CECp
					 # sub_8C005D10+10p ...
		sync			 # Sync
		nop
		nop
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C000168


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00017C:				 # CODE	XREF: sub_8C001564+20p
					 # sub_8C001564+84p ...
		mfc0	$v0, SR		 # Status register
		li	$t0, 1		 # Load	Immediate
		beqz	$a0, loc_8C0001B4  # Branch on Zero
		nop
		nor	$t0, $0, $t0	 # NOR
		and	$v1, $v0, $t0	 # AND
		andi	$v0, 1		 # AND Immediate
		xori	$v0, 1		 # Exclusive OR	Immediate
		mtc0	$v1, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop
		nop

loc_8C0001B4:				 # CODE	XREF: sub_8C00017C+8j
		or	$v1, $v0, $t0	 # OR
		andi	$v0, 1		 # AND Immediate
		xori	$v0, 1		 # Exclusive OR	Immediate
		mtc0	$v1, SR		 # Status register
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C00017C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop
		nop
		nop
		nop
		lw	$t3, 8($a0)	 # Load	Word
		li	$v1, 0		 # Load	Immediate
		sltu	$t2, $v1, $t3	 # Set on Less Than Unsigned
		beqz	$t2, loc_8C000238  # Branch on Zero
		addiu	$t9, $v1, 1	 # Add Immediate Unsigned

loc_8C0001F4:				 # CODE	XREF: seg000:8C000220j
		lw	$t6, 0xC($a0)	 # Load	Word
		sll	$t8, $t9, 2	 # Shift Left Logical
		addu	$t7, $t6, $t8	 # Add Unsigned
		lw	$t5, 0($t7)	 # Load	Word
		nop
		sltu	$t4, $a1, $t5	 # Set on Less Than Unsigned
		bnez	$t4, locret_8C000230  #	Branch on Not Zero
		nop
		lw	$t3, 8($a0)	 # Load	Word
		addiu	$v1, 1		 # Add Immediate Unsigned
		sltu	$t2, $v1, $t3	 # Set on Less Than Unsigned
		bnez	$t2, loc_8C0001F4  # Branch on Not Zero
		addiu	$t9, $v1, 1	 # Add Immediate Unsigned
		j	locret_8C00023C	 # Jump
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C000230:			 # CODE	XREF: seg000:8C00020Cj
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000238:				 # CODE	XREF: seg000:8C0001ECj
		li	$v0, 0xFFFFFFFF	 # Load	Immediate

locret_8C00023C:			 # CODE	XREF: seg000:8C000228j
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFFFFFF	 # Load	Immediate

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000244:				 # CODE	XREF: sub_8C001334+10p
					 # sub_8C001334+28p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$s0, 0x20+var_10($sp)  # Store Word
		move	$s0, $a0
		li	$t7, 1		 # Load	Immediate
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		li	$t0, 0x90	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		lhu	$v1, 0($a0)	 # Load	Halfword Unsigned
		li	$t9, 0x89	 # Load	Immediate
		beq	$v1, $t9, loc_8C00027C	# Branch on Equal
		move	$s1, $a1
		li	$t8, 0x20	 # Load	Immediate
		bne	$v1, $t8, loc_8C000290	# Branch on Not	Equal

loc_8C00027C:				 # CODE	XREF: sub_8C000244+28j
		move	$a0, $v1
		lhu	$a1, 2($s0)	 # Load	Halfword Unsigned
		jal	loc_8C000544	 # Jump	And Link
		move	$a2, $s1
		move	$t7, $v0

loc_8C000290:				 # CODE	XREF: sub_8C000244+34j
		li	$t0, 0xFF	 # Load	Immediate
		bnez	$t7, loc_8C0002C4  # Branch on Not Zero
		sh	$t0, 0($s0)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x1E0	 # Add Immediate Unsigned
		sw	$t6, 0x10($s1)	 # Store Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		move	$v0, $t7
		jr	$ra		 # Jump	Register
		move	$v1, $t7
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0002C4:				 # CODE	XREF: sub_8C000244+50j
		move	$v0, $t7
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $t7
 # End of function sub_8C000244

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$v1, 0x5F5	 # Load	Upper Immediate
		ori	$v1, 0xE100	 # OR Immediate
		li	$t0, 0x20	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		li	$t0, 0xD0	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		li	$t0, 0x70	 # Load	Immediate
		j	loc_8C000310	 # Jump
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000304:				 # CODE	XREF: seg000:8C00031Cj
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		beqz	$v1, loc_8C000324  # Branch on Zero
		nop

loc_8C000310:				 # CODE	XREF: seg000:8C0002FCj
		lhu	$t7, 0($a0)	 # Load	Halfword Unsigned
		nop
		andi	$t8, $t7, 0x80	 # AND Immediate
		beqz	$t8, loc_8C000304  # Branch on Zero
		nop

loc_8C000324:				 # CODE	XREF: seg000:8C000308j
		bnez	$v1, loc_8C000334  # Branch on Not Zero
		li	$v0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000334:				 # CODE	XREF: seg000:8C000324j
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$v1, 1		 # Load	Upper Immediate
		ori	$v1, 0x86A0	 # OR Immediate
		li	$t0, 0x40	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		sh	$a1, 0($a0)	 # Store Halfword
		li	$t0, 0x70	 # Load	Immediate
		j	loc_8C00036C	 # Jump
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000360:				 # CODE	XREF: seg000:8C000378j
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		beqz	$v1, loc_8C000380  # Branch on Zero
		nop

loc_8C00036C:				 # CODE	XREF: seg000:8C000358j
		lhu	$t7, 0($a0)	 # Load	Halfword Unsigned
		nop
		andi	$t8, $t7, 0x80	 # AND Immediate
		beqz	$t8, loc_8C000360  # Branch on Zero
		nop

loc_8C000380:				 # CODE	XREF: seg000:8C000364j
		bnez	$v1, loc_8C000390  # Branch on Not Zero
		li	$v0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000390:				 # CODE	XREF: seg000:8C000380j
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0xFF	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t9, 0xFFFFFFE0	 # Load	Immediate
		and	$a3, $t9, $a0	 # AND
		blez	$a2, loc_8C000484  # Branch on Less Than or Equal to Zero
		move	$a0, $a3

loc_8C0003B8:				 # CODE	XREF: seg000:8C00047Cj
		nop
		li	$t0, 0xE8	 # Load	Immediate
		lui	$v1, 1		 # Load	Upper Immediate
		ori	$v1, 0x86A0	 # OR Immediate
		j	loc_8C0003DC	 # Jump
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0003D0:				 # CODE	XREF: seg000:8C0003E8j
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		beqz	$v1, loc_8C0003F0  # Branch on Zero
		sh	$t0, 0($a0)	 # Store Halfword

loc_8C0003DC:				 # CODE	XREF: seg000:8C0003C8j
		lhu	$t6, 0($a0)	 # Load	Halfword Unsigned
		nop
		andi	$t7, $t6, 0x80	 # AND Immediate
		beqz	$t7, loc_8C0003D0  # Branch on Zero
		li	$t0, 0xE8	 # Load	Immediate

loc_8C0003F0:				 # CODE	XREF: seg000:8C0003D4j
		beqz	$v1, loc_8C000484  # Branch on Zero
		slti	$t3, $a2, 0x10	 # Set on Less Than Immediate
		bnez	$t3, loc_8C000430  # Branch on Not Zero
		li	$t3, 0xF	 # Load	Immediate
		sh	$t3, 0($a0)	 # Store Halfword
		lhu	$t8, 0($a1)	 # Load	Halfword Unsigned
		addiu	$a3, 2		 # Add Immediate Unsigned
		sh	$t8, -2($a3)	 # Store Halfword
		li	$v1, 0x10	 # Load	Immediate
		subu	$a2, $v1	 # Subtract Unsigned
		li	$v1, 0		 # Load	Immediate
		sltu	$t4, $v1, $t3	 # Set on Less Than Unsigned
		beqz	$t4, loc_8C000478  # Branch on Zero
		addiu	$a1, 2		 # Add Immediate Unsigned
		j	loc_8C000460	 # Jump
		addiu	$v1, 1		 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000430:				 # CODE	XREF: seg000:8C0003F8j
		addiu	$a3, 2		 # Add Immediate Unsigned
		move	$v1, $a2
		addiu	$t3, $v1, 0xFFFF  # Add	Immediate Unsigned
		sh	$t3, 0($a0)	 # Store Halfword
		lhu	$t8, 0($a1)	 # Load	Halfword Unsigned
		addiu	$a1, 2		 # Add Immediate Unsigned
		sh	$t8, -2($a3)	 # Store Halfword
		li	$v1, 0		 # Load	Immediate
		sltu	$t4, $v1, $t3	 # Set on Less Than Unsigned
		beqz	$t4, loc_8C000478  # Branch on Zero
		subu	$a2, $a2	 # Subtract Unsigned

loc_8C00045C:				 # CODE	XREF: seg000:8C000470j
		addiu	$v1, 1		 # Add Immediate Unsigned

loc_8C000460:				 # CODE	XREF: seg000:8C000428j
		lhu	$t5, 0($a1)	 # Load	Halfword Unsigned
		addiu	$a3, 2		 # Add Immediate Unsigned
		sh	$t5, -2($a3)	 # Store Halfword
		sltu	$t4, $v1, $t3	 # Set on Less Than Unsigned
		bnez	$t4, loc_8C00045C  # Branch on Not Zero
		addiu	$a1, 2		 # Add Immediate Unsigned

loc_8C000478:				 # CODE	XREF: seg000:8C000420j
					 # seg000:8C000454j
		li	$t0, 0xD0	 # Load	Immediate
		bgtz	$a2, loc_8C0003B8  # Branch on Greater Than Zero
		sh	$t0, 0($a0)	 # Store Halfword

loc_8C000484:				 # CODE	XREF: seg000:8C0003B0j
					 # seg000:8C0003F0j
		nop
		li	$t0, 0x70	 # Load	Immediate
		lui	$v1, 0x5F5	 # Load	Upper Immediate
		ori	$v1, 0xE100	 # OR Immediate
		j	loc_8C0004A8	 # Jump
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00049C:				 # CODE	XREF: seg000:8C0004B4j
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		beqz	$v1, loc_8C0004BC  # Branch on Zero
		nop

loc_8C0004A8:				 # CODE	XREF: seg000:8C000494j
		lhu	$t8, 0($a0)	 # Load	Halfword Unsigned
		nop
		andi	$t9, $t8, 0x80	 # AND Immediate
		beqz	$t9, loc_8C00049C  # Branch on Zero
		nop

loc_8C0004BC:				 # CODE	XREF: seg000:8C0004A0j
		bnez	$v1, loc_8C0004CC  # Branch on Not Zero
		li	$v0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0004CC:				 # CODE	XREF: seg000:8C0004BCj
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v0, 0		 # Load	Immediate
		li	$t0, 0x60	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		li	$t0, 1		 # Load	Immediate
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v0, 0		 # Load	Immediate
		li	$t0, 0x60	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		li	$t0, 0xD0	 # Load	Immediate
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v0, 0		 # Load	Immediate
		li	$t0, 0x60	 # Load	Immediate
		sh	$t0, 0($a0)	 # Store Halfword
		li	$t0, 0x2F	 # Load	Immediate
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sh	$t0, 0($a0)	 # Store Halfword
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000544:				 # CODE	XREF: sub_8C000244+40p
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x538	 # Add Immediate Unsigned
		sw	$t6, 0x2C($a2)	 # Store Word
		andi	$a1, 0xFFFF	 # AND Immediate
		move	$v1, $a1
		lui	$t3, 0x8C01	 # Load	Upper Immediate
		addiu	$t3, 0x8170	 # Add Immediate Unsigned
		lui	$a3, 0x8C01	 # Load	Upper Immediate
		addiu	$a3, 0x8110	 # Add Immediate Unsigned
		lui	$t9, 0x8C00	 # Load	Upper Immediate
		addiu	$t9, 0x4D8	 # Add Immediate Unsigned
		sw	$t9, 0x20($a2)	 # Store Word
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		addiu	$t8, 0x538	 # Add Immediate Unsigned
		andi	$a0, 0xFFFF	 # AND Immediate
		li	$t5, 0x88C1	 # Load	Immediate
		slt	$t4, $a1, $t5	 # Set on Less Than
		lui	$t7, 0x8C00	 # Load	Upper Immediate
		addiu	$t7, 0x538	 # Add Immediate Unsigned
		sw	$t7, 0x28($a2)	 # Store Word
		bnez	$t4, loc_8C0005AC  # Branch on Not Zero
		sw	$t8, 0x24($a2)	 # Store Word
		bne	$v1, $t5, loc_8C000604	# Branch on Not	Equal
		nop
		j	loc_8C0007A8	 # Jump
		li	$v0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0005AC:				 # CODE	XREF: seg000:8C000594j
		li	$t2, 0x8893	 # Load	Immediate
		slt	$t9, $v1, $t2	 # Set on Less Than
		bnez	$t9, loc_8C0005CC  # Branch on Not Zero
		nop
		bne	$v1, $t2, loc_8C0005F0	# Branch on Not	Equal
		nop
		j	loc_8C0006CC	 # Jump
		li	$v0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0005CC:				 # CODE	XREF: seg000:8C0005B4j
		slti	$t7, $v1, 0x91	 # Set on Less Than Immediate
		bnez	$t7, loc_8C0008D0  # Branch on Not Zero
		li	$t6, 0x91	 # Load	Immediate
		beq	$v1, $t6, loc_8C000884	# Branch on Equal
		li	$t9, 0x8891	 # Load	Immediate
		bne	$v1, $t9, locret_8C0008D4  # Branch on Not Equal
		li	$v0, 1		 # Load	Immediate
		j	loc_8C000684	 # Jump
		li	$v0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0005F0:				 # CODE	XREF: seg000:8C0005BCj
		li	$t9, 0x889D	 # Load	Immediate
		bne	$v1, $t9, locret_8C0008D4  # Branch on Not Equal
		li	$v0, 1		 # Load	Immediate
		j	loc_8C000634	 # Jump
		li	$v0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000604:				 # CODE	XREF: seg000:8C00059Cj
		li	$t9, 0x88C3	 # Load	Immediate
		slt	$t8, $v1, $t9	 # Set on Less Than
		bnez	$t8, loc_8C0008D0  # Branch on Not Zero
		nop
		beq	$v1, $t9, loc_8C000814	# Branch on Equal
		li	$t9, 0x88F2	 # Load	Immediate
		beq	$v1, $t9, loc_8C00075C	# Branch on Equal
		li	$t9, 0x88F4	 # Load	Immediate
		bne	$v1, $t9, loc_8C0008D0	# Branch on Not	Equal
		nop
		j	loc_8C000714	 # Jump
		li	$v0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000634:				 # CODE	XREF: seg000:8C0005FCj
		lui	$t0, 0x10	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0xB	 # Load	Immediate
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C01	 # Load	Upper Immediate
		addiu	$t5, 0x80E0	 # Add Immediate Unsigned
		sw	$t5, 0xC($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000684:				 # CODE	XREF: seg000:8C0005E8j
		lui	$t0, 0x20	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x27	 # Load	Immediate
		sw	$t3, 0xC($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0006CC:				 # CODE	XREF: seg000:8C0005C4j
		lui	$t0, 0x10	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x17	 # Load	Immediate
		sw	$a3, 0xC($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000714:				 # CODE	XREF: seg000:8C00062Cj
		lui	$t0, 0x20	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x27	 # Load	Immediate
		sw	$t3, 0xC($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00075C:				 # CODE	XREF: seg000:8C00061Cj
		li	$v0, 0		 # Load	Immediate
		lui	$t0, 0x10	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x17	 # Load	Immediate
		sw	$a3, 0xC($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0007A8:				 # CODE	XREF: seg000:8C0005A4j
		lui	$t0, 0x10	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x17	 # Load	Immediate
		sw	$a3, 0xC($a2)	 # Store Word
		lui	$t3, 0x8C00	 # Load	Upper Immediate
		addiu	$t3, 0x500	 # Add Immediate Unsigned
		sw	$t3, 0x28($a2)	 # Store Word
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		addiu	$t2, 0x51C	 # Add Immediate Unsigned
		sw	$t2, 0x2C($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x4E4	 # Add Immediate Unsigned
		sw	$t4, 0x24($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000814:				 # CODE	XREF: seg000:8C000614j
		li	$v0, 0		 # Load	Immediate
		lui	$t0, 0x20	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x27	 # Load	Immediate
		sw	$t3, 0xC($a2)	 # Store Word
		lui	$t9, 0x8C00	 # Load	Upper Immediate
		addiu	$t9, 0x4E4	 # Add Immediate Unsigned
		sw	$t9, 0x24($a2)	 # Store Word
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		addiu	$t8, 0x500	 # Add Immediate Unsigned
		sw	$t8, 0x28($a2)	 # Store Word
		lui	$t7, 0x8C00	 # Load	Upper Immediate
		addiu	$t7, 0x51C	 # Add Immediate Unsigned
		sw	$t7, 0x2C($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000884:				 # CODE	XREF: seg000:8C0005D8j
		li	$v0, 0		 # Load	Immediate
		lui	$t0, 0x20	 # Load	Upper Immediate
		sw	$t0, 4($a2)	 # Store Word
		li	$t0, 0x27	 # Load	Immediate
		sw	$t3, 0xC($a2)	 # Store Word
		sh	$a0, 0($a2)	 # Store Halfword
		sh	$a1, 2($a2)	 # Store Halfword
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2E0	 # Add Immediate Unsigned
		sw	$t6, 0x14($a2)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		addiu	$t5, 0x340	 # Add Immediate Unsigned
		sw	$t5, 0x18($a2)	 # Store Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x39C	 # Add Immediate Unsigned
		sw	$t4, 0x1C($a2)	 # Store Word
		li	$v1, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 8($a2)	 # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0008D0:				 # CODE	XREF: seg000:8C0005D0j
					 # seg000:8C00060Cj ...
		li	$v0, 1		 # Load	Immediate

locret_8C0008D4:			 # CODE	XREF: seg000:8C0005E0j
					 # seg000:8C0005F4j
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Rcksprungadresse auf den Stack	(-18+14	= -4)
und Sprung zu Sub_8C00093C
.
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		jal	sub_8C00093C	 # 0xB1400000+0x24 = 0xC0
					 # 0xB1400000+0x24 = 0x0
					 # 
					 # 0xB1440000+0xC  = 0xC1
					 # 0xB1440000+0x10 = 0x4
					 # 0xB1440000+0x14 = 0x68
					 # 0xB1440000+0x34 = 0x0
					 # 0xB1440000+0x30 = 0x82
					 # 
					 # 0xB1440000+0x38 = 0xB1440000
					 # 
					 # Rcksprung
		nop
a0 = 6
a1 = 0x8C00010C
und Sprung zu sub_8C005C30
.
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		addiu	$a1, 0x10C	 # Add Immediate Unsigned
		jal	sub_8C005C30	 #  (0x8C0189C0	+ (a0 shl 2)) =	a1
		li	$a0, 6		 # Load	Immediate
a0 = 7
a1 = 0x8C000120
und Sprung zu sub_8C005C30
.
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		addiu	$a1, 0x120	 # Add Immediate Unsigned
		jal	sub_8C005C30	 #  (0x8C0189C0	+ (a0 shl 2)) =	a1
		li	$a0, 7		 # Load	Immediate
a0 = 8
a1 = 0x8C000134
und Sprung zu sub_8C005C30
.
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		addiu	$a1, 0x134	 # Add Immediate Unsigned
		jal	sub_8C005C30	 #  (0x8C0189C0	+ (a0 shl 2)) =	a1
		li	$a0, 8		 # Load	Immediate
a0 = 0
und Sprung zu sub_8C005D10
.
		jal	sub_8C005D10	 # 0xBB000000+0x20 = a0	and 0xF
					 # Sprung zu sub_8c000168
					 # 
		li	$a0, 0		 # Load	Immediate
und Sprung zu sub_8C000148
.
		jal	sub_8C000148	 # im CoprozUnit0-Register SR bit 0 setzen
		nop

Rcksprungadresse vom Stack holen und Rcksprung
.
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # 0xB1400000+0x24 = 0xC0
 # 0xB1400000+0x24 = 0x0
 # 
 # 0xB1440000+0xC  = 0xC1
 # 0xB1440000+0x10 = 0x4
 # 0xB1440000+0x14 = 0x68
 # 0xB1440000+0x34 = 0x0
 # 0xB1440000+0x30 = 0x82
 # 
 # 0xB1440000+0x38 = 0xB1440000
 # 
 # Rcksprung

sub_8C00093C:				 # CODE	XREF: seg000:8C0008E8p
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 0xC0	 # Load	Immediate
		sb	$t0, 0x24($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		sb	$0, 0x24($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		li	$t0, 0xC1	 # Load	Immediate
		sb	$t0, 0xC($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		li	$t0, 4		 # Load	Immediate
		sb	$t0, 0x10($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		li	$t0, 0x68	 # Load	Immediate
		sb	$t0, 0x14($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		sb	$0, 0x34($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		li	$t0, 0x82	 # Load	Immediate
		sb	$t0, 0x30($1)	 # Store Byte
		lui	$1, 0xB144	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sb	$t0, 0x38($1)	 # Store Byte
 # End of function sub_8C00093C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0009A0:				 # CODE	XREF: sub_8C000A50+20p
					 # sub_8C0029C0+7Cp ...
		li	$t9, 0x61A8	 # Load	Immediate
		mult	$a0, $t9	 # Multiply
		beqz	$v1, locret_8C0009BC  #	Branch on Zero
		nop
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C0009B4:				 # CODE	XREF: sub_8C0009A0+14j
		bnezl	$v1, loc_8C0009B4  # Branch on Not Zero	Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

locret_8C0009BC:			 # CODE	XREF: sub_8C0009A0+8j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C0009A0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0009C4:				 # CODE	XREF: sub_8C0029C0+58p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C005C48	 # Jump	And Link
		nop
		addiu	$v1, $gp, 0x8078  # Add	Immediate Unsigned
		sb	$0, 0($v1)	 # Store Byte
		sb	$0, 1($v1)	 # Store Byte
		sb	$0, 2($v1)	 # Store Byte
		sb	$0, 3($v1)	 # Store Byte
		lui	$1, 0xB001	 # Load	Upper Immediate
		li	$t0, 0x80	 # Load	Immediate
		sw	$t0, -0x6C00($1)  # Store Word
		lui	$1, 0xB001	 # Load	Upper Immediate
		li	$t0, 0x90	 # Load	Immediate
		sw	$t0, -0x6BDC($1)  # Store Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0009C4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000A0C:				 # CODE	XREF: sub_8C000B8C+120p
					 # sub_8C000D6C+40p ...

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C007F90	 # Jump	And Link
		nop
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C000A0C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000A28:				 # CODE	XREF: sub_8C0029C0+394p
					 # sub_8C0029C0+3E4p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C008078	 # Jump	And Link
		nop
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		sra	$v1, $v0, 4	 # Shift Right Arithmetic
		andi	$v1, 0xFF	 # AND Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C000A28


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000A50:				 # CODE	XREF: sub_8C000D6C+E8p
					 # sub_8C000D6C+130p ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s2, 0x20+var_8($sp)  #	Store Word
		andi	$s2, $a0, 0xFF	 # AND Immediate
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		lui	$s1, 0xBA80	 # Load	Upper Immediate
		sw	$s0, 0x20+var_10($sp)  # Store Word
		li	$s0, 0x3E8	 # Load	Immediate

loc_8C000A70:				 # CODE	XREF: sub_8C000A50+40j
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lw	$t9, 0($s1)	 # Load	Word
		lui	$t8, 0x400	 # Load	Upper Immediate
		and	$v1, $t9, $t8	 # AND
		beqzl	$v1, loc_8C000AA0  # Branch on Zero Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		bnez	$s0, loc_8C000A70  # Branch on Not Zero
		nop
		j	loc_8C000AC0	 # Jump
		li	$t5, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000AA0:				 # CODE	XREF: sub_8C000A50+34j
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x34  # 4
		.byte  0xD  #  
		.byte	 0  #  
		.byte	 1  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000AC0:				 # CODE	XREF: sub_8C000A50+48j
		bnel	$s2, $t5, loc_8C000B10	# Branch on Not	Equal Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lui	$1, 0x8C01	 # Load	Upper Immediate
		lbu	$t4, -0x7DF0($1)  # Load Byte Unsigned
		lui	$1, 0x8C01	 # Load	Upper Immediate
		lui	$a0, 0x8C01	 # Load	Upper Immediate
		addiu	$a0, 0x8210	 # Add Immediate Unsigned
		li	$a1, 0		 # Load	Immediate
		xori	$t4, 6		 # Exclusive OR	Immediate
		sb	$t4, -0x7DF0($1)  # Store Byte
		jal	sub_8C008000	 # Jump	And Link
		li	$a2, 1		 # Load	Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000B10:				 # CODE	XREF: sub_8C000A50+70j
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # End of function sub_8C000A50


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000B2C:				 # CODE	XREF: sub_8C000D6C+494p
					 # sub_8C0029C0+27Cp ...

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C0072B4	 # Jump	And Link
		nop
		li	$t1, 0x1000	 # Load	Immediate
		nop
		mtc0	$t1, $21	 # Move	to CP0
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C000B2C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # Kopiert einen String
 # a0 =	Zeiger auf das Ziel
 # a1 =	Zeiger auf den Text
 # a2 =	L„nge
 # am Ende wird	noch eine 0 angeh„ngt

sub_8C000B54:				 # CODE	XREF: sub_8C0029C0+B0p
		li	$v1, 0		 # Load	Immediate
a2=0 dann Rcksprung
		slt	$t6, $v1, $a2	 # Set on Less Than
		beqzl	$t6, locret_8C000B84  #	Branch on Zero Likely
		addu	$t5, $a0, $v1	 # Add Unsigned

loc_8C000B64:				 # CODE	XREF: sub_8C000B54+24j
		addu	$t8, $a1, $v1	 # Add Unsigned
		lb	$t7, 0($t8)	 # Load	Byte
		addu	$t9, $a0, $v1	 # Add Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slt	$t6, $v1, $a2	 # Set on Less Than
		bnez	$t6, loc_8C000B64  # Branch on Not Zero
		sb	$t7, 0($t9)	 # Store Byte
		addu	$t5, $a0, $v1	 # Add Unsigned

locret_8C000B84:			 # CODE	XREF: sub_8C000B54+8j
		jr	$ra		 # Jump	Register
		sb	$0, 0($t5)	 # Store Byte
 # End of function sub_8C000B54


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000B8C:				 # CODE	XREF: sub_8C001D98+114p
					 # sub_8C001D98+16Cp ...

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$s4, 0x28+var_8($sp)  #	Store Word
		addiu	$s4, $gp, 0x8048  # Add	Immediate Unsigned
		sw	$s3, 0x28+var_C($sp)  #	Store Word
		sw	$s1, 0x28+var_14($sp)  # Store Word
		sw	$s2, 0x28+var_10($sp)  # Store Word
		move	$s2, $a0
		sw	$s0, 0x28+var_18($sp)  # Store Word
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x8211	 # Add Immediate Unsigned
		addiu	$v1, $gp, 0x8074  # Add	Immediate Unsigned
		bnez	$a0, loc_8C000BD4  # Branch on Not Zero
		sw	$ra, 0x28+var_4($sp)  #	Store Word
Adresse	des Textes "Downloading"<0>
		lui	$s3, 0x8C00	 # Load	Upper Immediate
		addiu	$s3, 0xD40	 # Add Immediate Unsigned
		li	$t0, 0x5E	 # Load	Immediate
		j	loc_8C000C1C	 # Jump
		sb	$t0, 0($v1)	 # Store Byte
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000BD4:				 # CODE	XREF: sub_8C000B8C+2Cj
		li	$t8, 1		 # Load	Immediate
		bnel	$s2, $t8, loc_8C000BF4	# Branch on Not	Equal Likely
		li	$t7, 2		 # Load	Immediate
Adresse	des Textes "Programming"<0>
		lui	$s3, 0x8C00	 # Load	Upper Immediate
		addiu	$s3, 0xD4C	 # Add Immediate Unsigned
		li	$t0, 0x73	 # Load	Immediate
		j	loc_8C000C1C	 # Jump
		sb	$t0, 0($v1)	 # Store Byte
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000BF4:				 # CODE	XREF: sub_8C000B8C+4Cj
		bnel	$s2, $t7, loc_8C000C10	# Branch on Not	Equal Likely
		li	$t0, 0x38	 # Load	Immediate
		lui	$s3, 0x8C00	 # Load	Upper Immediate
Adresse	des Textes "Uploading"<0>
		addiu	$s3, 0xD58	 # Add Immediate Unsigned
		li	$t0, 0x3E	 # Load	Immediate
		j	loc_8C000C1C	 # Jump
		sb	$t0, 0($v1)	 # Store Byte
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000C10:				 # CODE	XREF: sub_8C000B8C+68j
		sb	$t0, 0($v1)	 # Store Byte
Adresse	des Textes "Loading"<0>
		lui	$s3, 0x8C00	 # Load	Upper Immediate
		addiu	$s3, 0xD64	 # Add Immediate Unsigned

loc_8C000C1C:				 # CODE	XREF: sub_8C000B8C+40j
					 # sub_8C000B8C+60j ...
		move	$a0, $v1
		li	$t0, 0x40	 # Load	Immediate
		sb	$t0, 1($v1)	 # Store Byte
		li	$t5, 0x64	 # Load	Immediate
		mult	$a1, $t5	 # Multiply
		bnezl	$a2, loc_8C000C3C  # Branch on Not Zero	Likely
		divu	$t6, $a2	 # Divide Unsigned
		break	 #0x1C00	 # Break

loc_8C000C3C:				 # CODE	XREF: sub_8C000B8C+A4j
		mflo	$v1		 # Move	From LO
		sltiu	$t4, $v1, 0x65	 # Set on Less Than Immediate Unsigned
		bnez	$t4, loc_8C000C50  # Branch on Not Zero
		move	$s1, $v1
		li	$s1, 0x64	 # Load	Immediate

loc_8C000C50:				 # CODE	XREF: sub_8C000B8C+B8j
		sltiu	$t3, $v1, 0x64	 # Set on Less Than Immediate Unsigned
		bnezl	$t3, loc_8C000C64  # Branch on Not Zero	Likely
		lw	$t2, 0($s4)	 # Load	Word
		li	$v1, 0x63	 # Load	Immediate
		lw	$t2, 0($s4)	 # Load	Word

loc_8C000C64:				 # CODE	XREF: sub_8C000B8C+C8j
		beql	$s1, $t2, loc_8C000D24	# Branch on Equal Likely
		lw	$s4, 0x28+var_8($sp)  #	Load Word
		li	$t7, 0xA	 # Load	Immediate
		divu	$v1, $t7	 # Divide Unsigned
		li	$t3, 0xA	 # Load	Immediate
		mflo	$t8		 # Move	From LO
		nop
		nop
		divu	$v1, $t3	 # Divide Unsigned
		lui	$t9, 0x8C00	 # Load	Upper Immediate
		addiu	$t9, 0x2EA8	 # Add Immediate Unsigned
		addu	$t6, $t9, $t8	 # Add Unsigned
		lbu	$t5, 0($t6)	 # Load	Byte Unsigned
		sb	$t5, 2($a0)	 # Store Byte
		sw	$s1, 0($s4)	 # Store Word
		mfhi	$t4		 # Move	From HI
		addu	$t2, $t9, $t4	 # Add Unsigned
		lbu	$t9, 0($t2)	 # Load	Byte Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		sb	$t9, 3($a0)	 # Store Byte
		lw	$t8, 3($s0)	 # Load	Word
		bnel	$t8, $s2, loc_8C000CD0	# Branch on Not	Equal Likely
		move	$a0, $s3
		lw	$t6, 0($s4)	 # Load	Word
		li	$t5, 0x65	 # Load	Immediate
		bne	$t6, $t5, loc_8C000CFC	# Branch on Not	Equal
		move	$a0, $s3

loc_8C000CD0:				 # CODE	XREF: sub_8C000B8C+12Cj
		jal	sub_8C00798C	 # Jump	And Link
		move	$a1, $s1
		sw	$s2, 3($s0)	 # Store Word
		lw	$s4, 0x28+var_8($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000CFC:				 # CODE	XREF: sub_8C000B8C+13Cj
		jal	sub_8C007A28	 # Jump	And Link
		move	$a0, $s1
		lw	$s4, 0x28+var_8($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C000D24:				 # CODE	XREF: sub_8C000B8C+D8j
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C000B8C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
aDownloading:	.ascii "Downloading"<0>
aProgramming:	.ascii "Programming"<0>
aUploading:	.ascii "Uploading"<0>
		.byte	 0  #  
		.byte	 0  #  
aLoading:	.ascii "Loading"<0>

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C000D6C:				 # CODE	XREF: sub_8C001334+4Cp
					 # sub_8C001B50+5Cp ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		sw	$s2, 0x20+var_8($sp)  #	Store Word
		addiu	$s2, $gp, 0x8074  # Add	Immediate Unsigned
		li	$t0, 0x79	 # Load	Immediate
		sb	$t0, 0($s2)	 # Store Byte
		li	$t0, 0x40	 # Load	Immediate
		sb	$t0, 1($s2)	 # Store Byte
		li	$t0, 0x3E	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x58	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		move	$s1, $a0
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		move	$v1, $s1
		addiu	$t9, $s1, 0xFFFF  # Add	Immediate Unsigned
		sltiu	$t8, $t9, 0x11	 # Set on Less Than Immediate Unsigned
		beqz	$t8, loc_8C0011D0  # Branch on Zero
		addiu	$s0, 0x8218	 # Add Immediate Unsigned
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		sll	$t7, $t9, 2	 # Shift Left Logical
		addiu	$t6, 0xDE4	 # Add Immediate Unsigned
		addu	$t7, $t6, $t7	 # Add Unsigned
		lw	$t9, 0($t7)	 # Load	Word
		jr	$t9		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0xE70($0)	 # Load	Word
		lw	$0, 0xF48($0)	 # Load	Word
		lw	$0, 0xEB8($0)	 # Load	Word
		lw	$0, 0xE28($0)	 # Load	Word
		lw	$0, 0xF90($0)	 # Load	Word
		lw	$0, 0x1020($0)	 # Load	Word
		lw	$0, 0x1068($0)	 # Load	Word
		lw	$0, 0x11D0($0)	 # Load	Word
		lw	$0, 0x11D0($0)	 # Load	Word
		lw	$0, 0x10B0($0)	 # Load	Word
		lw	$0, 0xF00($0)	 # Load	Word
		lw	$0, 0x10F8($0)	 # Load	Word
		lw	$0, 0xFD8($0)	 # Load	Word
		lw	$0, 0x11D0($0)	 # Load	Word
		lw	$0, 0x11D0($0)	 # Load	Word
		lw	$0, 0x1140($0)	 # Load	Word
		lw	$0, 0x1188($0)	 # Load	Word
		li	$t0, 6		 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x5E	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-Id"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1228	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x76	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x39	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-HC"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x123C	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x76	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x71	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-HF"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1250	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x76	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x54	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-Hn"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1264	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x5E	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x39	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-dC"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1278	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x77	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x39	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-AC"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x128C	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x77	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x6D	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-AS"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x12A0	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x3E	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x78	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-Ut"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x12B4	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x77	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x5E	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-Ad"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x12C8	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x71	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x79	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-FE"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x12DC	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x71	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x54	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-Fn"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x12F0	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x79	 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x39	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-EC"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1304	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 6		 # Load	Immediate
		sb	$t0, 2($s2)	 # Store Byte
		li	$t0, 0x39	 # Load	Immediate
		sb	$t0, 3($s2)	 # Store Byte
Adresse	des Textes "        ERROR-IC"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x1318	 # Add Immediate Unsigned
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0011D0:				 # CODE	XREF: sub_8C000D6C+54j
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x1224	 # Add Immediate Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s2

loc_8C0011E4:				 # CODE	XREF: sub_8C000D6C+F4j
					 # sub_8C000D6C+13Cj ...
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop

loc_8C0011F8:				 # CODE	XREF: sub_8C000D6C+FCj
					 # sub_8C000D6C+144j ...
		jal	sub_8C000A0C	 # Jump	And Link
		addiu	$a0, $gp, 0x8078  # Add	Immediate Unsigned
		jal	sub_8C000B2C	 # Jump	And Link
		nop
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C0011E4	# Branch on Not	Equal
		nop
		j	loc_8C0011F8	 # Jump
		nop
 # End of function sub_8C000D6C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorId:	.ascii "        ERROR-Id"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorHc:	.ascii "        ERROR-HC"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorHf:	.ascii "        ERROR-HF"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorHn:	.ascii "        ERROR-Hn"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorDc:	.ascii "        ERROR-dC"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorAc:	.ascii "        ERROR-AC"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorAs:	.ascii "        ERROR-AS"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorUt:	.ascii "        ERROR-Ut"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorAd:	.ascii "        ERROR-Ad"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorFe:	.ascii "        ERROR-FE"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorFn:	.ascii "        ERROR-Fn"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorEc:	.ascii "        ERROR-EC"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aErrorIc:	.ascii "        ERROR-IC"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jr	$ra		 # Jump	Register
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001334:				 # CODE	XREF: sub_8C0029C0+74p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		lui	$a1, 0x8C18	 # Load	Upper Immediate
		jal	sub_8C000244	 # Jump	And Link
		addiu	$a1, 0x8A50	 # Add Immediate Unsigned
		sltiu	$v0, 1		 # Set on Less Than Immediate Unsigned
		sw	$v0, -0x7FB4($gp)  # Store Word
		lui	$a0, 0xB300	 # Load	Upper Immediate
		lui	$a1, 0x8C18	 # Load	Upper Immediate
		jal	sub_8C000244	 # Jump	And Link
		addiu	$a1, 0x8A80	 # Add Immediate Unsigned
		lw	$t9, -0x7FB4($gp)  # Load Word
		bnez	$t9, loc_8C001378  # Branch on Not Zero
		sltiu	$v0, 1		 # Set on Less Than Immediate Unsigned
		j	loc_8C001380	 # Jump
		sw	$v0, -0x7FB0($gp)  # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001378:				 # CODE	XREF: sub_8C001334+34j
		bnez	$v0, loc_8C001394  # Branch on Not Zero
		sw	$v0, -0x7FB0($gp)  # Store Word

loc_8C001380:				 # CODE	XREF: sub_8C001334+3Cj
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0xC	 # Load	Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001394:				 # CODE	XREF: sub_8C001334+44j
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C001334

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0013A0:				 # CODE	XREF: sub_8C0029C0+130p
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t8, -0x7588($1)  # Load Word
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		lui	$t9, 0xBFC0	 # Load	Upper Immediate
		jalr	$t8		 # Jump	And Link Register
		addu	$a0, $t9	 # Add Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t7, -0x7594($1)  # Load Word
		jalr	$t7		 # Jump	And Link Register
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0013D8:				 # CODE	XREF: sub_8C0029C0+138p
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t8, -0x7558($1)  # Load Word
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		lui	$t9, 0xB300	 # Load	Upper Immediate
		jalr	$t8		 # Jump	And Link Register
		addu	$a0, $t9	 # Add Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t7, -0x7564($1)  # Load Word
		jalr	$t7		 # Jump	And Link Register
		lui	$a0, 0xB300	 # Load	Upper Immediate
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001410:				 # CODE	XREF: sub_8C0029C0+42Cp
					 # sub_8C0029C0+468p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		lui	$s1, 0x8C18	 # Load	Upper Immediate
		addiu	$s1, 0x8AA8	 # Add Immediate Unsigned
		sw	$s0, 0x20+var_10($sp)  # Store Word
		li	$s0, 0		 # Load	Immediate
		lw	$t7, 0($s1)	 # Load	Word

loc_8C001430:				 # CODE	XREF: sub_8C001410+38j
		sll	$t9, $s0, 13	 # Shift Left Logical
		lui	$t8, 0xB300	 # Load	Upper Immediate
		addu	$a0, $t9, $t8	 # Add Unsigned
		jalr	$t7		 # Jump	And Link Register
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t6, $s0, 3	 # Set on Less Than Immediate
		bnezl	$t6, loc_8C001430  # Branch on Not Zero	Likely
		lw	$t7, 0($s1)	 # Load	Word
		li	$s0, 0		 # Load	Immediate
		lw	$t3, 0($s1)	 # Load	Word

loc_8C001458:				 # CODE	XREF: sub_8C001410+60j
		sll	$t5, $s0, 16	 # Shift Left Logical
		lui	$t4, 0xB30A	 # Load	Upper Immediate
		addu	$a0, $t5, $t4	 # Add Unsigned
		jalr	$t3		 # Jump	And Link Register
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t2, $s0, 6	 # Set on Less Than Immediate
		bnezl	$t2, loc_8C001458  # Branch on Not Zero	Likely
		lw	$t3, 0($s1)	 # Load	Word
		lw	$t9, -0x24($s1)	 # Load	Word
		lui	$t8, 0x10	 # Load	Upper Immediate
		sltu	$t7, $t8, $t9	 # Set on Less Than Unsigned
		beqzl	$t7, loc_8C0014B8  # Branch on Zero Likely
		lw	$t2, -0xC($s1)	 # Load	Word
		li	$s0, 0		 # Load	Immediate
		lw	$t4, 0($s1)	 # Load	Word

loc_8C001494:				 # CODE	XREF: sub_8C001410+9Cj
		sll	$t6, $s0, 16	 # Shift Left Logical
		lui	$t5, 0xB310	 # Load	Upper Immediate
		addu	$a0, $t6, $t5	 # Add Unsigned
		jalr	$t4		 # Jump	And Link Register
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t3, $s0, 6	 # Set on Less Than Immediate
		bnezl	$t3, loc_8C001494  # Branch on Not Zero	Likely
		lw	$t4, 0($s1)	 # Load	Word
		lw	$t2, -0xC($s1)	 # Load	Word

loc_8C0014B8:				 # CODE	XREF: sub_8C001410+74j
		jalr	$t2		 # Jump	And Link Register
		lui	$a0, 0xB300	 # Load	Upper Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # End of function sub_8C001410

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0014D4:				 # CODE	XREF: sub_8C0017F8+68p
					 # sub_8C0018BC+3Cp ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -8($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0014E4:				 # CODE	XREF: sub_8C001950+24p
					 # seg000:8C001A1Cp ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -0xC($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0014F4:				 # CODE	XREF: sub_8C001950+2Cp
					 # seg000:8C001A24p ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -0x10($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001504:				 # CODE	XREF: sub_8C001950+34p
					 # seg000:8C001A2Cp ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -0x14($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001514:				 # CODE	XREF: sub_8C001950+3Cp
					 # seg000:8C001A34p ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -0x18($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001524:				 # CODE	XREF: sub_8C0017F8+48p
					 # sub_8C001950+44p ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lhu	$v1, -0x1A($1)	 # Load	Halfword Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001534:				 # CODE	XREF: sub_8C0017F8+50p
					 # sub_8C001950+4Cp ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lhu	$v1, -0x1C($1)	 # Load	Halfword Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001544:				 # CODE	XREF: sub_8C0017F8+60p
					 # sub_8C0018BC+34p ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lbu	$v1, -0x40($1)	 # Load	Byte Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001554:				 # CODE	XREF: sub_8C0017F8+58p
					 # sub_8C0018BC+2Cp ...
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lw	$v1, -0x20($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001564:				 # CODE	XREF: sub_8C0029C0+190p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s2, 0x28+var_10($sp)  # Store Word
		sw	$s1, 0x28+var_14($sp)  # Store Word
		sw	$s0, 0x28+var_18($sp)  # Store Word
		sw	$s3, 0x28+var_C($sp)  #	Store Word
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0x8A80	 # Add Immediate Unsigned
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lw	$t9, 0x14($s3)	 # Load	Word
		lui	$a0, 0xB300	 # Load	Upper Immediate
		ori	$a0, 0xE000	 # OR Immediate
		lui	$s0, 0xB300	 # Load	Upper Immediate
		jalr	$t9		 # Jump	And Link Register
		ori	$s0, 0xE000	 # OR Immediate
		bnez	$v0, loc_8C0015AC  # Branch on Not Zero
		li	$s2, 0x2000	 # Load	Immediate

loc_8C0015AC:				 # CODE	XREF: sub_8C001564+40j
		lui	$s1, 0xBFC0	 # Load	Upper Immediate
		ori	$s1, 0xE000	 # OR Immediate
		nop

loc_8C0015B8:				 # CODE	XREF: sub_8C001564+70j
		lw	$t8, 0x18($s3)	 # Load	Word
		lhu	$a1, 0($s1)	 # Load	Halfword Unsigned
		jalr	$t8		 # Jump	And Link Register
		move	$a0, $s0
		bnez	$v0, loc_8C0015D0  # Branch on Not Zero
		addiu	$s1, 2		 # Add Immediate Unsigned

loc_8C0015D0:				 # CODE	XREF: sub_8C001564+64j
		addiu	$s2, 0xFFFE	 # Add Immediate Unsigned
		bnez	$s2, loc_8C0015B8  # Branch on Not Zero
		addiu	$s0, 2		 # Add Immediate Unsigned
		lw	$t6, 0x1C($s3)	 # Load	Word
		jalr	$t6		 # Jump	And Link Register
		lui	$a0, 0xB300	 # Load	Upper Immediate
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C001564


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00160C:				 # CODE	XREF: sub_8C0016B4+118p
					 # sub_8C0029C0+180p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s2, 0x28+var_10($sp)  # Store Word
		sw	$s1, 0x28+var_14($sp)  # Store Word
		sw	$s0, 0x28+var_18($sp)  # Store Word
		sw	$s3, 0x28+var_C($sp)  #	Store Word
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0x8A50	 # Add Immediate Unsigned
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lw	$t9, 0x14($s3)	 # Load	Word
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		ori	$a0, 0xE000	 # OR Immediate
		lui	$s0, 0xBFC0	 # Load	Upper Immediate
		jalr	$t9		 # Jump	And Link Register
		ori	$s0, 0xE000	 # OR Immediate
		bnez	$v0, loc_8C001654  # Branch on Not Zero
		li	$s2, 0x2000	 # Load	Immediate

loc_8C001654:				 # CODE	XREF: sub_8C00160C+40j
		lui	$s1, 0xB300	 # Load	Upper Immediate
		ori	$s1, 0xE000	 # OR Immediate
		nop

loc_8C001660:				 # CODE	XREF: sub_8C00160C+70j
		lw	$t8, 0x18($s3)	 # Load	Word
		lhu	$a1, 0($s1)	 # Load	Halfword Unsigned
		jalr	$t8		 # Jump	And Link Register
		move	$a0, $s0
		bnez	$v0, loc_8C001678  # Branch on Not Zero
		addiu	$s1, 2		 # Add Immediate Unsigned

loc_8C001678:				 # CODE	XREF: sub_8C00160C+64j
		addiu	$s2, 0xFFFE	 # Add Immediate Unsigned
		bnez	$s2, loc_8C001660  # Branch on Not Zero
		addiu	$s0, 2		 # Add Immediate Unsigned
		lw	$t6, 0x1C($s3)	 # Load	Word
		jalr	$t6		 # Jump	And Link Register
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C00160C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0016B4:				 # CODE	XREF: sub_8C0017F8+94p
					 # sub_8C0018BC+70p ...

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4
arg_10		=  0x10
arg_16		=  0x16
arg_1A		=  0x1A
arg_1C		=  0x1C
arg_23		=  0x23

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		move	$s4, $a2
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		move	$s5, $a3
		sw	$s3, 0x30+var_14($sp)  # Store Word
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0x8A80	 # Add Immediate Unsigned
		sw	$s0, 0x30+var_20($sp)  # Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		move	$s1, $a0
		lui	$a0, 0x8C02	 # Load	Upper Immediate
		addiu	$a0, 0x8A50	 # Add Immediate Unsigned
		move	$s0, $a0
		sw	$s2, 0x30+var_18($sp)  # Store Word
		move	$s2, $a1
		lui	$a1, 0xB300	 # Load	Upper Immediate
		ori	$a1, 0xE000	 # OR Immediate
		jal	sub_8C00508C	 # Jump	And Link
		li	$a2, 0x2000	 # Load	Immediate
		lw	$t0, 0x30+arg_10($sp)  # Load Word
		sw	$t0, 0x1FE8($s0)  # Store Word
		lhu	$t0, 0x30+arg_16($sp)  # Load Halfword Unsigned
		sh	$t0, 0x1FE6($s0)  # Store Halfword
		lhu	$t0, 0x30+arg_1A($sp)  # Load Halfword Unsigned
		sw	$s5, 0x1FEC($s0)  # Store Word
		sh	$t0, 0x1FE4($s0)  # Store Halfword
		li	$t0, 1		 # Load	Immediate
		sh	$t0, 0x1FDE($s0)  # Store Halfword
		sh	$t0, 0x1FDC($s0)  # Store Halfword
		li	$t0, 8		 # Load	Immediate
		sw	$t0, 0x1FD8($s0)  # Store Word
		lw	$t0, 0x30+arg_1C($sp)  # Load Word
		sw	$s2, 0x1FF4($s0)  # Store Word
		sw	$t0, 0x1FE0($s0)  # Store Word
		lbu	$t0, 0x30+arg_23($sp)  # Load Byte Unsigned
		sw	$s4, 0x1FF0($s0)  # Store Word
		move	$a0, $s0
		sw	$s1, 0x1FF8($s0)  # Store Word
		sb	$t0, 0x1FC0($s0)  # Store Byte
		jal	sub_8C005004	 # Jump	And Link
		li	$a1, 0x1FFE	 # Load	Immediate
		addiu	$v1, $v0, 0xCAC	 # Add Immediate Unsigned
		sh	$v1, 0x1FFE($s0)  # Store Halfword
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lw	$t9, 0x14($s3)	 # Load	Word
		lui	$a0, 0xB300	 # Load	Upper Immediate
		ori	$a0, 0xE000	 # OR Immediate
		lui	$s1, 0xB300	 # Load	Upper Immediate
		jalr	$t9		 # Jump	And Link Register
		ori	$s1, 0xE000	 # OR Immediate
		bnez	$v0, loc_8C001790  # Branch on Not Zero
		li	$s2, 0x2000	 # Load	Immediate

loc_8C001790:				 # CODE	XREF: sub_8C0016B4+D4j
		nop

loc_8C001794:				 # CODE	XREF: sub_8C0016B4+FCj
		lw	$t8, 0x18($s3)	 # Load	Word
		lhu	$a1, 0($s0)	 # Load	Halfword Unsigned
		jalr	$t8		 # Jump	And Link Register
		move	$a0, $s1
		bnez	$v0, loc_8C0017AC  # Branch on Not Zero
		addiu	$s0, 2		 # Add Immediate Unsigned

loc_8C0017AC:				 # CODE	XREF: sub_8C0016B4+F0j
		addiu	$s2, 0xFFFE	 # Add Immediate Unsigned
		bnez	$s2, loc_8C001794  # Branch on Not Zero
		addiu	$s1, 2		 # Add Immediate Unsigned
		lw	$t6, 0x1C($s3)	 # Load	Word
		jalr	$t6		 # Jump	And Link Register
		lui	$a0, 0xB300	 # Load	Upper Immediate
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		jal	sub_8C00160C	 # Jump	And Link
		nop
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C0016B4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0017F8:				 # CODE	XREF: sub_8C0022B4+114p

var_40		= -0x40
var_3C		= -0x3C
var_38		= -0x38
var_34		= -0x34
var_30		= -0x30
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_8		= -8
var_4		= -4

		addiu	$sp, -0x50	 # Add Immediate Unsigned
		sw	$ra, 0x50+var_4($sp)  #	Store Word
		sw	$s6, 0x50+var_10($sp)  # Store Word
		sw	$s5, 0x50+var_14($sp)  # Store Word
		sw	$s0, 0x50+var_28($sp)  # Store Word
		lw	$s0, -0x7FA0($gp)  # Load Word
		sw	$s1, 0x50+var_24($sp)  # Store Word
		lw	$s1, -0x7F9C($gp)  # Load Word
		sw	$s2, 0x50+var_20($sp)  # Store Word
		sw	$s3, 0x50+var_1C($sp)  # Store Word
		sw	$s4, 0x50+var_18($sp)  # Store Word
		move	$a1, $s0
		jal	sub_8C004FB0	 # Jump	And Link
		lui	$a0, 0xBFC1	 # Load	Upper Immediate
		move	$s2, $v0
		move	$a1, $s1
		jal	sub_8C004FB0	 # Jump	And Link
		lui	$a0, 0xB301	 # Load	Upper Immediate
		jal	loc_8C001524	 # Jump	And Link
		move	$s3, $v0
		jal	loc_8C001534	 # Jump	And Link
		move	$s4, $v0
		jal	loc_8C001554	 # Jump	And Link
		move	$s5, $v0
		jal	loc_8C001544	 # Jump	And Link
		move	$s6, $v0
		jal	loc_8C0014D4	 # Jump	And Link
		sw	$v0, 0x50+var_8($sp)  #	Store Word
		sw	$s6, 0x50+var_34($sp)  # Store Word
		sw	$s5, 0x50+var_38($sp)  # Store Word
		sw	$s4, 0x50+var_3C($sp)  # Store Word
		sw	$s3, 0x50+var_40($sp)  # Store Word
		lw	$t0, 0x50+var_8($sp)  #	Load Word
		move	$a3, $s1
		move	$a2, $s2
		move	$a1, $s0
		move	$a0, $v0
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$t0, 0x50+var_30($sp)  # Store Word
		lw	$s6, 0x50+var_10($sp)  # Load Word
		lw	$ra, 0x50+var_4($sp)  #	Load Word
		lw	$s0, 0x50+var_28($sp)  # Load Word
		lw	$s1, 0x50+var_24($sp)  # Load Word
		lw	$s2, 0x50+var_20($sp)  # Load Word
		lw	$s3, 0x50+var_1C($sp)  # Load Word
		lw	$s4, 0x50+var_18($sp)  # Load Word
		lw	$s5, 0x50+var_14($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x50	 # Add Immediate Unsigned
 # End of function sub_8C0017F8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0018BC:				 # CODE	XREF: sub_8C0022B4+14Cp

var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x40	 # Add Immediate Unsigned
		sw	$ra, 0x40+var_4($sp)  #	Store Word
		lhu	$a1, -0x7F98($gp)  # Load Halfword Unsigned
		lui	$a0, 0xB300	 # Load	Upper Immediate
		sw	$s0, 0x40+var_18($sp)  # Store Word
		sw	$s1, 0x40+var_14($sp)  # Store Word
		sw	$s2, 0x40+var_10($sp)  # Store Word
		sw	$s3, 0x40+var_C($sp)  #	Store Word
		move	$s0, $a1
		jal	sub_8C005004	 # Jump	And Link
		ori	$a0, 0x6000	 # OR Immediate
		jal	loc_8C001554	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001544	 # Jump	And Link
		move	$s2, $v0
		jal	loc_8C0014D4	 # Jump	And Link
		move	$s3, $v0
		move	$a0, $v0
		lw	$t9, -0x7F90($gp)  # Load Word
		lw	$a2, -0x7F94($gp)  # Load Word
		lui	$1, 0x8000	 # Load	Upper Immediate
		lw	$a1, 0xFEC($1)	 # Load	Word
		lui	$1, 0x8000	 # Load	Upper Immediate
		lw	$a3, 0xFF0($1)	 # Load	Word
		sw	$t9, 0x40+var_30($sp)  # Store Word
		sw	$s0, 0x40+var_2C($sp)  # Store Word
		sw	$s1, 0x40+var_28($sp)  # Store Word
		sw	$s2, 0x40+var_24($sp)  # Store Word
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$s3, 0x40+var_20($sp)  # Store Word
		lw	$s3, 0x40+var_C($sp)  #	Load Word
		lw	$ra, 0x40+var_4($sp)  #	Load Word
		lw	$s0, 0x40+var_18($sp)  # Load Word
		lw	$s1, 0x40+var_14($sp)  # Load Word
		lw	$s2, 0x40+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x40	 # Add Immediate Unsigned
 # End of function sub_8C0018BC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001950:				 # CODE	XREF: sub_8C0029C0+208p
					 # sub_8C0029C0+2C4p

var_38		= -0x38
var_34		= -0x34
var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x48	 # Add Immediate Unsigned
		sw	$ra, 0x48+var_4($sp)  #	Store Word
		sw	$s6, 0x48+var_8($sp)  #	Store Word
		sw	$s5, 0x48+var_C($sp)  #	Store Word
		sw	$s4, 0x48+var_10($sp)  # Store Word
		sw	$s3, 0x48+var_14($sp)  # Store Word
		sw	$s2, 0x48+var_18($sp)  # Store Word
		sw	$s1, 0x48+var_1C($sp)  # Store Word
		sw	$s0, 0x48+var_20($sp)  # Store Word
		jal	loc_8C0014E4	 # Jump	And Link
		move	$s0, $a0
		jal	loc_8C0014F4	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001504	 # Jump	And Link
		move	$s2, $v0
		jal	loc_8C001514	 # Jump	And Link
		move	$s3, $v0
		jal	loc_8C001524	 # Jump	And Link
		move	$s4, $v0
		jal	loc_8C001534	 # Jump	And Link
		move	$s5, $v0
		jal	loc_8C0014D4	 # Jump	And Link
		move	$s6, $v0
		move	$a0, $v0
		move	$a1, $s1
		move	$a2, $s2
		move	$a3, $s3
		sw	$s4, 0x48+var_38($sp)  # Store Word
		sw	$s5, 0x48+var_34($sp)  # Store Word
		sw	$s6, 0x48+var_30($sp)  # Store Word
		sw	$s0, 0x48+var_2C($sp)  # Store Word
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$0, 0x48+var_28($sp)  #	Store Word
		lw	$s6, 0x48+var_8($sp)  #	Load Word
		lw	$ra, 0x48+var_4($sp)  #	Load Word
		lw	$s0, 0x48+var_20($sp)  # Load Word
		lw	$s1, 0x48+var_1C($sp)  # Load Word
		lw	$s2, 0x48+var_18($sp)  # Load Word
		lw	$s3, 0x48+var_14($sp)  # Load Word
		lw	$s4, 0x48+var_10($sp)  # Load Word
		lw	$s5, 0x48+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x48	 # Add Immediate Unsigned
 # End of function sub_8C001950

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x48	 # Add Immediate Unsigned
		sw	$ra, 0x44($sp)	 # Store Word
		sw	$s6, 0x40($sp)	 # Store Word
		sw	$s5, 0x3C($sp)	 # Store Word
		sw	$s4, 0x38($sp)	 # Store Word
		sw	$s3, 0x34($sp)	 # Store Word
		sw	$s2, 0x30($sp)	 # Store Word
		sw	$s1, 0x2C($sp)	 # Store Word
		jal	loc_8C0014E4	 # Jump	And Link
		sw	$s0, 0x28($sp)	 # Store Word
		jal	loc_8C0014F4	 # Jump	And Link
		move	$s0, $v0
		jal	loc_8C001504	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001514	 # Jump	And Link
		move	$s2, $v0
		jal	loc_8C001524	 # Jump	And Link
		move	$s3, $v0
		jal	loc_8C001534	 # Jump	And Link
		move	$s4, $v0
		jal	loc_8C001554	 # Jump	And Link
		move	$s5, $v0
		jal	loc_8C0014D4	 # Jump	And Link
		move	$s6, $v0
		move	$a0, $v0
		move	$a1, $s0
		move	$a2, $s1
		move	$a3, $s2
		sw	$s3, 0x10($sp)	 # Store Word
		sw	$s4, 0x14($sp)	 # Store Word
		sw	$s5, 0x18($sp)	 # Store Word
		sw	$s6, 0x1C($sp)	 # Store Word
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$0, 0x20($sp)	 # Store Word
		lw	$s6, 0x40($sp)	 # Load	Word
		lw	$ra, 0x44($sp)	 # Load	Word
		lw	$s0, 0x28($sp)	 # Load	Word
		lw	$s1, 0x2C($sp)	 # Load	Word
		lw	$s2, 0x30($sp)	 # Load	Word
		lw	$s3, 0x34($sp)	 # Load	Word
		lw	$s4, 0x38($sp)	 # Load	Word
		lw	$s5, 0x3C($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x48	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001AAC:				 # CODE	XREF: sub_8C001B50+54p
					 # sub_8C001B50+90p

var_38		= -0x38
var_34		= -0x34
var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x48	 # Add Immediate Unsigned
		sw	$ra, 0x48+var_4($sp)  #	Store Word
		sw	$s5, 0x48+var_C($sp)  #	Store Word
		sw	$s4, 0x48+var_10($sp)  # Store Word
		sw	$s3, 0x48+var_14($sp)  # Store Word
		sw	$s2, 0x48+var_18($sp)  # Store Word
		sw	$s1, 0x48+var_1C($sp)  # Store Word
		jal	loc_8C0014E4	 # Jump	And Link
		sw	$s0, 0x48+var_20($sp)  # Store Word
		jal	loc_8C0014F4	 # Jump	And Link
		move	$s0, $v0
		jal	loc_8C001504	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001514	 # Jump	And Link
		move	$s2, $v0
		jal	loc_8C001524	 # Jump	And Link
		move	$s3, $v0
		jal	loc_8C001534	 # Jump	And Link
		move	$s4, $v0
		jal	loc_8C0014D4	 # Jump	And Link
		move	$s5, $v0
		move	$a0, $v0
		move	$a1, $s0
		move	$a2, $s1
		move	$a3, $s2
		sw	$s3, 0x48+var_38($sp)  # Store Word
		sw	$s4, 0x48+var_34($sp)  # Store Word
		sw	$s5, 0x48+var_30($sp)  # Store Word
		sw	$0, 0x48+var_2C($sp)  #	Store Word
		li	$t0, 1		 # Load	Immediate
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$t0, 0x48+var_28($sp)  # Store Word
		lw	$s5, 0x48+var_C($sp)  #	Load Word
		lw	$ra, 0x48+var_4($sp)  #	Load Word
		lw	$s0, 0x48+var_20($sp)  # Load Word
		lw	$s1, 0x48+var_1C($sp)  # Load Word
		lw	$s2, 0x48+var_18($sp)  # Load Word
		lw	$s3, 0x48+var_14($sp)  # Load Word
		lw	$s4, 0x48+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x48	 # Add Immediate Unsigned
 # End of function sub_8C001AAC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001B50:				 # CODE	XREF: sub_8C0029C0+404p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s3, 0x28+var_C($sp)  #	Store Word
		sw	$s2, 0x28+var_10($sp)  # Store Word
		sw	$s1, 0x28+var_14($sp)  # Store Word
		jal	loc_8C0014E4	 # Jump	And Link
		sw	$s0, 0x28+var_18($sp)  # Store Word
		jal	loc_8C001504	 # Jump	And Link
		move	$s0, $v0
		jal	loc_8C0014F4	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001514	 # Jump	And Link
		move	$s2, $v0
		lui	$t9, 0x1F	 # Load	Upper Immediate
		sltu	$t8, $t9, $s0	 # Set on Less Than Unsigned
		bnez	$t8, loc_8C001BA4  # Branch on Not Zero
		move	$s3, $v0
		lui	$t7, 0x20	 # Load	Upper Immediate
		sltu	$t6, $t7, $s1	 # Set on Less Than Unsigned
		beqzl	$t6, loc_8C001BB8  # Branch on Zero Likely
		move	$a1, $s0

loc_8C001BA4:				 # CODE	XREF: sub_8C001B50+3Cj
		jal	sub_8C001AAC	 # Jump	And Link
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0xD	 # Load	Immediate
		move	$a1, $s0

loc_8C001BB8:				 # CODE	XREF: sub_8C001B50+4Cj
		jal	sub_8C004FB0	 # Jump	And Link
		lui	$a0, 0xBFC1	 # Load	Upper Immediate
		move	$s0, $v0
		move	$a1, $s1
		jal	sub_8C004FB0	 # Jump	And Link
		lui	$a0, 0xB301	 # Load	Upper Immediate
		bne	$s2, $s0, loc_8C001BE0	# Branch on Not	Equal
		move	$v1, $v0
		beql	$s3, $v1, loc_8C001C0C	# Branch on Equal Likely
		lw	$s3, 0x28+var_C($sp)  #	Load Word

loc_8C001BE0:				 # CODE	XREF: sub_8C001B50+80j
		jal	sub_8C001AAC	 # Jump	And Link
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 5		 # Load	Immediate
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001C0C:				 # CODE	XREF: sub_8C001B50+88j
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C001B50


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001C24:				 # CODE	XREF: sub_8C0029C0+3B8p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		jal	loc_8C001524	 # Jump	And Link
		sw	$s0, 0x20+var_10($sp)  # Store Word
		jal	loc_8C001534	 # Jump	And Link
		move	$s0, $v0
		li	$t9, 0xA000	 # Load	Immediate
		slt	$t8, $t9, $s0	 # Set on Less Than
		beqzl	$t8, loc_8C001C6C  # Branch on Zero Likely
		move	$s1, $v0
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001C6C:				 # CODE	XREF: sub_8C001C24+24j
		move	$a1, $s0
		lui	$a0, 0xB300	 # Load	Upper Immediate
		jal	sub_8C005004	 # Jump	And Link
		ori	$a0, 0x6000	 # OR Immediate
		andi	$v1, $v0, 0xFFFF  # AND	Immediate
		beql	$s1, $v1, loc_8C001CA4	# Branch on Equal Likely
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001CA4:				 # CODE	XREF: sub_8C001C24+5Cj
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # End of function sub_8C001C24


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001CBC:				 # CODE	XREF: sub_8C0029C0+140p

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		ori	$a0, 0xE000	 # OR Immediate
		jal	sub_8C005004	 # Jump	And Link
		li	$a1, 0x1FFE	 # Load	Immediate
		addiu	$s0, $v0, 0xCAC	 # Add Immediate Unsigned
		andi	$s0, 0xFFFF	 # AND Immediate
		lui	$a0, 0xB300	 # Load	Upper Immediate
		ori	$a0, 0xE000	 # OR Immediate
		jal	sub_8C005004	 # Jump	And Link
		li	$a1, 0x1FFE	 # Load	Immediate
		lui	$1, 0xBFC1	 # Load	Upper Immediate
		lhu	$t9, -2($1)	 # Load	Halfword Unsigned
		addiu	$v1, $v0, 0xCAC	 # Add Immediate Unsigned
		bne	$s0, $t9, loc_8C001D5C	# Branch on Not	Equal
		andi	$v1, 0xFFFF	 # AND Immediate
		lui	$1, 0xB301	 # Load	Upper Immediate
		lhu	$t7, -2($1)	 # Load	Halfword Unsigned
		bnel	$v1, $t7, loc_8C001D48	# Branch on Not	Equal Likely
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		bnel	$s0, $v1, loc_8C001D34	# Branch on Not	Equal Likely
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001D34:				 # CODE	XREF: sub_8C001CBC+58j
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001D48:				 # CODE	XREF: sub_8C001CBC+50j
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		li	$v0, 2		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 2		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001D5C:				 # CODE	XREF: sub_8C001CBC+40j
		lui	$1, 0xB301	 # Load	Upper Immediate
		lhu	$t4, -2($1)	 # Load	Halfword Unsigned
		bnel	$v1, $t4, loc_8C001D84	# Branch on Not	Equal Likely
		lw	$ra, 0x14($sp)	 # Load	Word
		lw	$ra, 0x14($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001D84:				 # CODE	XREF: sub_8C001CBC+A8j
		lw	$s0, 0x10($sp)	 # Load	Word
		li	$v0, 3		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 3		 # Load	Immediate
 # End of function sub_8C001CBC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001D98:				 # CODE	XREF: sub_8C0022B4+84p
					 # sub_8C0022B4+C4p

var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_4		= -4

		addiu	$sp, -0x40	 # Add Immediate Unsigned
		sw	$ra, 0x40+var_4($sp)  #	Store Word
		sw	$s4, 0x40+var_20($sp)  # Store Word
		sw	$s2, 0x40+var_28($sp)  # Store Word
		sw	$s1, 0x40+var_2C($sp)  # Store Word
		sw	$s3, 0x40+var_24($sp)  # Store Word
		move	$s3, $a1
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t9, -0x75A0($1)  # Load Word
		sw	$s5, 0x40+var_1C($sp)  # Store Word
		move	$s5, $a0
		move	$a1, $s5
		lui	$a0, 0x8C18	 # Load	Upper Immediate
		addiu	$a0, 0x8A50	 # Add Immediate Unsigned
		sw	$s0, 0x40+var_30($sp)  # Store Word
		sw	$s6, 0x40+var_18($sp)  # Store Word
		move	$s6, $a2
		jalr	$t9		 # Jump	And Link Register
		move	$s0, $a0
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t7, -0x75A0($1)  # Load Word
		addu	$t8, $s5, $s3	 # Add Unsigned
		addiu	$a1, $t8, 0xFFFF  # Add	Immediate Unsigned
		move	$a0, $s0
		jalr	$t7		 # Jump	And Link Register
		move	$s1, $v0
		li	$t6, 0xFFFFFFFF	 # Load	Immediate
		beq	$s1, $t6, loc_8C001E18	# Branch on Equal
		move	$s4, $v0
		li	$t4, 0xFFFFFFFF	 # Load	Immediate
		bnel	$s4, $t4, loc_8C001E38	# Branch on Not	Equal Likely
		subu	$t2, $s4, $s1	 # Subtract Unsigned

loc_8C001E18:				 # CODE	XREF: sub_8C001D98+6Cj
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		subu	$t2, $s4, $s1	 # Subtract Unsigned
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		bnez	$t7, loc_8C001EC0  # Branch on Not Zero
		addiu	$s0, $t2, 1	 # Add Immediate Unsigned
		j	loc_8C001E48	 # Jump
		lui	$1, 0x8C18	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001E38:				 # CODE	XREF: sub_8C001D98+78j
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		bnez	$t7, loc_8C001EC0  # Branch on Not Zero
		addiu	$s0, $t2, 1	 # Add Immediate Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate

loc_8C001E48:				 # CODE	XREF: sub_8C001D98+98j
					 # sub_8C001D98+120j
		lw	$t7, -0x75A4($1)  # Load Word
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t4, -0x7588($1)  # Load Word
		sll	$t9, $s1, 2	 # Shift Left Logical
		addu	$t8, $t7, $t9	 # Add Unsigned
		lw	$t6, 0($t8)	 # Load	Word
		lui	$t5, 0xBFC0	 # Load	Upper Immediate
		addu	$s2, $t6, $t5	 # Add Unsigned
		jalr	$t4		 # Jump	And Link Register
		move	$a0, $s2
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t3, -0x759C($1)  # Load Word
		jalr	$t3		 # Jump	And Link Register
		move	$a0, $s2
		bnez	$v0, loc_8C001E88  # Branch on Not Zero
		srl	$t2, $s3, 2	 # Shift Right Logical

loc_8C001E88:				 # CODE	XREF: sub_8C001D98+E8j
		bnezl	$s0, loc_8C001E94  # Branch on Not Zero	Likely
		divu	$t2, $s0	 # Divide Unsigned
		break	 #0x1C00	 # Break

loc_8C001E94:				 # CODE	XREF: sub_8C001D98+F0j
		lw	$t8, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		li	$a0, 1		 # Load	Immediate
		addiu	$s1, 1		 # Add Immediate Unsigned
		mflo	$t9		 # Move	From LO
		addu	$a1, $t8, $t9	 # Add Unsigned
		jal	sub_8C000B8C	 # Jump	And Link
		sw	$a1, -0x7FD0($gp)  # Store Word
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		beqzl	$t7, loc_8C001E48  # Branch on Zero Likely
		lui	$1, 0x8C18	 # Load	Upper Immediate

loc_8C001EC0:				 # CODE	XREF: sub_8C001D98+90j
					 # sub_8C001D98+A4j
		move	$s0, $s3
		lui	$t6, 0xBFC0	 # Load	Upper Immediate
		addu	$s4, $s5, $t6	 # Add Unsigned
		move	$s1, $s6
		beqz	$s3, loc_8C001F1C  # Branch on Zero
		move	$s2, $s4

loc_8C001ED8:				 # CODE	XREF: sub_8C001D98+17Cj
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t5, -0x7598($1)  # Load Word
		lhu	$a1, 0($s1)	 # Load	Halfword Unsigned
		jalr	$t5		 # Jump	And Link Register
		move	$a0, $s2
		bnezl	$v0, loc_8C001EF8  # Branch on Not Zero	Likely
		lw	$t4, -0x7FD0($gp)  # Load Word
		lw	$t4, -0x7FD0($gp)  # Load Word

loc_8C001EF8:				 # CODE	XREF: sub_8C001D98+154j
		lw	$a2, -0x7FA4($gp)  # Load Word
		addiu	$a1, $t4, 1	 # Add Immediate Unsigned
		sw	$a1, -0x7FD0($gp)  # Store Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		addiu	$s1, 2		 # Add Immediate Unsigned
		addiu	$s0, 0xFFFE	 # Add Immediate Unsigned
		bnez	$s0, loc_8C001ED8  # Branch on Not Zero
		addiu	$s2, 2		 # Add Immediate Unsigned

loc_8C001F1C:				 # CODE	XREF: sub_8C001D98+138j
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t2, -0x7594($1)  # Load Word
		lui	$a0, 0xBFC0	 # Load	Upper Immediate
		move	$s0, $s3
		jalr	$t2		 # Jump	And Link Register
		move	$s1, $s4
		beqzl	$s3, loc_8C001F9C  # Branch on Zero Likely
		lw	$s6, 0x40+var_18($sp)  # Load Word
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned

loc_8C001F40:				 # CODE	XREF: sub_8C001D98+1E8j
					 # sub_8C001D98+1F8j
		lbu	$t9, 0($s1)	 # Load	Byte Unsigned
		addiu	$s6, 1		 # Add Immediate Unsigned
		beq	$t9, $t8, loc_8C001F58	# Branch on Equal
		addiu	$s1, 1		 # Add Immediate Unsigned
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0xA	 # Load	Immediate

loc_8C001F58:				 # CODE	XREF: sub_8C001D98+1B0j
		andi	$t6, $s0, 2	 # AND Immediate
		beqzl	$t6, loc_8C001F90  # Branch on Zero Likely
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		lw	$t4, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		addiu	$a1, $t4, 1	 # Add Immediate Unsigned
		sw	$a1, -0x7FD0($gp)  # Store Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		bnezl	$s0, loc_8C001F40  # Branch on Not Zero	Likely
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned
		j	loc_8C001F98	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C001F90:				 # CODE	XREF: sub_8C001D98+1C4j
		bnezl	$s0, loc_8C001F40  # Branch on Not Zero	Likely
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned

loc_8C001F98:				 # CODE	XREF: sub_8C001D98+1F0j
		lw	$s6, 0x40+var_18($sp)  # Load Word

loc_8C001F9C:				 # CODE	XREF: sub_8C001D98+19Cj
		lw	$ra, 0x40+var_4($sp)  #	Load Word
		lw	$s0, 0x40+var_30($sp)  # Load Word
		lw	$s1, 0x40+var_2C($sp)  # Load Word
		lw	$s2, 0x40+var_28($sp)  # Load Word
		lw	$s3, 0x40+var_24($sp)  # Load Word
		lw	$s4, 0x40+var_20($sp)  # Load Word
		lw	$s5, 0x40+var_1C($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x40	 # Add Immediate Unsigned
 # End of function sub_8C001D98


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C001FC0:				 # CODE	XREF: sub_8C0022B4+F8p

var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_4		= -4

		addiu	$sp, -0x40	 # Add Immediate Unsigned
		sw	$ra, 0x40+var_4($sp)  #	Store Word
		sw	$s4, 0x40+var_20($sp)  # Store Word
		sw	$s2, 0x40+var_28($sp)  # Store Word
		sw	$s1, 0x40+var_2C($sp)  # Store Word
		sw	$s3, 0x40+var_24($sp)  # Store Word
		move	$s3, $a1
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t9, -0x7570($1)  # Load Word
		sw	$s5, 0x40+var_1C($sp)  # Store Word
		move	$s5, $a0
		move	$a1, $s5
		lui	$a0, 0x8C18	 # Load	Upper Immediate
		addiu	$a0, 0x8A80	 # Add Immediate Unsigned
		sw	$s0, 0x40+var_30($sp)  # Store Word
		sw	$s6, 0x40+var_18($sp)  # Store Word
		move	$s6, $a2
		jalr	$t9		 # Jump	And Link Register
		move	$s0, $a0
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t7, -0x7570($1)  # Load Word
		addu	$t8, $s5, $s3	 # Add Unsigned
		addiu	$a1, $t8, 0xFFFF  # Add	Immediate Unsigned
		move	$a0, $s0
		jalr	$t7		 # Jump	And Link Register
		move	$s1, $v0
		li	$t6, 0xFFFFFFFF	 # Load	Immediate
		beq	$s1, $t6, loc_8C002040	# Branch on Equal
		move	$s4, $v0
		li	$t4, 0xFFFFFFFF	 # Load	Immediate
		bnel	$s4, $t4, loc_8C002060	# Branch on Not	Equal Likely
		subu	$t2, $s4, $s1	 # Subtract Unsigned

loc_8C002040:				 # CODE	XREF: sub_8C001FC0+6Cj
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		subu	$t2, $s4, $s1	 # Subtract Unsigned
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		bnez	$t7, loc_8C0020E8  # Branch on Not Zero
		addiu	$s0, $t2, 1	 # Add Immediate Unsigned
		j	loc_8C002070	 # Jump
		lui	$1, 0x8C18	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002060:				 # CODE	XREF: sub_8C001FC0+78j
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		bnez	$t7, loc_8C0020E8  # Branch on Not Zero
		addiu	$s0, $t2, 1	 # Add Immediate Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate

loc_8C002070:				 # CODE	XREF: sub_8C001FC0+98j
					 # sub_8C001FC0+120j
		lw	$t7, -0x7574($1)  # Load Word
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t4, -0x7558($1)  # Load Word
		sll	$t9, $s1, 2	 # Shift Left Logical
		addu	$t8, $t7, $t9	 # Add Unsigned
		lw	$t6, 0($t8)	 # Load	Word
		lui	$t5, 0xB300	 # Load	Upper Immediate
		addu	$s2, $t6, $t5	 # Add Unsigned
		jalr	$t4		 # Jump	And Link Register
		move	$a0, $s2
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t3, -0x756C($1)  # Load Word
		jalr	$t3		 # Jump	And Link Register
		move	$a0, $s2
		bnez	$v0, loc_8C0020B0  # Branch on Not Zero
		srl	$t2, $s3, 2	 # Shift Right Logical

loc_8C0020B0:				 # CODE	XREF: sub_8C001FC0+E8j
		bnezl	$s0, loc_8C0020BC  # Branch on Not Zero	Likely
		divu	$t2, $s0	 # Divide Unsigned
		break	 #0x1C00	 # Break

loc_8C0020BC:				 # CODE	XREF: sub_8C001FC0+F0j
		lw	$t8, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		li	$a0, 1		 # Load	Immediate
		addiu	$s1, 1		 # Add Immediate Unsigned
		mflo	$t9		 # Move	From LO
		addu	$a1, $t8, $t9	 # Add Unsigned
		jal	sub_8C000B8C	 # Jump	And Link
		sw	$a1, -0x7FD0($gp)  # Store Word
		sltu	$t7, $s4, $s1	 # Set on Less Than Unsigned
		beqzl	$t7, loc_8C002070  # Branch on Zero Likely
		lui	$1, 0x8C18	 # Load	Upper Immediate

loc_8C0020E8:				 # CODE	XREF: sub_8C001FC0+90j
					 # sub_8C001FC0+A4j
		move	$s0, $s3
		lui	$t6, 0xB300	 # Load	Upper Immediate
		addu	$s4, $s5, $t6	 # Add Unsigned
		move	$s1, $s6
		beqz	$s3, loc_8C002144  # Branch on Zero
		move	$s2, $s4

loc_8C002100:				 # CODE	XREF: sub_8C001FC0+17Cj
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t5, -0x7568($1)  # Load Word
		lhu	$a1, 0($s1)	 # Load	Halfword Unsigned
		jalr	$t5		 # Jump	And Link Register
		move	$a0, $s2
		bnezl	$v0, loc_8C002120  # Branch on Not Zero	Likely
		lw	$t4, -0x7FD0($gp)  # Load Word
		lw	$t4, -0x7FD0($gp)  # Load Word

loc_8C002120:				 # CODE	XREF: sub_8C001FC0+154j
		lw	$a2, -0x7FA4($gp)  # Load Word
		addiu	$a1, $t4, 1	 # Add Immediate Unsigned
		sw	$a1, -0x7FD0($gp)  # Store Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		addiu	$s1, 2		 # Add Immediate Unsigned
		addiu	$s0, 0xFFFE	 # Add Immediate Unsigned
		bnez	$s0, loc_8C002100  # Branch on Not Zero
		addiu	$s2, 2		 # Add Immediate Unsigned

loc_8C002144:				 # CODE	XREF: sub_8C001FC0+138j
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t2, -0x7564($1)  # Load Word
		lui	$a0, 0xB300	 # Load	Upper Immediate
		move	$s0, $s3
		jalr	$t2		 # Jump	And Link Register
		move	$s1, $s4
		beqzl	$s3, loc_8C0021C4  # Branch on Zero Likely
		lw	$s6, 0x40+var_18($sp)  # Load Word
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned

loc_8C002168:				 # CODE	XREF: sub_8C001FC0+1E8j
					 # sub_8C001FC0+1F8j
		lbu	$t9, 0($s1)	 # Load	Byte Unsigned
		addiu	$s6, 1		 # Add Immediate Unsigned
		beq	$t9, $t8, loc_8C002180	# Branch on Equal
		addiu	$s1, 1		 # Add Immediate Unsigned
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0xA	 # Load	Immediate

loc_8C002180:				 # CODE	XREF: sub_8C001FC0+1B0j
		andi	$t6, $s0, 2	 # AND Immediate
		beqzl	$t6, loc_8C0021B8  # Branch on Zero Likely
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		lw	$t4, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		addiu	$a1, $t4, 1	 # Add Immediate Unsigned
		sw	$a1, -0x7FD0($gp)  # Store Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		bnezl	$s0, loc_8C002168  # Branch on Not Zero	Likely
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned
		j	loc_8C0021C0	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0021B8:				 # CODE	XREF: sub_8C001FC0+1C4j
		bnezl	$s0, loc_8C002168  # Branch on Not Zero	Likely
		lbu	$t8, 0($s6)	 # Load	Byte Unsigned

loc_8C0021C0:				 # CODE	XREF: sub_8C001FC0+1F0j
		lw	$s6, 0x40+var_18($sp)  # Load Word

loc_8C0021C4:				 # CODE	XREF: sub_8C001FC0+19Cj
		lw	$ra, 0x40+var_4($sp)  #	Load Word
		lw	$s0, 0x40+var_30($sp)  # Load Word
		lw	$s1, 0x40+var_2C($sp)  # Load Word
		lw	$s2, 0x40+var_28($sp)  # Load Word
		lw	$s3, 0x40+var_24($sp)  # Load Word
		lw	$s4, 0x40+var_20($sp)  # Load Word
		lw	$s5, 0x40+var_1C($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x40	 # Add Immediate Unsigned
 # End of function sub_8C001FC0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0021E8:				 # CODE	XREF: sub_8C0022B4+17Cp

var_40		= -0x40
var_3C		= -0x3C
var_38		= -0x38
var_34		= -0x34
var_30		= -0x30
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_8		= -8
var_4		= -4

		addiu	$sp, -0x50	 # Add Immediate Unsigned
		sw	$ra, 0x50+var_4($sp)  #	Store Word
		sw	$s6, 0x50+var_10($sp)  # Store Word
		sw	$s5, 0x50+var_14($sp)  # Store Word
		sw	$s4, 0x50+var_18($sp)  # Store Word
		sw	$s3, 0x50+var_1C($sp)  # Store Word
		sw	$s2, 0x50+var_20($sp)  # Store Word
		sw	$s1, 0x50+var_24($sp)  # Store Word
		sw	$s0, 0x50+var_28($sp)  # Store Word
		lw	$s0, 0($a2)	 # Load	Word
		li	$a0, 1		 # Load	Immediate
		li	$a1, 1		 # Load	Immediate
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a2, 1		 # Load	Immediate
		jal	loc_8C0014E4	 # Jump	And Link
		nop
		jal	loc_8C0014F4	 # Jump	And Link
		move	$s1, $v0
		jal	loc_8C001504	 # Jump	And Link
		move	$s2, $v0
		jal	loc_8C001514	 # Jump	And Link
		move	$s3, $v0
		jal	loc_8C001524	 # Jump	And Link
		move	$s4, $v0
		jal	loc_8C001534	 # Jump	And Link
		move	$s5, $v0
		jal	loc_8C001554	 # Jump	And Link
		move	$s6, $v0
		jal	loc_8C001544	 # Jump	And Link
		sw	$v0, 0x50+var_8($sp)  #	Store Word
		sw	$s6, 0x50+var_38($sp)  # Store Word
		sw	$s5, 0x50+var_3C($sp)  # Store Word
		sw	$s4, 0x50+var_40($sp)  # Store Word
		lw	$t0, 0x50+var_8($sp)  #	Load Word
		move	$a0, $s0
		move	$a1, $s1
		move	$a2, $s2
		move	$a3, $s3
		sw	$t0, 0x50+var_34($sp)  # Store Word
		jal	sub_8C0016B4	 # Jump	And Link
		sw	$v0, 0x50+var_30($sp)  # Store Word
		lw	$s6, 0x50+var_10($sp)  # Load Word
		lw	$ra, 0x50+var_4($sp)  #	Load Word
		lw	$s0, 0x50+var_28($sp)  # Load Word
		lw	$s1, 0x50+var_24($sp)  # Load Word
		lw	$s2, 0x50+var_20($sp)  # Load Word
		lw	$s3, 0x50+var_1C($sp)  # Load Word
		lw	$s4, 0x50+var_18($sp)  # Load Word
		lw	$s5, 0x50+var_14($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x50	 # Add Immediate Unsigned
 # End of function sub_8C0021E8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0022B4:				 # CODE	XREF: sub_8C002558+78p
					 # sub_8C003E60+64p ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x8A44	 # Add Immediate Unsigned
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		lui	$s1, 0x8C02	 # Load	Upper Immediate
		addiu	$s1, 0x8A50	 # Add Immediate Unsigned
		sw	$s2, 0x20+var_8($sp)  #	Store Word
		addiu	$s2, $gp, 0x805C  # Add	Immediate Unsigned
		li	$t0, 0x65	 # Load	Immediate
		sw	$t0, -0x7FB8($gp)  # Store Word
		sw	$0, -0x7FD0($gp)  # Store Word
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lhu	$v1, -0x7FC4($gp)  # Load Halfword Unsigned
		sltiu	$t8, $v1, 5	 # Set on Less Than Immediate Unsigned
		beqz	$t8, loc_8C002458  # Branch on Zero
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2318	 # Add Immediate Unsigned
		sll	$t7, $v1, 2	 # Shift Left Logical
		addu	$t7, $t6, $t7	 # Add Unsigned
		lw	$t9, 0($t7)	 # Load	Word
		jr	$t9		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0x232C($0)	 # Load	Word
		lw	$0, 0x2360($0)	 # Load	Word
		lw	$0, 0x2458($0)	 # Load	Word
		lw	$0, 0x23A0($0)	 # Load	Word
		lw	$0, 0x2428($0)	 # Load	Word
		lw	$a1, 4($s0)	 # Load	Word
		lw	$a0, 0($s0)	 # Load	Word
		sw	$a1, 0($s2)	 # Store Word
		jal	sub_8C001D98	 # Jump	And Link
		move	$a2, $s1
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$t4, 0($s0)	 # Load	Word
		lw	$a1, 4($s0)	 # Load	Word
		lui	$t3, 1		 # Load	Upper Immediate
		addu	$a0, $t4, $t3	 # Add Unsigned
		sw	$a1, 0($s2)	 # Store Word
		sw	$a1, -0x7FA0($gp)  # Store Word
		jal	sub_8C001D98	 # Jump	And Link
		move	$a2, $s1
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$a1, 4($s0)	 # Load	Word
		lw	$a0, 0($s0)	 # Load	Word
		sw	$a1, 0($s2)	 # Store Word
		jal	sub_8C001FC0	 # Jump	And Link
		move	$a2, $s1
		lw	$t2, 0($s0)	 # Load	Word
		lui	$t9, 1		 # Load	Upper Immediate
		bnel	$t2, $t9, loc_8C0023F0	# Branch on Not	Equal Likely
		lw	$t6, 0($s0)	 # Load	Word
		lw	$t7, 4($s0)	 # Load	Word
		jal	sub_8C0017F8	 # Jump	And Link
		sw	$t7, -0x7F9C($gp)  # Store Word
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0023F0:				 # CODE	XREF: sub_8C0022B4+108j
		li	$t5, 0x6000	 # Load	Immediate
		bne	$t6, $t5, loc_8C002480	# Branch on Not	Equal
		nop
		lw	$t4, 4($s0)	 # Load	Word
		jal	sub_8C0018BC	 # Jump	And Link
		sh	$t4, -0x7F98($gp)  # Store Halfword
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$a0, 0($s0)	 # Load	Word
		lw	$a1, 4($s0)	 # Load	Word
		jal	sub_8C0021E8	 # Jump	And Link
		move	$a2, $s1
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002458:				 # CODE	XREF: sub_8C0022B4+44j
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # End of function sub_8C0022B4

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002480:				 # CODE	XREF: sub_8C0022B4+140j
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0024A0:				 # CODE	XREF: sub_8C002558+128p
					 # sub_8C002558+174p ...

var_4		= -4

		addu	$t9, $a0, $a2	 # Add Unsigned
		sltu	$t8, $a1, $t9	 # Set on Less Than Unsigned
		beqzl	$t8, loc_8C0024CC  # Branch on Zero Likely
		lui	$1, 0x8C01	 # Load	Upper Immediate
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0024CC:				 # CODE	XREF: sub_8C0024A0+8j
		lw	$t5, -0x75BC($1)  # Load Word
		lui	$t6, 0x8C02	 # Load	Upper Immediate
		addiu	$t6, 0x8A50	 # Add Immediate Unsigned
		addu	$t7, $t6, $a0	 # Add Unsigned
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		subu	$a0, $t7, $t5	 # Subtract Unsigned
		jal	sub_8C005060	 # Jump	And Link
		move	$a1, $a3
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0024A0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0024FC:				 # CODE	XREF: sub_8C002558+244p

var_4		= -4

		addu	$t9, $a0, $a2	 # Add Unsigned
		sltu	$t8, $a1, $t9	 # Set on Less Than Unsigned
		beqzl	$t8, loc_8C002528  # Branch on Zero Likely
		lui	$1, 0x8C01	 # Load	Upper Immediate
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002528:				 # CODE	XREF: sub_8C0024FC+8j
		lw	$t5, -0x75BC($1)  # Load Word
		lui	$t6, 0x8C02	 # Load	Upper Immediate
		addiu	$t6, 0x8A50	 # Add Immediate Unsigned
		addu	$t7, $t6, $a0	 # Add Unsigned
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		subu	$a0, $t7, $t5	 # Subtract Unsigned
		jal	sub_8C005060	 # Jump	And Link
		move	$a1, $a3
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0024FC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C002558:				 # CODE	XREF: sub_8C003E60+4Cp
					 # sub_8C004A0C+148p

var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_4		= -4

		addiu	$sp, -0x38	 # Add Immediate Unsigned
		sw	$s4, 0x38+var_18($sp)  # Store Word
		lui	$s4, 0x8C01	 # Load	Upper Immediate
		addiu	$s4, 0x8A44	 # Add Immediate Unsigned
		sw	$s3, 0x38+var_1C($sp)  # Store Word
		sw	$s2, 0x38+var_20($sp)  # Store Word
		sw	$s0, 0x38+var_28($sp)  # Store Word
		move	$s0, $a0
		sw	$s5, 0x38+var_14($sp)  # Store Word
		lhu	$t9, -0x7FC6($gp)  # Load Halfword Unsigned
		lhu	$t8, -0x7FC4($gp)  # Load Halfword Unsigned
		sw	$s1, 0x38+var_24($sp)  # Store Word
		sw	$s6, 0x38+var_10($sp)  # Store Word
		addiu	$s6, $gp, 0x8044  # Add	Immediate Unsigned
		addiu	$s5, $gp, 0x8058  # Add	Immediate Unsigned
		andi	$s1, $t9, 0xFF	 # AND Immediate
		bne	$t8, $s1, loc_8C0025B8	# Branch on Not	Equal
		sw	$ra, 0x38+var_4($sp)  #	Store Word
		lw	$t5, 0($s4)	 # Load	Word
		lw	$t6, 4($s4)	 # Load	Word
		lw	$t4, 0($s5)	 # Load	Word
		addu	$t6, $t5, $t6	 # Add Unsigned
		beql	$t6, $t4, loc_8C0025F0	# Branch on Equal Likely
		lhu	$t7, -0x7FC6($gp)  # Load Halfword Unsigned

loc_8C0025B8:				 # CODE	XREF: sub_8C002558+40j
		lhu	$t2, -0x7FC4($gp)  # Load Halfword Unsigned
		li	$t9, 0xFFFF	 # Load	Immediate
		beql	$t2, $t9, loc_8C0025F0	# Branch on Equal Likely
		lhu	$t7, -0x7FC6($gp)  # Load Halfword Unsigned
		lw	$s2, -0x7FD0($gp)  # Load Word
		lw	$s3, -0x7FA4($gp)  # Load Word
		jal	sub_8C0022B4	 # Jump	And Link
		nop
		li	$t0, 0x65	 # Load	Immediate
		sw	$t0, -0x7FB8($gp)  # Store Word
		sw	$s2, -0x7FD0($gp)  # Store Word
		sw	$s3, -0x7FA4($gp)  # Store Word
		sb	$0, -4($s4)	 # Store Byte
		lhu	$t7, -0x7FC6($gp)  # Load Halfword Unsigned

loc_8C0025F0:				 # CODE	XREF: sub_8C002558+58j
					 # sub_8C002558+68j
		andi	$t8, $t7, 0x8000  # AND	Immediate
		beqzl	$t8, loc_8C00260C  # Branch on Zero Likely
		lbu	$t5, -4($s4)	 # Load	Byte Unsigned
		jal	sub_8C003ACC	 # Jump	And Link
		move	$a0, $s0
		move	$s0, $v0
		lbu	$t5, -4($s4)	 # Load	Byte Unsigned

loc_8C00260C:				 # CODE	XREF: sub_8C002558+9Cj
		bnezl	$t5, loc_8C00262C  # Branch on Not Zero	Likely
		lw	$t2, 4($s4)	 # Load	Word
		lw	$t3, 0($s5)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sb	$t0, -4($s4)	 # Store Byte
		sw	$0, 4($s4)	 # Store Word
		sw	$t3, 0($s4)	 # Store Word
		lw	$t2, 4($s4)	 # Load	Word

loc_8C00262C:				 # CODE	XREF: sub_8C002558+B4j
		lw	$t9, 0($s6)	 # Load	Word
		sltiu	$t7, $s1, 5	 # Set on Less Than Immediate Unsigned
		move	$v1, $s1
		addu	$t2, $t9	 # Add Unsigned
		beqz	$t7, loc_8C0027D0  # Branch on Zero
		sw	$t2, 4($s4)	 # Store Word
		lui	$t5, 0x8C00	 # Load	Upper Immediate
		sll	$t6, $s1, 2	 # Shift Left Logical
		addiu	$t5, 0x2660	 # Add Immediate Unsigned
		addu	$t6, $t5, $t6	 # Add Unsigned
		lw	$t8, 0($t6)	 # Load	Word
		jr	$t8		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0x2674($0)	 # Load	Word
		lw	$0, 0x26B4($0)	 # Load	Word
		lw	$0, 0x27D0($0)	 # Load	Word
		lw	$0, 0x2700($0)	 # Load	Word
		lw	$0, 0x2790($0)	 # Load	Word
		move	$a3, $s0
		lw	$a2, 0($s6)	 # Load	Word
		lw	$a0, 0($s5)	 # Load	Word
		jal	sub_8C0024A0	 # Jump	And Link
		li	$a1, 0xE000	 # Load	Immediate
		lw	$s6, 0x28($sp)	 # Load	Word
		lw	$ra, 0x34($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$s3, 0x1C($sp)	 # Load	Word
		lw	$s4, 0x20($sp)	 # Load	Word
		lw	$s5, 0x24($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t4, -0x75AC($1)  # Load Word
		lw	$a0, 0($s5)	 # Load	Word
		lui	$t3, 1		 # Load	Upper Immediate
		lw	$a2, 0($s6)	 # Load	Word
		subu	$a1, $t4, $t3	 # Subtract Unsigned
		jal	sub_8C0024A0	 # Jump	And Link
		move	$a3, $s0
		lw	$s6, 0x28($sp)	 # Load	Word
		lw	$ra, 0x34($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$s3, 0x1C($sp)	 # Load	Word
		lw	$s4, 0x20($sp)	 # Load	Word
		lw	$s5, 0x24($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$t2, 0($s4)	 # Load	Word
		li	$t9, 0x6000	 # Load	Immediate
		bnel	$t2, $t9, loc_8C002750	# Branch on Not	Equal Likely
		lui	$1, 0x8C18	 # Load	Upper Immediate
		move	$a3, $s0
		lw	$a2, 0($s6)	 # Load	Word
		lw	$a0, 0($s5)	 # Load	Word
		jal	sub_8C0024A0	 # Jump	And Link
		li	$a1, 0xFFC0	 # Load	Immediate
		lw	$s6, 0x28($sp)	 # Load	Word
		lw	$ra, 0x34($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$s3, 0x1C($sp)	 # Load	Word
		lw	$s4, 0x20($sp)	 # Load	Word
		lw	$s5, 0x24($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002750:				 # CODE	XREF: sub_8C002558+1B0j
		lw	$a0, 0($s5)	 # Load	Word
		lw	$a1, -0x757C($1)  # Load Word
		lw	$a2, 0($s6)	 # Load	Word
		jal	sub_8C0024A0	 # Jump	And Link
		move	$a3, $s0
		lw	$s6, 0x28($sp)	 # Load	Word
		lw	$ra, 0x34($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$s3, 0x1C($sp)	 # Load	Word
		lw	$s4, 0x20($sp)	 # Load	Word
		lw	$s5, 0x24($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		move	$a3, $s0
		lw	$a2, 0($s6)	 # Load	Word
		lw	$a0, 0($s5)	 # Load	Word
		jal	sub_8C0024FC	 # Jump	And Link
		li	$a1, 4		 # Load	Immediate
		lw	$s6, 0x28($sp)	 # Load	Word
		lw	$ra, 0x34($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		lw	$s3, 0x1C($sp)	 # Load	Word
		lw	$s4, 0x20($sp)	 # Load	Word
		lw	$s5, 0x24($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0027D0:				 # CODE	XREF: sub_8C002558+E4j
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate
		lw	$s6, 0x38+var_10($sp)  # Load Word
		lw	$ra, 0x38+var_4($sp)  #	Load Word
		lw	$s0, 0x38+var_28($sp)  # Load Word
		sh	$s1, -0x7FC4($gp)  # Store Halfword
		lw	$s1, 0x38+var_24($sp)  # Load Word
		lw	$s2, 0x38+var_20($sp)  # Load Word
		lw	$s3, 0x38+var_1C($sp)  # Load Word
		lw	$s4, 0x38+var_18($sp)  # Load Word
		lw	$s5, 0x38+var_14($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x38	 # Add Immediate Unsigned
 # End of function sub_8C002558


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C002804:				 # CODE	XREF: sub_8C003D6C+3Cp
					 # sub_8C003D6C+60p ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s2, 0x20+var_8($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		andi	$a1, $a0, 0xFFFF  # AND	Immediate
		sw	$s0, 0x20+var_10($sp)  # Store Word
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x8A50	 # Add Immediate Unsigned
		addiu	$a0, $s0, 2	 # Add Immediate Unsigned
		move	$s1, $a0
		jal	sub_8C005004	 # Jump	And Link
		addiu	$a1, 0xFFFE	 # Add Immediate Unsigned
		lhu	$t9, 0($s0)	 # Load	Halfword Unsigned
		beq	$v0, $t9, loc_8C002848	# Branch on Equal
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate

loc_8C002848:				 # CODE	XREF: sub_8C002804+34j
		jal	sub_8C00510C	 # Jump	And Link
		move	$a0, $s1
		sh	$v0, -0x7FC8($gp)  # Store Halfword
		jal	sub_8C00510C	 # Jump	And Link
		addiu	$a0, $s0, 4	 # Add Immediate Unsigned
		sh	$v0, -0x7FC2($gp)  # Store Halfword
		jal	sub_8C0050DC	 # Jump	And Link
		addiu	$a0, $s0, 6	 # Add Immediate Unsigned
		move	$s1, $v0
		jal	sub_8C0050DC	 # Jump	And Link
		addiu	$a0, $s0, 0xA	 # Add Immediate Unsigned
		move	$s2, $v0
		jal	sub_8C0050DC	 # Jump	And Link
		addiu	$a0, $s0, 0xE	 # Add Immediate Unsigned
		addiu	$t9, $v0, 0x14	 # Add Immediate Unsigned
		li	$t8, 0xFFFFFFFF	 # Load	Immediate
		bne	$s1, $t8, loc_8C0028CC	# Branch on Not	Equal
		sw	$t9, -0x7FA4($gp)  # Store Word
		lui	$1, 0x8000	 # Load	Upper Immediate
		lhu	$t6, 0xFE6($1)	 # Load	Halfword Unsigned
		lui	$1, 0x8000	 # Load	Upper Immediate
		ori	$t6, 1		 # OR Immediate
		sh	$t6, 0xFE6($1)	 # Store Halfword
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		li	$t0, 1		 # Load	Immediate
		li	$v1, 0		 # Load	Immediate
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 0x8000($gp)  # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0028CC:				 # CODE	XREF: sub_8C002804+84j
		lhu	$t5, -0x7FC8($gp)  # Load Halfword Unsigned
		li	$t4, 3		 # Load	Immediate
		beql	$t5, $t4, loc_8C0028E8	# Branch on Equal Likely
		lui	$1, 0x8000	 # Load	Upper Immediate
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0xB	 # Load	Immediate
		lui	$1, 0x8000	 # Load	Upper Immediate

loc_8C0028E8:				 # CODE	XREF: sub_8C002804+D0j
		lw	$v1, 0xFE0($1)	 # Load	Word
		sltu	$t3, $v1, $s1	 # Set on Less Than Unsigned
		bnez	$t3, loc_8C002904  # Branch on Not Zero
		nop
		sltu	$t2, $s2, $v1	 # Set on Less Than Unsigned
		beqzl	$t2, loc_8C00292C  # Branch on Zero Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word

loc_8C002904:				 # CODE	XREF: sub_8C002804+ECj
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 4		 # Load	Immediate
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00292C:				 # CODE	XREF: sub_8C002804+F8j
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # End of function sub_8C002804


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C002948:				 # CODE	XREF: sub_8C003DE8+44p
					 # sub_8C004854+88p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		andi	$s1, $a0, 0xFFFF  # AND	Immediate
		sw	$s0, 0x20+var_10($sp)  # Store Word
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x8A50	 # Add Immediate Unsigned
		addiu	$a0, $s0, 2	 # Add Immediate Unsigned
		jal	sub_8C005004	 # Jump	And Link
		addiu	$a1, $s1, 0xFFFE  # Add	Immediate Unsigned
		lhu	$t9, 0($s0)	 # Load	Halfword Unsigned
		beql	$v0, $t9, loc_8C002988	# Branch on Equal Likely
		addiu	$t9, $s1, 0xFFF6  # Add	Immediate Unsigned
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		addiu	$t9, $s1, 0xFFF6  # Add	Immediate Unsigned

loc_8C002988:				 # CODE	XREF: sub_8C002948+2Cj
		sw	$t9, -0x7FC0($gp)  # Store Word
		lhu	$t8, 2($s0)	 # Load	Halfword Unsigned
		sh	$t8, -0x7FC6($gp)  # Store Halfword
		lhu	$t7, 4($s0)	 # Load	Halfword Unsigned
		sw	$t7, -0x7FBC($gp)  # Store Word
		jal	sub_8C0050DC	 # Jump	And Link
		addiu	$a0, $s0, 6	 # Add Immediate Unsigned
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		sw	$v0, -0x7FA8($gp)  # Store Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $v0
 # End of function sub_8C002948


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0029C0:				 # CODE	XREF: seg000:8C00006Cp

var_38		= -0x38
var_34		= -0x34
var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_11		= -0x11
var_10		= -0x10
var_F		= -0xF
var_E		= -0xE
var_D		= -0xD
var_4		= -4

		addiu	$sp, -0x48	 # Add Immediate Unsigned
Register ra ,s4	,s3 ,s0	auf den	Stack
		sw	$ra, 0x48+var_4($sp)  #	Store Word
		sw	$s4, 0x48+var_28($sp)  # Store Word
		sw	$s3, 0x48+var_2C($sp)  # Store Word
		sw	$s0, 0x48+var_38($sp)  # Store Word
s0 = 0x8C018218
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x8218	 # Add Immediate Unsigned
S5 auf den Stack
		sw	$s5, 0x48+var_24($sp)  # Store Word
s5 = gp+0x8078
		addiu	$s5, $gp, 0x8078  # Add	Immediate Unsigned
s1 auf den Stack
		sw	$s1, 0x48+var_34($sp)  # Store Word
s1 = 0
		li	$s1, 0		 # Load	Immediate
s2 auf den Stack
		sw	$s2, 0x48+var_30($sp)  # Store Word
s2 = 0
		li	$s2, 0		 # Load	Immediate
gp-0x7FD0 = 0
gp-0x7FC8 = 0 (nur die unteren 16 Bit)
gp-0x7FC4 = 0xFFFF (nur	die unteren 16 Bit)
		sw	$0, -0x7FD0($gp)  # Store Word
		sh	$0, -0x7FC8($gp)  # Store Halfword
		li	$t0, 0xFFFF	 # Load	Immediate
		sh	$t0, -0x7FC4($gp)  # Store Halfword
a0 = 0x8C018A40	
a1 = 0
a2 = 0x0C
Jump sub_8C0050B4
		lui	$a0, 0x8C01	 # Load	Upper Immediate
		addiu	$a0, 0x8A40	 # Add Immediate Unsigned
		li	$a1, 0		 # Load	Immediate
		jal	sub_8C0050B4	 # Jump	And Link
		li	$a2, 0xC	 # Load	Immediate
Jump sub_8C0009C4
		jal	sub_8C0009C4	 # Jump	And Link
		nop
Jump sub_8C00621c
		jal	sub_8C00621C	 # Jump	And Link
		nop
a0 = 0x8A
a1 = 0xC8
Jump sub_8C007240
		li	$a0, 0x8A	 # Load	Immediate
		jal	sub_8C007240	 # Jump	And Link
		li	$a1, 0xC8	 # Load	Immediate
Jump sub_8C001334
		jal	sub_8C001334	 # Jump	And Link
		nop
Jump sub_8C0009A0
		jal	sub_8C0009A0	 # Jump	And Link
s5 = 5
Jump sub_8C000A0C
		li	$a0, 5		 # Load	Immediate
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s5
0x80000000+0x0FE4 = 0x1208 (16 Bit)
		lui	$1, 0x8000	 # Load	Upper Immediate
		li	$t0, 0x1208	 # Load	Immediate
		sh	$t0, 0xFE4($1)	 # Store Halfword
0x80000000+0x0FE6 = 0 (16 Bit)
		lui	$1, 0x8000	 # Load	Upper Immediate
		sh	$0, 0xFE6($1)	 # Store Halfword
s3 = Stackposition(20)
		addiu	$a0, $sp, 0x48+var_20  # Add Immediate Unsigned
		move	$s3, $a0
a1 = 0x8C002E70	= Text 'Loader Ver H'
a2 = 0xF
Jump sub_8c000B54
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		addiu	$a1, 0x2E70	 # Add Immediate Unsigned
		jal	sub_8C000B54	 # Kopiert einen String
					 # a0 =	Zeiger auf das Ziel
					 # a1 =	Zeiger auf den Text
					 # a2 =	L„nge
					 # am Ende wird	noch eine 0 angeh„ngt
a2 = 0xF
ASCII '2.08<0>'	auf den	Stack
Jump 0x8C007900
		li	$a2, 0xF	 # Load	Immediate
		li	$t0, "2"         # Load Immediate
		sb	$t0, 0x48+var_11($sp)  # Store Byte
		li	$t0, "."         # Load Immediate
		sb	$t0, 0x48+var_10($sp)  # Store Byte
		li	$t0, "0"         # Load Immediate
		sb	$t0, 0x48+var_F($sp)  #	Store Byte
		li	$t0, "8"         # Load Immediate
		sb	$t0, 0x48+var_E($sp)  #	Store Byte
		sb	$0, 0x48+var_D($sp)  # Store Byte
		move	$a0, $s3
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x2E64	 # Add Immediate Unsigned
a0 = GP+0x8074
t0 = 0x76
v1 =0x8C002EA8

(GP+0x8074) = 0x76
t8 = (0x8C002EA8+2) (byte)
s4 = (GP+0x8074)

(GP+0x8074+1) =	t8 or 0x80
s3 = (GP+0x8074)
(GP+0x8074+2) =	(0x8C002EA8+1) byte 
(GP+0x8074+3) =	(0x8C002EA8+8) byte

jump Sub_8c000A0C
		addiu	$a0, $gp, 0x8074  # Add	Immediate Unsigned
		li	$t0, 0x76	 # Load	Immediate
		lui	$v1, 0x8C00	 # Load	Upper Immediate
		addiu	$v1, 0x2EA8	 # Add Immediate Unsigned
		sb	$t0, 0($a0)	 # Store Byte
		lbu	$t8, 2($v1)	 # Load	Byte Unsigned
		move	$s4, $a0
		ori	$t9, $t8, 0x80	 # OR Immediate
		sb	$t9, 1($a0)	 # Store Byte
		lbu	$t7, 0($v1)	 # Load	Byte Unsigned
		move	$s3, $a0
		sb	$t7, 2($a0)	 # Store Byte
		lbu	$t6, 8($v1)	 # Load	Byte Unsigned
		jal	sub_8C000A0C	 # Jump	And Link
		sb	$t6, 3($a0)	 # Store Byte
a0 = 0x320
Jump sub_8C0009A0
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 0x320	 # Load	Immediate
a0 = 0xE000
Jump sub_8C0013A0
		jal	loc_8C0013A0	 # Jump	And Link
		li	$a0, 0xE000	 # Load	Immediate
a0 = 0xE000
Jump sub_8C0013D8
		jal	loc_8C0013D8	 # Jump	And Link
		li	$a0, 0xE000	 # Load	Immediate
Jump sub_8C001CBC
		jal	sub_8C001CBC	 # Jump	And Link
		nop
Abh„ngig vom vo	Sprung nach loc_0x8C002B64
		sltiu	$t9, $v0, 4	 # Set on Less Than Immediate Unsigned
		beqz	$t9, loc_8C002B64  # Branch on Zero
		nop
Jump 0x8C002B30+(v0 shl	2) Sprung in die Tabelle unten
		lui	$t9, 0x8C00	 # Load	Upper Immediate
		addiu	$t9, 0x2B30	 # Add Immediate Unsigned
		sll	$v1, $v0, 2	 # Shift Left Logical
		addu	$v1, $t9, $v1	 # Add Unsigned
		lw	$v1, 0($v1)	 # Load	Word
		jr	$v1		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Je nach	dem Sprung (siehe 0x8C002B14) werden die entsprechenden
Adressen gelesen (?)
Jump zu	sub_8C00160C
		lw	$0, 0x2B64($0)	 # Load	Word
		lw	$0, 0x2B40($0)	 # Load	Word
		lw	$0, 0x2B50($0)	 # Load	Word
		lw	$0, 0x2B60($0)	 # Load	Word
		jal	sub_8C00160C	 # Jump	And Link
		nop
Jump loc_8C002B64
		j	loc_8C002B64	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	sub_8C001564	 # Jump	And Link
		nop
		j	loc_8C002B64	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$s2, 1		 # Load	Immediate
Jump sub_8c0014D4

loc_8C002B64:				 # CODE	XREF: sub_8C0029C0+14Cj
					 # sub_8C0029C0+188j ...
		jal	loc_8C0014D4	 # Jump	And Link
		nop
0x8000FE0 = v0
Jump sub_8C0014E4
		lui	$1, 0x8000	 # Load	Upper Immediate
		jal	loc_8C0014E4	 # Jump	And Link
		sw	$v0, 0xFE0($1)	 # Store Word
0x8000FEC = v0
Jump sub_8C001504
		lui	$1, 0x8000	 # Load	Upper Immediate
		jal	loc_8C001504	 # Jump	And Link
		sw	$v0, 0xFEC($1)	 # Store Word
0x8000FF0 = v0
Jump sub_8C0014F4
		lui	$1, 0x8000	 # Load	Upper Immediate
		jal	loc_8C0014F4	 # Jump	And Link
		sw	$v0, 0xFF0($1)	 # Store Word
(gp-0x7F94) = v0
Jump sub_8C001514
		jal	loc_8C001514	 # Jump	And Link
		sw	$v0, -0x7F94($gp)  # Store Word
(gp-0x7F90) = v0
Jump sub_8C001544
		jal	loc_8C001544	 # Jump	And Link
		sw	$v0, -0x7F90($gp)  # Store Word
v0<>1 dann Sprung zu loc 8C002BB0
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C002BB0	# Branch on Not	Equal
		nop
		li	$s1, 1		 # Load	Immediate
Jump sub_8C003CD0

loc_8C002BB0:				 # CODE	XREF: sub_8C0029C0+1E4j
		jal	sub_8C003CD0	 # Jump	And Link
		nop
v0=0 dann Jump loc_8C002C60
		beqz	$v0, loc_8C002C60  # Branch on Zero
		nop
Jump sub_8C003E60
		jal	sub_8C003E60	 # Jump	And Link
		nop
a0 = 0
Jump sub_8C001950
		jal	sub_8C001950	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$t5, 0x8000($gp)  # Load Word
		li	$t4, 1		 # Load	Immediate
		beq	$t5, $t4, loc_8C002DA4	# Branch on Equal
		lui	$1, 0x8000	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		sb	$t0, 0xFF7($1)	 # Store Byte
Adresse	des Textes "END"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x2E6C	 # Add Immediate Unsigned
Adresse	des Textes "Press standby key."<0>
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x2E80	 # Add Immediate Unsigned
		sb	$0, 0($s4)	 # Store Byte
		li	$t0, 0x79	 # Load	Immediate
		sb	$t0, 1($s3)	 # Store Byte
		li	$t0, 0x54	 # Load	Immediate
		sb	$t0, 2($s3)	 # Store Byte
		li	$t0, 0x5E	 # Load	Immediate
		sb	$t0, 3($s3)	 # Store Byte
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s3

loc_8C002C20:				 # CODE	XREF: sub_8C0029C0+26Cj
					 # sub_8C0029C0+290j
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C002C20	# Branch on Not	Equal
		nop

loc_8C002C34:				 # CODE	XREF: sub_8C0029C0+298j
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s5
		jal	sub_8C000B2C	 # Jump	And Link
		nop
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C002C20	# Branch on Not	Equal
		nop
		j	loc_8C002C34	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002C60:				 # CODE	XREF: sub_8C0029C0+1F8j
		jal	loc_8C0044FC	 # Jump	And Link
		nop
		beqz	$v0, loc_8C002D44  # Branch on Zero
		move	$v1, $v0
		li	$t2, 1		 # Load	Immediate
		bnel	$v1, $t2, loc_8C002CA4	# Branch on Not	Equal Likely
		li	$t9, 2		 # Load	Immediate
		jal	sub_8C004A0C	 # Jump	And Link
		nop
		jal	sub_8C001950	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$t8, 0x8000($gp)  # Load Word
		li	$t7, 1		 # Load	Immediate
		bnel	$t8, $t7, loc_8C002CC4	# Branch on Not	Equal Likely
		lui	$1, 0x8000	 # Load	Upper Immediate
		j	loc_8C002DA4	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002CA4:				 # CODE	XREF: sub_8C0029C0+2B4j
		bnel	$v1, $t9, loc_8C002CB8	# Branch on Not	Equal Likely
		lw	$t8, 0x8000($gp)  # Load Word
		jal	sub_8C004F3C	 # Jump	And Link
		nop
		lw	$t8, 0x8000($gp)  # Load Word

loc_8C002CB8:				 # CODE	XREF: sub_8C0029C0+2E4j
		li	$t7, 1		 # Load	Immediate
		beq	$t8, $t7, loc_8C002DA4	# Branch on Equal
		lui	$1, 0x8000	 # Load	Upper Immediate

loc_8C002CC4:				 # CODE	XREF: sub_8C0029C0+2D4j
		li	$t0, 1		 # Load	Immediate
		sb	$t0, 0xFF7($1)	 # Store Byte
Adresse	des Textes "END"<0>
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		addiu	$a0, 0x2E68	 # Add Immediate Unsigned
Adresse	des Textes "Press standby key."<0>
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C007900	 # Funktion zum	Ausgeben von Text auf dem Bildschirm
					 # a0 =	Zeiger auf den Text
					 # a1 =
		addiu	$a1, 0x2E94	 # Add Immediate Unsigned
		sb	$0, 0($s4)	 # Store Byte
		li	$t0, 0x79	 # Load	Immediate
		sb	$t0, 1($s3)	 # Store Byte
		li	$t0, 0x54	 # Load	Immediate
		sb	$t0, 2($s3)	 # Store Byte
		li	$t0, 0x5E	 # Load	Immediate
		sb	$t0, 3($s3)	 # Store Byte
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s3

loc_8C002D04:				 # CODE	XREF: sub_8C0029C0+350j
					 # sub_8C0029C0+374j
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C002D04	# Branch on Not	Equal
		nop

loc_8C002D18:				 # CODE	XREF: sub_8C0029C0+37Cj
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s5
		jal	sub_8C000B2C	 # Jump	And Link
		nop
		jal	sub_8C000A50	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		li	$t9, 1		 # Load	Immediate
		bne	$v0, $t9, loc_8C002D04	# Branch on Not	Equal
		nop
		j	loc_8C002D18	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002D44:				 # CODE	XREF: sub_8C0029C0+2A8j
		beqz	$s2, loc_8C002D70  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 0x11	 # Load	Immediate
		jal	sub_8C000A28	 # Jump	And Link
		nop
		li	$t9, 8		 # Load	Immediate
		bnel	$v0, $t9, loc_8C002DB8	# Branch on Not	Equal Likely
		lui	$1, 0x8000	 # Load	Upper Immediate
		j	loc_8C002DC4	 # Jump
		lui	$1, 0x8000	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002D70:				 # CODE	XREF: sub_8C0029C0+384j
		beqz	$s1, loc_8C002DA4  # Branch on Zero
		nop
		jal	sub_8C001C24	 # Jump	And Link
		nop
		beqz	$v0, loc_8C002DA4  # Branch on Zero
		nop
		jal	sub_8C0066E0	 # Jump	And Link
		nop
		sw	$0, -0x7FD0($gp)  # Store Word
		li	$t0, 0x65	 # Load	Immediate
		lui	$v1, 0x8C1A	 # Load	Upper Immediate
		jalr	$v1		 # Jump	And Link Register
		sw	$t0, -0x7FB8($gp)  # Store Word

loc_8C002DA4:				 # CODE	XREF: sub_8C0029C0+218j
					 # sub_8C0029C0+2DCj ...
		jal	sub_8C000A28	 # Jump	And Link
		nop
		li	$t9, 8		 # Load	Immediate
		beq	$v0, $t9, loc_8C002DC4	# Branch on Equal
		lui	$1, 0x8000	 # Load	Upper Immediate

loc_8C002DB8:				 # CODE	XREF: sub_8C0029C0+3A0j
		lbu	$t4, 0xFF7($1)	 # Load	Byte Unsigned
		bnez	$t4, loc_8C002E28  # Branch on Not Zero
		lui	$1, 0x8000	 # Load	Upper Immediate

loc_8C002DC4:				 # CODE	XREF: sub_8C0029C0+3A8j
					 # sub_8C0029C0+3F0j
		jal	sub_8C001B50	 # Jump	And Link
		sb	$0, 0xFF7($1)	 # Store Byte
		sb	$0, 0($s4)	 # Store Byte
		sb	$0, 1($s3)	 # Store Byte
		li	$t0, 0x50	 # Load	Immediate
		sb	$t0, 2($s3)	 # Store Byte
		li	$t0, 0x77	 # Load	Immediate
		sb	$t0, 3($s3)	 # Store Byte
		jal	sub_8C000A0C	 # Jump	And Link
		move	$a0, $s3
		jal	sub_8C001410	 # Jump	And Link
		nop
		lui	$1, 0x8000	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		jal	sub_8C0072B4	 # Jump	And Link
		sb	$t0, 0xFF7($1)	 # Store Byte
		lw	$s5, 0x48+var_24($sp)  # Load Word
		lw	$ra, 0x48+var_4($sp)  #	Load Word
		lw	$s0, 0x48+var_38($sp)  # Load Word
		lw	$s1, 0x48+var_34($sp)  # Load Word
		lw	$s2, 0x48+var_30($sp)  # Load Word
		lw	$s3, 0x48+var_2C($sp)  # Load Word
		lw	$s4, 0x48+var_28($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x48	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C002E28:				 # CODE	XREF: sub_8C0029C0+3FCj
		jal	sub_8C001410	 # Jump	And Link
		nop
		lui	$1, 0x8000	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		jal	sub_8C0072B4	 # Jump	And Link
		sb	$t0, 0xFF7($1)	 # Store Byte
		lw	$s5, 0x48+var_24($sp)  # Load Word
		lw	$ra, 0x48+var_4($sp)  #	Load Word
		lw	$s0, 0x48+var_38($sp)  # Load Word
		lw	$s1, 0x48+var_34($sp)  # Load Word
		lw	$s2, 0x48+var_30($sp)  # Load Word
		lw	$s3, 0x48+var_2C($sp)  # Load Word
		lw	$s4, 0x48+var_28($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x48	 # Add Immediate Unsigned
 # End of function sub_8C0029C0

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
aEnd:		.ascii "END"<0>
aEnd_0:		.ascii "END"<0>
aLoaderVerH:	.ascii "   Loader Ver H"<0>
aPressStandbyKe:.ascii "Press standby key."<0>
		.byte	 0  #  
aPressStandby_0:.ascii "Press standby key."<0>
		.byte	 0  #  
		.byte 0x3F  # ?
		.byte	 6  #  
		.byte 0x5B  # [
		.byte 0x4F  # O
		.byte 0x66  # f
		.byte 0x6D  # m
		.byte 0x7D  # }
		.byte 0x27  # '
		.byte 0x7F  # 
		.byte 0x6F  # o
		.byte 0x77  # w
		.byte 0x7C  # |
		.byte 0x39  # 9
		.byte 0x5E  # ^
		.byte 0x79  # y
		.byte 0x71  # q
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C002EC0:				 # CODE	XREF: sub_8C0033A8+208p
					 # sub_8C003600+270p

var_30		= -0x30
var_2C		= -0x2C
var_28		= -0x28
var_24		= -0x24
var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_10		= -0x10
var_A		= -0xA

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$s6, 0x30+var_18($sp)  # Store Word
		sw	$s5, 0x30+var_1C($sp)  # Store Word
		sw	$s4, 0x30+var_20($sp)  # Store Word
		sw	$s3, 0x30+var_24($sp)  # Store Word
		sw	$s2, 0x30+var_28($sp)  # Store Word
		sw	$s1, 0x30+var_2C($sp)  # Store Word
		sw	$s0, 0x30+var_30($sp)  # Store Word
		sh	$a0, 0x30+var_A($sp)  #	Store Halfword
		move	$s6, $a1
		sw	$a3, 0x30+var_10($sp)  # Store Word
		andi	$s0, $a2, 0xFFFF  # AND	Immediate
		lui	$t3, 0x8C18	 # Load	Upper Immediate
		addiu	$t3, 0xDF10	 # Add Immediate Unsigned
		addiu	$a2, $t3, 2	 # Add Immediate Unsigned
		li	$v1, 1		 # Load	Immediate

loc_8C002F00:				 # CODE	XREF: sub_8C002EC0+50j
		addiu	$a2, 2		 # Add Immediate Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		slti	$t8, $v1, 0x11	 # Set on Less Than Immediate
		bnez	$t8, loc_8C002F00  # Branch on Not Zero
		sh	$0, -2($a2)	 # Store Halfword
		lhu	$t0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		move	$s1, $s6
		li	$v1, 0		 # Load	Immediate
		slt	$t4, $v1, $t0	 # Set on Less Than
		beqz	$t4, loc_8C002F60  # Branch on Zero
		move	$a2, $t3

loc_8C002F30:				 # CODE	XREF: sub_8C002EC0+98j
		lbu	$t7, 0($s1)	 # Load	Byte Unsigned
		lhu	$t0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		sll	$t7, 1		 # Shift Left Logical
		addu	$t6, $a2, $t7	 # Add Unsigned
		lhu	$t5, 0($t6)	 # Load	Halfword Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		slt	$t4, $v1, $t0	 # Set on Less Than
		addiu	$t5, 1		 # Add Immediate Unsigned
		sh	$t5, 0($t6)	 # Store Halfword
		bnez	$t4, loc_8C002F30  # Branch on Not Zero
		addiu	$s1, 1		 # Add Immediate Unsigned

loc_8C002F60:				 # CODE	XREF: sub_8C002EC0+68j
		lui	$1, 0x8C18	 # Load	Upper Immediate
		addiu	$1, 0xDEE8	 # Add Immediate Unsigned
		addiu	$a2, $1, 2	 # Add Immediate Unsigned
		addiu	$a1, $t3, 2	 # Add Immediate Unsigned
		sh	$0, 2($1)	 # Store Halfword
		li	$v1, 1		 # Load	Immediate
		li	$a3, 0xF	 # Load	Immediate

loc_8C002F7C:				 # CODE	XREF: sub_8C002EC0+E8j
		lhu	$t2, 0($a1)	 # Load	Halfword Unsigned
		lhu	$t8, 0($a2)	 # Load	Halfword Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		slti	$t7, $v1, 0x11	 # Set on Less Than Immediate
		addiu	$a2, 2		 # Add Immediate Unsigned
		sllv	$t3, $t2, $a3	 # Shift Left Logical Variable
		addu	$t9, $t8, $t3	 # Add Unsigned
		sh	$t9, 0($a2)	 # Store Halfword
		addiu	$a3, 0xFFFF	 # Add Immediate Unsigned
		andi	$a3, 0xFFFF	 # AND Immediate
		bnez	$t7, loc_8C002F7C  # Branch on Not Zero
		addiu	$a1, 2		 # Add Immediate Unsigned
		lui	$v1, 0x8C18	 # Load	Upper Immediate
		addiu	$v1, 0xDEE8	 # Add Immediate Unsigned
		lhu	$t6, 0x22($v1)	 # Load	Halfword Unsigned
		bnez	$t6, loc_8C002FC4  # Branch on Not Zero
		addiu	$a3, $s0, 0xFFFF  # Add	Immediate Unsigned

loc_8C002FC4:				 # CODE	XREF: sub_8C002EC0+FCj
		andi	$a3, 0xFFFF	 # AND Immediate
		li	$t4, 0x10	 # Load	Immediate
		subu	$s5, $t4, $s0	 # Subtract Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate
		addiu	$1, 0xDF38	 # Add Immediate Unsigned
		addiu	$a1, $1, 2	 # Add Immediate Unsigned
		addiu	$a2, $v1, 2	 # Add Immediate Unsigned
		li	$v1, 1		 # Load	Immediate
		slt	$t7, $s0, $v1	 # Set on Less Than
		bnez	$t7, loc_8C003028  # Branch on Not Zero
		andi	$s5, 0xFFFF	 # AND Immediate

loc_8C002FF0:				 # CODE	XREF: sub_8C002EC0+160j
		addiu	$a1, 2		 # Add Immediate Unsigned
		lhu	$t3, 0($a2)	 # Load	Halfword Unsigned
		li	$t8, 1		 # Load	Immediate
		sllv	$t9, $t8, $a3	 # Shift Left Logical Variable
		addiu	$a3, 0xFFFF	 # Add Immediate Unsigned
		andi	$a3, 0xFFFF	 # AND Immediate
		addiu	$v1, 1		 # Add Immediate Unsigned
		srlv	$t3, $s5	 # Shift Right Logical Variable
		sh	$t3, 0($a2)	 # Store Halfword
		sh	$t9, -2($a1)	 # Store Halfword
		andi	$v1, 0xFFFF	 # AND Immediate
		slt	$t7, $s0, $v1	 # Set on Less Than
		beqz	$t7, loc_8C002FF0  # Branch on Zero
		addiu	$a2, 2		 # Add Immediate Unsigned

loc_8C003028:				 # CODE	XREF: sub_8C002EC0+128j
		sll	$t5, $v1, 1	 # Shift Left Logical
		lui	$1, 0x8C18	 # Load	Upper Immediate
		addiu	$1, 0xDF38	 # Add Immediate Unsigned
		addu	$a2, $1, $t5	 # Add Unsigned
		li	$t6, 0x10	 # Load	Immediate
		subu	$a3, $t6, $v1	 # Subtract Unsigned
		slti	$t9, $v1, 0x11	 # Set on Less Than Immediate
		beqz	$t9, loc_8C003074  # Branch on Zero
		andi	$a3, 0xFFFF	 # AND Immediate

loc_8C00304C:				 # CODE	XREF: sub_8C002EC0+1ACj
		li	$t2, 1		 # Load	Immediate
		sllv	$t3, $t2, $a3	 # Shift Left Logical Variable
		addiu	$a3, 0xFFFF	 # Add Immediate Unsigned
		andi	$a3, 0xFFFF	 # AND Immediate
		addiu	$a2, 2		 # Add Immediate Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		slti	$t9, $v1, 0x11	 # Set on Less Than Immediate
		bnez	$t9, loc_8C00304C  # Branch on Not Zero
		sh	$t3, -2($a2)	 # Store Halfword

loc_8C003074:				 # CODE	XREF: sub_8C002EC0+184j
		lui	$1, 0x8C18	 # Load	Upper Immediate
		sll	$t7, $s0, 1	 # Shift Left Logical
		addiu	$1, 0xDEE8	 # Add Immediate Unsigned
		addu	$t6, $1, $t7	 # Add Unsigned
		lhu	$t5, 2($t6)	 # Load	Halfword Unsigned
		srlv	$v1, $t5, $s5	 # Shift Right Logical Variable
		andi	$v1, 0xFFFF	 # AND Immediate
		beqzl	$v1, loc_8C0030D0  # Branch on Zero Likely
		move	$s1, $s6
		li	$t3, 1		 # Load	Immediate
		sllv	$a3, $t3, $s0	 # Shift Left Logical Variable
		andi	$a3, 0xFFFF	 # AND Immediate
		beql	$v1, $a3, loc_8C0030D0	# Branch on Equal Likely
		move	$s1, $s6

loc_8C0030AC:				 # CODE	XREF: sub_8C002EC0+204j
		lw	$1, 0x30+var_10($sp)  #	Load Word
		move	$t9, $v1
		sll	$t2, $t9, 1	 # Shift Left Logical
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		addu	$t9, $1, $t2	 # Add Unsigned
		bne	$v1, $a3, loc_8C0030AC	# Branch on Not	Equal
		sh	$0, 0($t9)	 # Store Halfword
		move	$s1, $s6

loc_8C0030D0:				 # CODE	XREF: sub_8C002EC0+1D0j
					 # sub_8C002EC0+1E4j
		li	$t6, 0xF	 # Load	Immediate
		subu	$t7, $t6, $s0	 # Subtract Unsigned
		li	$t5, 1		 # Load	Immediate
		sllv	$s2, $t5, $t7	 # Shift Left Logical Variable
		lhu	$a0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		li	$s4, 0		 # Load	Immediate
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0xACF8	 # Add Immediate Unsigned
		lui	$a1, 0x8C18	 # Load	Upper Immediate
		addiu	$a1, 0xB4F0	 # Add Immediate Unsigned
		slt	$t8, $s4, $a0	 # Set on Less Than
		beqz	$t8, loc_8C003274  # Branch on Zero
		andi	$s2, 0xFFFF	 # AND Immediate
		lbu	$v1, 0($s1)	 # Load	Byte Unsigned

loc_8C003108:				 # CODE	XREF: sub_8C002EC0+35Cj
					 # sub_8C002EC0+38Cj ...
		beqz	$v1, loc_8C00325C  # Branch on Zero
		addiu	$s1, 1		 # Add Immediate Unsigned
		sll	$s6, $v1, 1	 # Shift Left Logical
		lui	$1, 0x8C18	 # Load	Upper Immediate
		addiu	$1, 0xDEE8	 # Add Immediate Unsigned
		addu	$t2, $1, $s6	 # Add Unsigned
		lui	$1, 0x8C18	 # Load	Upper Immediate
		addiu	$1, 0xDF38	 # Add Immediate Unsigned
		addu	$t9, $1, $s6	 # Add Unsigned
		lhu	$t8, 0($t9)	 # Load	Halfword Unsigned
		lhu	$a3, 0($t2)	 # Load	Halfword Unsigned
		slt	$t7, $s0, $v1	 # Set on Less Than
		addu	$t8, $a3, $t8	 # Add Unsigned
		bnez	$t7, loc_8C003178  # Branch on Not Zero
		andi	$t8, 0xFFFF	 # AND Immediate
		lw	$1, 0x30+var_10($sp)  #	Load Word
		slt	$t4, $a3, $t8	 # Set on Less Than
		sll	$t6, $a3, 1	 # Shift Left Logical
		beqz	$t4, loc_8C00322C  # Branch on Zero
		addu	$a2, $1, $t6	 # Add Unsigned

loc_8C003158:				 # CODE	XREF: sub_8C002EC0+2A8j
		addiu	$a2, 2		 # Add Immediate Unsigned
		addiu	$a3, 1		 # Add Immediate Unsigned
		andi	$a3, 0xFFFF	 # AND Immediate
		slt	$t4, $a3, $t8	 # Set on Less Than
		bnez	$t4, loc_8C003158  # Branch on Not Zero
		sh	$s4, -2($a2)	 # Store Halfword
		j	loc_8C003230	 # Jump
		lui	$1, 0x8C18	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003178:				 # CODE	XREF: sub_8C002EC0+27Cj
		lw	$1, 0x30+var_10($sp)  #	Load Word
		subu	$v1, $s0	 # Subtract Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		srlv	$t3, $a3, $s5	 # Shift Right Logical Variable
		sll	$t2, $t3, 1	 # Shift Left Logical
		beqz	$v1, loc_8C0031F8  # Branch on Zero
		addu	$a2, $1, $t2	 # Add Unsigned

loc_8C003194:				 # CODE	XREF: sub_8C002EC0+330j
		lhu	$t9, 0($a2)	 # Load	Halfword Unsigned
		bnezl	$t9, loc_8C0031C8  # Branch on Not Zero	Likely
		and	$t5, $a3, $s2	 # AND
		sll	$t9, $a0, 1	 # Shift Left Logical
		addu	$t7, $s3, $t9	 # Add Unsigned
		addu	$t6, $a1, $t9	 # Add Unsigned
		move	$t9, $a0
		addiu	$a0, 1		 # Add Immediate Unsigned
		andi	$a0, 0xFFFF	 # AND Immediate
		sh	$0, 0($t7)	 # Store Halfword
		sh	$0, 0($t6)	 # Store Halfword
		sh	$t9, 0($a2)	 # Store Halfword
		and	$t5, $a3, $s2	 # AND

loc_8C0031C8:				 # CODE	XREF: sub_8C002EC0+2D8j
		beqzl	$t5, loc_8C0031D8  # Branch on Zero Likely
		move	$t9, $s3
		j	loc_8C0031D8	 # Jump
		move	$t9, $a1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0031D8:				 # CODE	XREF: sub_8C002EC0+308j
					 # sub_8C002EC0+310j
		lhu	$t3, 0($a2)	 # Load	Halfword Unsigned
		sll	$a3, 1		 # Shift Left Logical
		andi	$a3, 0xFFFF	 # AND Immediate
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		sll	$t3, 1		 # Shift Left Logical
		bnez	$v1, loc_8C003194  # Branch on Not Zero
		addu	$a2, $t9, $t3	 # Add Unsigned

loc_8C0031F8:				 # CODE	XREF: sub_8C002EC0+2CCj
		lui	$1, 0x8C18	 # Load	Upper Immediate
		sh	$s4, 0($a2)	 # Store Halfword
		lhu	$t0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		addiu	$s4, 1		 # Add Immediate Unsigned
		addiu	$1, 0xDEE8	 # Add Immediate Unsigned
		addu	$t9, $1, $s6	 # Add Unsigned
		sh	$t8, 0($t9)	 # Store Halfword
		andi	$s4, 0xFFFF	 # AND Immediate
		slt	$t8, $s4, $t0	 # Set on Less Than
		bnezl	$t8, loc_8C003108  # Branch on Not Zero	Likely
		lbu	$v1, 0($s1)	 # Load	Byte Unsigned
		j	loc_8C003274	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00322C:				 # CODE	XREF: sub_8C002EC0+290j
		lui	$1, 0x8C18	 # Load	Upper Immediate

loc_8C003230:				 # CODE	XREF: sub_8C002EC0+2B0j
		lhu	$t0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		addiu	$s4, 1		 # Add Immediate Unsigned
		addiu	$1, 0xDEE8	 # Add Immediate Unsigned
		addu	$t9, $1, $s6	 # Add Unsigned
		sh	$t8, 0($t9)	 # Store Halfword
		andi	$s4, 0xFFFF	 # AND Immediate
		slt	$t8, $s4, $t0	 # Set on Less Than
		bnezl	$t8, loc_8C003108  # Branch on Not Zero	Likely
		lbu	$v1, 0($s1)	 # Load	Byte Unsigned
		j	loc_8C003274	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00325C:				 # CODE	XREF: sub_8C002EC0+248j
		lhu	$t0, 0x30+var_A($sp)  #	Load Halfword Unsigned
		addiu	$s4, 1		 # Add Immediate Unsigned
		andi	$s4, 0xFFFF	 # AND Immediate
		slt	$t8, $s4, $t0	 # Set on Less Than
		bnezl	$t8, loc_8C003108  # Branch on Not Zero	Likely
		lbu	$v1, 0($s1)	 # Load	Byte Unsigned

loc_8C003274:				 # CODE	XREF: sub_8C002EC0+23Cj
					 # sub_8C002EC0+364j ...
		lw	$s6, 0x30+var_18($sp)  # Load Word
		lw	$s0, 0x30+var_30($sp)  # Load Word
		lw	$s1, 0x30+var_2C($sp)  # Load Word
		lw	$s2, 0x30+var_28($sp)  # Load Word
		lw	$s3, 0x30+var_24($sp)  # Load Word
		lw	$s4, 0x30+var_20($sp)  # Load Word
		lw	$s5, 0x30+var_1C($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C002EC0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003298:				 # CODE	XREF: sub_8C003368+1Cp
					 # sub_8C0033A8+128p ...
		addiu	$v1, $gp, 0x8082  # Add	Immediate Unsigned
		lhu	$t9, 0($v1)	 # Load	Halfword Unsigned
		sll	$a0, 16		 # Shift Left Logical
		sra	$a0, 16		 # Shift Right Arithmetic
		addiu	$a3, $gp, 0x8086  # Add	Immediate Unsigned
		sllv	$t9, $a0	 # Shift Left Logical Variable
		sh	$t9, 0($v1)	 # Store Halfword
		lh	$t9, 0($a3)	 # Load	Halfword
		slt	$t7, $t9, $a0	 # Set on Less Than
		beqz	$t7, loc_8C00333C  # Branch on Zero
		addiu	$t4, $gp, 0x8084  # Add	Immediate Unsigned

loc_8C0032C4:				 # CODE	XREF: sub_8C003298+7Cj
					 # sub_8C003298+9Cj
		lhu	$t7, 0($t4)	 # Load	Halfword Unsigned
		lhu	$t6, 0($v1)	 # Load	Halfword Unsigned
		lw	$t5, -0x7F78($gp)  # Load Word
		subu	$a0, $t9	 # Subtract Unsigned
		sll	$a0, 16		 # Shift Left Logical
		sra	$a0, 16		 # Shift Right Arithmetic
		sllv	$t8, $t7, $a0	 # Shift Left Logical Variable
		or	$t6, $t8	 # OR
		beqz	$t5, loc_8C003324  # Branch on Zero
		sh	$t6, 0($v1)	 # Store Halfword
		lw	$t8, -0x7F84($gp)  # Load Word
		addiu	$t3, $t5, 0xFFFF  # Add	Immediate Unsigned
		sw	$t3, -0x7F78($gp)  # Store Word
		li	$t0, 8		 # Load	Immediate
		li	$t9, 8		 # Load	Immediate
		slt	$t7, $t9, $a0	 # Set on Less Than
		addiu	$t2, $t8, 1	 # Add Immediate Unsigned
		sw	$t2, -0x7F84($gp)  # Store Word
		lbu	$t8, 0($t8)	 # Load	Byte Unsigned
		sh	$t0, 0($a3)	 # Store Halfword
		bnez	$t7, loc_8C0032C4  # Branch on Not Zero
		sh	$t8, 0($t4)	 # Store Halfword
		j	loc_8C00333C	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003324:				 # CODE	XREF: sub_8C003298+4Cj
		li	$t0, 8		 # Load	Immediate
		sh	$t0, 0($a3)	 # Store Halfword
		li	$t9, 8		 # Load	Immediate
		slt	$t7, $t9, $a0	 # Set on Less Than
		bnez	$t7, loc_8C0032C4  # Branch on Not Zero
		sh	$0, 0($t4)	 # Store Halfword

loc_8C00333C:				 # CODE	XREF: sub_8C003298+24j
					 # sub_8C003298+84j
		lh	$t6, 0($a3)	 # Load	Halfword
		lhu	$t2, 0($v1)	 # Load	Halfword Unsigned
		lhu	$t4, 0($t4)	 # Load	Halfword Unsigned
		subu	$t6, $a0	 # Subtract Unsigned
		sll	$t3, $t6, 16	 # Shift Left Logical
		sra	$t3, 16		 # Shift Right Arithmetic
		srlv	$t5, $t4, $t3	 # Shift Right Logical Variable
		or	$t2, $t5	 # OR
		sh	$t2, 0($v1)	 # Store Halfword
		jr	$ra		 # Jump	Register
		sh	$t6, 0($a3)	 # Store Halfword
 # End of function sub_8C003298


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003368:				 # CODE	XREF: sub_8C0033A8+34p
					 # sub_8C0033A8+4Cp ...

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lhu	$t7, -0x7F7E($gp)  # Load Halfword Unsigned
		li	$t8, 0x10	 # Load	Immediate
		andi	$a0, 0xFFFF	 # AND Immediate
		subu	$t9, $t8, $a0	 # Subtract Unsigned
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		jal	sub_8C003298	 # Jump	And Link
		srlv	$s0, $t7, $t9	 # Shift Right Logical Variable
		andi	$s0, 0xFFFF	 # AND Immediate
		move	$v1, $s0
		move	$v0, $s0
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C003368


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0033A8:				 # CODE	XREF: sub_8C0038C8+2Cp
					 # sub_8C0038C8+44p

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		sw	$s2, 0x30+var_18($sp)  # Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		sw	$s3, 0x30+var_14($sp)  # Store Word
		sll	$s3, $a0, 16	 # Shift Left Logical
		sra	$s3, 16		 # Shift Right Arithmetic
		sw	$s0, 0x30+var_20($sp)  # Store Word
		sll	$s0, $a1, 16	 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		move	$a0, $s0
		jal	sub_8C003368	 # Jump	And Link
		sll	$s5, $a2, 16	 # Shift Left Logical
		sll	$s4, $v0, 16	 # Shift Left Logical
		sra	$s4, 16		 # Shift Right Arithmetic
		bnez	$s4, loc_8C003464  # Branch on Not Zero
		sra	$s5, 16		 # Shift Right Arithmetic
		jal	sub_8C003368	 # Jump	And Link
		move	$a0, $s0
		lui	$s2, 0x8C18	 # Load	Upper Immediate
		addiu	$s2, 0x8CE0	 # Add Immediate Unsigned
		sll	$s1, $v0, 16	 # Shift Left Logical
		li	$s0, 0		 # Load	Immediate
		slt	$t7, $s0, $s3	 # Set on Less Than
		beqz	$t7, loc_8C003434  # Branch on Zero
		sra	$s1, 16		 # Shift Right Arithmetic

loc_8C003418:				 # CODE	XREF: sub_8C0033A8+84j
		addiu	$s2, 1		 # Add Immediate Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slt	$t7, $s0, $s3	 # Set on Less Than
		bnez	$t7, loc_8C003418  # Branch on Not Zero
		sb	$0, -1($s2)	 # Store Byte

loc_8C003434:				 # CODE	XREF: sub_8C0033A8+68j
		lui	$v1, 0x8C18	 # Load	Upper Immediate
		addiu	$v1, 0xDCE8	 # Add Immediate Unsigned
		li	$s0, 0		 # Load	Immediate

loc_8C003440:				 # CODE	XREF: sub_8C0033A8+ACj
		addiu	$v1, 2		 # Add Immediate Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slti	$t5, $s0, 0x100	 # Set on Less Than Immediate
		bnez	$t5, loc_8C003440  # Branch on Not Zero
		sh	$s1, -2($v1)	 # Store Halfword
		j	loc_8C0035DC	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003464:				 # CODE	XREF: sub_8C0033A8+44j
		lui	$s2, 0x8C18	 # Load	Upper Immediate
		li	$s0, 0		 # Load	Immediate
		slt	$t4, $s0, $s4	 # Set on Less Than
		beqz	$t4, loc_8C003594  # Branch on Zero
		addiu	$s2, 0x8CE0	 # Add Immediate Unsigned
		lhu	$t4, -0x7F7E($gp)  # Load Halfword Unsigned

loc_8C00347C:				 # CODE	XREF: sub_8C0033A8+17Cj
		li	$t3, 7		 # Load	Immediate
		srl	$s1, $t4, 13	 # Shift Right Logical
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bnel	$s1, $t3, loc_8C0034C8	# Branch on Not	Equal Likely
		slti	$t7, $s1, 7	 # Set on Less Than Immediate
		lhu	$t9, -0x7F7E($gp)  # Load Halfword Unsigned
		andi	$t2, $t9, 0x1000  # AND	Immediate
		beqz	$t2, loc_8C0034C4  # Branch on Zero
		li	$v1, 0x1000	 # Load	Immediate

loc_8C0034A4:				 # CODE	XREF: sub_8C0033A8+114j
		lhu	$t9, -0x7F7E($gp)  # Load Halfword Unsigned
		addiu	$s1, 1		 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		srl	$v1, 1		 # Shift Right Logical
		andi	$v1, 0xFFFF	 # AND Immediate
		and	$t2, $v1, $t9	 # AND
		bnez	$t2, loc_8C0034A4  # Branch on Not Zero
		sra	$s1, 16		 # Shift Right Arithmetic

loc_8C0034C4:				 # CODE	XREF: sub_8C0033A8+F4j
		slti	$t7, $s1, 7	 # Set on Less Than Immediate

loc_8C0034C8:				 # CODE	XREF: sub_8C0033A8+E4j
		beqz	$t7, loc_8C0034FC  # Branch on Zero
		nop
		jal	sub_8C003298	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate
		move	$v1, $s0
		addu	$t6, $s2, $v1	 # Add Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		bne	$s0, $s5, loc_8C003520	# Branch on Not	Equal
		sb	$s1, 0($t6)	 # Store Byte
		j	loc_8C003534	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0034FC:				 # CODE	XREF: sub_8C0033A8+120j
		jal	sub_8C003298	 # Jump	And Link
		addiu	$a0, $s1, 0xFFFD  # Add	Immediate Unsigned
		move	$v1, $s0
		addu	$t6, $s2, $v1	 # Add Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		beq	$s0, $s5, loc_8C003534	# Branch on Equal
		sb	$s1, 0($t6)	 # Store Byte

loc_8C003520:				 # CODE	XREF: sub_8C0033A8+144j
					 # sub_8C0033A8+1C8j
		slt	$t4, $s0, $s4	 # Set on Less Than

loc_8C003524:				 # CODE	XREF: sub_8C0033A8+1A0j
		bnezl	$t4, loc_8C00347C  # Branch on Not Zero	Likely
		lhu	$t4, -0x7F7E($gp)  # Load Halfword Unsigned
		j	loc_8C003598	 # Jump
		slt	$t8, $s0, $s3	 # Set on Less Than
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003534:				 # CODE	XREF: sub_8C0033A8+14Cj
					 # sub_8C0033A8+170j
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		addiu	$s1, $v0, 0xFFFF  # Add	Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltzl	$s1, loc_8C003524  # Branch on Less Than Zero Likely
		slt	$t4, $s0, $s4	 # Set on Less Than
		move	$v1, $s0

loc_8C003554:				 # CODE	XREF: sub_8C0033A8+1D0j
		addu	$t3, $s2, $v1	 # Add Unsigned
		sb	$0, 0($t3)	 # Store Byte
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003520  # Branch on Less Than Zero
		sra	$s0, 16		 # Shift Right Arithmetic
		j	loc_8C003554	 # Jump
		move	$v1, $s0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003580:				 # CODE	XREF: sub_8C0033A8+1F0j
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		addu	$t9, $s2, $v1	 # Add Unsigned
		sb	$0, 0($t9)	 # Store Byte

loc_8C003594:				 # CODE	XREF: sub_8C0033A8+C8j
		slt	$t8, $s0, $s3	 # Set on Less Than

loc_8C003598:				 # CODE	XREF: sub_8C0033A8+184j
		bnezl	$t8, loc_8C003580  # Branch on Not Zero	Likely
		move	$v1, $s0
		move	$a0, $s3
		move	$a1, $s2
		li	$a2, 8		 # Load	Immediate
		lui	$a3, 0x8C18	 # Load	Upper Immediate
		jal	sub_8C002EC0	 # Jump	And Link
		addiu	$a3, 0xDCE8	 # Add Immediate Unsigned
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0035DC:				 # CODE	XREF: sub_8C0033A8+B4j
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C0033A8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003600:				 # CODE	XREF: sub_8C0038C8+34p

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s6, 0x30+var_8($sp)  #	Store Word
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		sw	$s3, 0x30+var_14($sp)  # Store Word
		sw	$s2, 0x30+var_18($sp)  # Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		sw	$s0, 0x30+var_20($sp)  # Store Word
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 9		 # Load	Immediate
		lui	$s2, 0x8C18	 # Load	Upper Immediate
		sll	$s4, $v0, 16	 # Shift Left Logical
		sra	$s4, 16		 # Shift Right Arithmetic
		bnez	$s4, loc_8C0036A0  # Branch on Not Zero
		addiu	$s2, 0x8AE0	 # Add Immediate Unsigned
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 9		 # Load	Immediate
		sll	$s1, $v0, 16	 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		li	$s0, 0		 # Load	Immediate

loc_8C003654:				 # CODE	XREF: sub_8C003600+68j
		addiu	$s2, 1		 # Add Immediate Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slti	$t7, $s0, 0x1FE	 # Set on Less Than Immediate
		bnez	$t7, loc_8C003654  # Branch on Not Zero
		sb	$0, -1($s2)	 # Store Byte
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0xBCE8	 # Add Immediate Unsigned
		li	$s0, 0		 # Load	Immediate

loc_8C00367C:				 # CODE	XREF: sub_8C003600+90j
		addiu	$s3, 2		 # Add Immediate Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slti	$t5, $s0, 0x1000  # Set	on Less	Than Immediate
		bnez	$t5, loc_8C00367C  # Branch on Not Zero
		sh	$s1, -2($s3)	 # Store Halfword
		j	loc_8C0038A0	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0036A0:				 # CODE	XREF: sub_8C003600+38j
		lui	$s5, 0x8C18	 # Load	Upper Immediate
		addiu	$s5, 0xACF8	 # Add Immediate Unsigned
		lui	$s6, 0x8C18	 # Load	Upper Immediate
		lui	$s3, 0x8C18	 # Load	Upper Immediate
		addiu	$s3, 0xB4F0	 # Add Immediate Unsigned
		li	$s0, 0		 # Load	Immediate
		slt	$t4, $s0, $s4	 # Set on Less Than
		beqz	$t4, loc_8C003854  # Branch on Zero
		addiu	$s6, 0x8CE0	 # Add Immediate Unsigned

loc_8C0036C4:				 # CODE	XREF: sub_8C003600+230j
		lhu	$t3, -0x7F7E($gp)  # Load Halfword Unsigned

loc_8C0036C8:				 # CODE	XREF: sub_8C003600+174j
		lui	$t8, 0x8C18	 # Load	Upper Immediate
		addiu	$t8, 0xDCE8	 # Add Immediate Unsigned
		srl	$t4, $t3, 8	 # Shift Right Logical
		sll	$t2, $t4, 1	 # Shift Left Logical
		addu	$t9, $t8, $t2	 # Add Unsigned
		lh	$s1, 0($t9)	 # Load	Halfword
		slti	$t7, $s1, 0x13	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C003750  # Branch on Not Zero	Likely
		addu	$t6, $s6, $s1	 # Add Unsigned
		li	$v1, 0x80	 # Load	Immediate

loc_8C0036F0:				 # CODE	XREF: sub_8C003600+11Cj
					 # sub_8C003600+144j
		lhu	$t5, -0x7F7E($gp)  # Load Halfword Unsigned
		and	$t6, $t5, $v1	 # AND
		beqzl	$t6, loc_8C00372C  # Branch on Zero Likely
		sll	$t9, $s1, 1	 # Shift Left Logical
		sll	$t3, $s1, 1	 # Shift Left Logical
		addu	$t2, $s3, $t3	 # Add Unsigned
		lhu	$t9, 0($t2)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		sll	$s1, $t9, 16	 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		slti	$t7, $s1, 0x13	 # Set on Less Than Immediate
		beqz	$t7, loc_8C0036F0  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		j	loc_8C003750	 # Jump
		addu	$t6, $s6, $s1	 # Add Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00372C:				 # CODE	XREF: sub_8C003600+F8j
		addu	$t8, $s5, $t9	 # Add Unsigned
		lhu	$t9, 0($t8)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		sll	$s1, $t9, 16	 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		slti	$t7, $s1, 0x13	 # Set on Less Than Immediate
		beqz	$t7, loc_8C0036F0  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		addu	$t6, $s6, $s1	 # Add Unsigned

loc_8C003750:				 # CODE	XREF: sub_8C003600+E4j
					 # sub_8C003600+124j
		lbu	$a0, 0($t6)	 # Load	Byte Unsigned
		jal	sub_8C003298	 # Jump	And Link
		nop
		slti	$t5, $s1, 3	 # Set on Less Than Immediate
		beqzl	$t5, loc_8C003818  # Branch on Zero Likely
		move	$v1, $s0
		j	loc_8C003784	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003770:				 # CODE	XREF: sub_8C003600+208j
		slt	$t4, $s0, $s4	 # Set on Less Than

loc_8C003774:				 # CODE	XREF: sub_8C003600+190j
					 # sub_8C003600+1BCj ...
		bnezl	$t4, loc_8C0036C8  # Branch on Not Zero	Likely
		lhu	$t3, -0x7F7E($gp)  # Load Halfword Unsigned
		j	loc_8C003858	 # Jump
		slti	$t4, $s0, 0x1FE	 # Set on Less Than Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003784:				 # CODE	XREF: sub_8C003600+168j
		bnezl	$s1, loc_8C0037A0  # Branch on Not Zero	Likely
		li	$t2, 1		 # Load	Immediate
		li	$s1, 0		 # Load	Immediate
		bltzl	$s1, loc_8C003774  # Branch on Less Than Zero Likely
		slt	$t4, $s0, $s4	 # Set on Less Than
		j	loc_8C0037EC	 # Jump
		move	$v1, $s0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0037A0:				 # CODE	XREF: sub_8C003600+184j
		bne	$s1, $t2, loc_8C0037CC	# Branch on Not	Equal
		nop
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 4		 # Load	Immediate
		addiu	$s1, $v0, 2	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltzl	$s1, loc_8C003774  # Branch on Less Than Zero Likely
		slt	$t4, $s0, $s4	 # Set on Less Than
		j	loc_8C0037EC	 # Jump
		move	$v1, $s0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0037CC:				 # CODE	XREF: sub_8C003600+1A0j
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 9		 # Load	Immediate
		addiu	$s1, $v0, 0x13	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltzl	$s1, loc_8C003774  # Branch on Less Than Zero Likely
		slt	$t4, $s0, $s4	 # Set on Less Than
		move	$v1, $s0

loc_8C0037EC:				 # CODE	XREF: sub_8C003600+198j
					 # sub_8C003600+1C4j ...
		addu	$t9, $s2, $v1	 # Add Unsigned
		sb	$0, 0($t9)	 # Store Byte
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003770  # Branch on Less Than Zero
		sra	$s0, 16		 # Shift Right Arithmetic
		j	loc_8C0037EC	 # Jump
		move	$v1, $s0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003818:				 # CODE	XREF: sub_8C003600+160j
		addu	$t7, $s2, $v1	 # Add Unsigned
		addiu	$t6, $s1, 0xFFFE  # Add	Immediate Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slt	$t4, $s0, $s4	 # Set on Less Than
		bnez	$t4, loc_8C0036C4  # Branch on Not Zero
		sb	$t6, 0($t7)	 # Store Byte
		j	loc_8C003858	 # Jump
		slti	$t4, $s0, 0x1FE	 # Set on Less Than Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003840:				 # CODE	XREF: sub_8C003600+258j
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		addu	$t5, $s2, $v1	 # Add Unsigned
		sb	$0, 0($t5)	 # Store Byte

loc_8C003854:				 # CODE	XREF: sub_8C003600+BCj
		slti	$t4, $s0, 0x1FE	 # Set on Less Than Immediate

loc_8C003858:				 # CODE	XREF: sub_8C003600+17Cj
					 # sub_8C003600+238j
		bnezl	$t4, loc_8C003840  # Branch on Not Zero	Likely
		move	$v1, $s0
		move	$a1, $s2
		li	$a0, 0x1FE	 # Load	Immediate
		li	$a2, 0xC	 # Load	Immediate
		lui	$a3, 0x8C18	 # Load	Upper Immediate
		jal	sub_8C002EC0	 # Jump	And Link
		addiu	$a3, 0xBCE8	 # Add Immediate Unsigned
		lw	$s6, 0x30+var_8($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0038A0:				 # CODE	XREF: sub_8C003600+98j
		lw	$s6, 0x30+var_8($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C003600


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0038C8:				 # CODE	XREF: sub_8C003ACC+E8p

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		addiu	$s0, $gp, 0x8080  # Add	Immediate Unsigned
		lhu	$t9, 0($s0)	 # Load	Halfword Unsigned
		bnez	$t9, loc_8C003914  # Branch on Not Zero
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C003368	 # Jump	And Link
		li	$a0, 0x10	 # Load	Immediate
		sh	$v0, 0($s0)	 # Store Halfword
		li	$a0, 0x13	 # Load	Immediate
		li	$a1, 5		 # Load	Immediate
		jal	sub_8C0033A8	 # Jump	And Link
		li	$a2, 3		 # Load	Immediate
		jal	sub_8C003600	 # Jump	And Link
		nop
		li	$a0, 0xE	 # Load	Immediate
		li	$a1, 4		 # Load	Immediate
		jal	sub_8C0033A8	 # Jump	And Link
		li	$a2, 0xFFFFFFFF	 # Load	Immediate

loc_8C003914:				 # CODE	XREF: sub_8C0038C8+10j
		lhu	$t5, -0x7F7E($gp)  # Load Halfword Unsigned
		lhu	$t7, 0($s0)	 # Load	Halfword Unsigned
		lui	$t2, 0x8C18	 # Load	Upper Immediate
		addiu	$t2, 0xBCE8	 # Add Immediate Unsigned
		srl	$t6, $t5, 4	 # Shift Right Logical
		sll	$t4, $t6, 1	 # Shift Left Logical
		addu	$t3, $t2, $t4	 # Add Unsigned
		addiu	$t7, 0xFFFF	 # Add Immediate Unsigned
		sh	$t7, 0($s0)	 # Store Halfword
		lhu	$s0, 0($t3)	 # Load	Halfword Unsigned
		slti	$t9, $s0, 0x1FE	 # Set on Less Than Immediate
		bnezl	$t9, loc_8C0039AC  # Branch on Not Zero	Likely
		lui	$t7, 0x8C18	 # Load	Upper Immediate
		li	$v1, 8		 # Load	Immediate
		lui	$t6, 0x8C18	 # Load	Upper Immediate
		addiu	$t6, 0xB4F0	 # Add Immediate Unsigned
		lui	$a0, 0x8C18	 # Load	Upper Immediate
		addiu	$a0, 0xACF8	 # Add Immediate Unsigned

loc_8C00395C:				 # CODE	XREF: sub_8C0038C8+B8j
					 # sub_8C0038C8+D8j
		lhu	$t7, -0x7F7E($gp)  # Load Halfword Unsigned
		and	$t8, $t7, $v1	 # AND
		beqzl	$t8, loc_8C003990  # Branch on Zero Likely
		sll	$t3, $s0, 1	 # Shift Left Logical
		sll	$t5, $s0, 1	 # Shift Left Logical
		addu	$t4, $t6, $t5	 # Add Unsigned
		lhu	$s0, 0($t4)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		slti	$t9, $s0, 0x1FE	 # Set on Less Than Immediate
		beqz	$t9, loc_8C00395C  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		j	loc_8C0039AC	 # Jump
		lui	$t7, 0x8C18	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003990:				 # CODE	XREF: sub_8C0038C8+9Cj
		addu	$t2, $a0, $t3	 # Add Unsigned
		lhu	$s0, 0($t2)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		slti	$t9, $s0, 0x1FE	 # Set on Less Than Immediate
		beqz	$t9, loc_8C00395C  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		lui	$t7, 0x8C18	 # Load	Upper Immediate

loc_8C0039AC:				 # CODE	XREF: sub_8C0038C8+78j
					 # sub_8C0038C8+C0j
		addiu	$t7, 0x8AE0	 # Add Immediate Unsigned
		addu	$t8, $t7, $s0	 # Add Unsigned
		lbu	$a0, 0($t8)	 # Load	Byte Unsigned
		jal	sub_8C003298	 # Jump	And Link
		nop
		move	$v1, $s0
		move	$v0, $s0
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0038C8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0039D8:				 # CODE	XREF: sub_8C003ACC+120p

var_8		= -8
var_4		= -4

		lhu	$t8, -0x7F7E($gp)  # Load Halfword Unsigned
		lui	$t5, 0x8C18	 # Load	Upper Immediate
		addiu	$t5, 0xDCE8	 # Add Immediate Unsigned
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		srl	$t9, $t8, 8	 # Shift Right Logical
		sll	$t7, $t9, 1	 # Shift Left Logical
		addu	$t6, $t5, $t7	 # Add Unsigned
		lhu	$s0, 0($t6)	 # Load	Halfword Unsigned
		slti	$t4, $s0, 0xE	 # Set on Less Than Immediate
		bnezl	$t4, loc_8C003A70  # Branch on Not Zero	Likely
		lui	$t2, 0x8C18	 # Load	Upper Immediate
		li	$v1, 0x80	 # Load	Immediate
		lui	$t9, 0x8C18	 # Load	Upper Immediate
		addiu	$t9, 0xB4F0	 # Add Immediate Unsigned
		lui	$a3, 0x8C18	 # Load	Upper Immediate
		addiu	$a3, 0xACF8	 # Add Immediate Unsigned

loc_8C003A20:				 # CODE	XREF: sub_8C0039D8+6Cj
					 # sub_8C0039D8+8Cj
		lhu	$t2, -0x7F7E($gp)  # Load Halfword Unsigned
		and	$t3, $t2, $v1	 # AND
		beqzl	$t3, loc_8C003A54  # Branch on Zero Likely
		sll	$t6, $s0, 1	 # Shift Left Logical
		sll	$t8, $s0, 1	 # Shift Left Logical
		addu	$t7, $t9, $t8	 # Add Unsigned
		lhu	$s0, 0($t7)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		slti	$t4, $s0, 0xE	 # Set on Less Than Immediate
		beqz	$t4, loc_8C003A20  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		j	loc_8C003A70	 # Jump
		lui	$t2, 0x8C18	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003A54:				 # CODE	XREF: sub_8C0039D8+50j
		addu	$t5, $a3, $t6	 # Add Unsigned
		lhu	$s0, 0($t5)	 # Load	Halfword Unsigned
		srl	$v1, 1		 # Shift Right Logical
		slti	$t4, $s0, 0xE	 # Set on Less Than Immediate
		beqz	$t4, loc_8C003A20  # Branch on Zero
		andi	$v1, 0xFFFF	 # AND Immediate
		lui	$t2, 0x8C18	 # Load	Upper Immediate

loc_8C003A70:				 # CODE	XREF: sub_8C0039D8+2Cj
					 # sub_8C0039D8+74j
		addiu	$t2, 0x8CE0	 # Add Immediate Unsigned
		addu	$t3, $t2, $s0	 # Add Unsigned
		lbu	$a0, 0($t3)	 # Load	Byte Unsigned
		jal	sub_8C003298	 # Jump	And Link
		nop
		beqzl	$s0, loc_8C003AB8  # Branch on Zero Likely
		move	$v1, $s0
		addiu	$a0, $s0, 0xFFFF  # Add	Immediate Unsigned
		li	$v1, 1		 # Load	Immediate
		jal	sub_8C003368	 # Jump	And Link
		sllv	$s0, $v1, $a0	 # Shift Left Logical Variable
		addu	$s0, $v0	 # Add Unsigned
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		andi	$v1, $s0, 0xFFFF  # AND	Immediate
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003AB8:				 # CODE	XREF: sub_8C0039D8+ACj
		move	$v0, $s0
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0039D8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003ACC:				 # CODE	XREF: sub_8C002558+A4p

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		sw	$s3, 0x30+var_14($sp)  # Store Word
		sw	$s2, 0x30+var_18($sp)  # Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		sw	$s0, 0x30+var_20($sp)  # Store Word
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		lw	$s5, -0x7FBC($gp)  # Load Word
		sw	$s6, 0x30+var_8($sp)  #	Store Word
		lui	$s6, 0x8C01	 # Load	Upper Immediate
		lw	$t9, -0x7FC0($gp)  # Load Word
		sw	$a0, -0x7F84($gp)  # Store Word
		sh	$0, -0x7F7A($gp)  # Store Halfword
		sh	$0, -0x7F7E($gp)  # Store Halfword
		sh	$0, -0x7F7C($gp)  # Store Halfword
		addiu	$s6, 0xA50	 # Add Immediate Unsigned
		sw	$t9, -0x7F78($gp)  # Store Word
		jal	sub_8C003298	 # Jump	And Link
		li	$a0, 0x10	 # Load	Immediate
		li	$s2, 0		 # Load	Immediate
		li	$s1, 0		 # Load	Immediate
		beqz	$s5, loc_8C003C90  # Branch on Zero
		sh	$0, -0x7F80($gp)  # Store Halfword
		lui	$s3, 0x8C18	 # Load	Upper Immediate

loc_8C003B30:				 # CODE	XREF: sub_8C003ACC+1BCj
		sltiu	$t8, $s5, 0x2001  # Set	on Less	Than Immediate Unsigned
		bnez	$t8, loc_8C003B5C  # Branch on Not Zero
		addiu	$s3, 0x8CF8	 # Add Immediate Unsigned
		li	$s0, 0		 # Load	Immediate
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003BB4  # Branch on Less Than Zero
		li	$s4, 0x2000	 # Load	Immediate
		j	loc_8C003B7C	 # Jump
		addiu	$t3, $s2, 1	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003B5C:				 # CODE	XREF: sub_8C003ACC+68j
		li	$s0, 0		 # Load	Immediate
		sll	$s4, $s5, 16	 # Shift Left Logical
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003BB4  # Branch on Less Than Zero
		sra	$s4, 16		 # Shift Right Arithmetic
		addiu	$t3, $s2, 1	 # Add Immediate Unsigned

loc_8C003B7C:				 # CODE	XREF: sub_8C003ACC+88j
					 # sub_8C003ACC+E0j
		addu	$t5, $s3, $s2	 # Add Unsigned
		andi	$s2, $t3, 0x1FFF  # AND	Immediate
		lbu	$t4, 0($t5)	 # Load	Byte Unsigned
		addu	$t6, $s3, $s0	 # Add Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		beq	$s0, $s4, loc_8C003C50	# Branch on Equal
		sb	$t4, 0($t6)	 # Store Byte
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bgezl	$s1, loc_8C003B7C  # Branch on Greater Than or Equal to	Zero Likely
		addiu	$t3, $s2, 1	 # Add Immediate Unsigned

loc_8C003BB4:				 # CODE	XREF: sub_8C003ACC+80j
					 # sub_8C003ACC+A4j ...
		jal	sub_8C0038C8	 # Jump	And Link
		nop
		sll	$v1, $v0, 16	 # Shift Left Logical
		sra	$v1, 16		 # Shift Right Arithmetic
		slti	$t8, $v1, 0x100	 # Set on Less Than Immediate
		beqz	$t8, loc_8C003BEC  # Branch on Zero
		addu	$t7, $s3, $s0	 # Add Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		bne	$s0, $s4, loc_8C003BB4	# Branch on Not	Equal
		sb	$v1, 0($t7)	 # Store Byte
		j	loc_8C003C54	 # Jump
		li	$s0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003BEC:				 # CODE	XREF: sub_8C003ACC+FCj
		jal	sub_8C0039D8	 # Jump	And Link
		addiu	$s1, $v1, 0xFF02  # Add	Immediate Unsigned
		subu	$v1, $s0, $v0	 # Subtract Unsigned
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003BB4  # Branch on Less Than Zero
		andi	$s2, $v1, 0x1FFF  # AND	Immediate
		addiu	$t2, $s2, 1	 # Add Immediate Unsigned

loc_8C003C10:				 # CODE	XREF: sub_8C003ACC+17Cj
		addu	$t4, $s3, $s2	 # Add Unsigned
		andi	$s2, $t2, 0x1FFF  # AND	Immediate
		lbu	$t3, 0($t4)	 # Load	Byte Unsigned
		addu	$t5, $s3, $s0	 # Add Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		beq	$s0, $s4, loc_8C003C50	# Branch on Equal
		sb	$t3, 0($t5)	 # Store Byte
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		sll	$s1, 16		 # Shift Left Logical
		sra	$s1, 16		 # Shift Right Arithmetic
		bltz	$s1, loc_8C003BB4  # Branch on Less Than Zero
		nop
		j	loc_8C003C10	 # Jump
		addiu	$t2, $s2, 1	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003C50:				 # CODE	XREF: sub_8C003ACC+CCj
					 # sub_8C003ACC+160j
		li	$s0, 0		 # Load	Immediate

loc_8C003C54:				 # CODE	XREF: sub_8C003ACC+118j
		slt	$t4, $s0, $s4	 # Set on Less Than
		beqzl	$t4, loc_8C003C88  # Branch on Zero Likely
		subu	$s5, $s4	 # Subtract Unsigned

loc_8C003C60:				 # CODE	XREF: sub_8C003ACC+1B0j
		addiu	$s0, 1		 # Add Immediate Unsigned
		lbu	$t5, 0($s3)	 # Load	Byte Unsigned
		addiu	$s6, 1		 # Add Immediate Unsigned
		sll	$s0, 16		 # Shift Left Logical
		sra	$s0, 16		 # Shift Right Arithmetic
		slt	$t4, $s0, $s4	 # Set on Less Than
		sb	$t5, -1($s6)	 # Store Byte
		bnez	$t4, loc_8C003C60  # Branch on Not Zero
		addiu	$s3, 1		 # Add Immediate Unsigned
		subu	$s5, $s4	 # Subtract Unsigned

loc_8C003C88:				 # CODE	XREF: sub_8C003ACC+18Cj
		bnezl	$s5, loc_8C003B30  # Branch on Not Zero	Likely
		lui	$s3, 0x8C18	 # Load	Upper Immediate

loc_8C003C90:				 # CODE	XREF: sub_8C003ACC+58j
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s6, 0x30+var_8($sp)  #	Load Word
		lui	$v1, 0x8C01	 # Load	Upper Immediate
		addiu	$v1, 0xA50	 # Add Immediate Unsigned
		addiu	$sp, 0x30	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C003ACC

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003CD0:				 # CODE	XREF: sub_8C0029C0+1F0p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lui	$1, 0xBE00	 # Load	Upper Immediate
		lhu	$t9, 0($1)	 # Load	Halfword Unsigned
		lui	$a0, 0xBE00	 # Load	Upper Immediate
		addiu	$a1, $t9, 0xFFFE  # Add	Immediate Unsigned
		jal	sub_8C005004	 # Jump	And Link
		ori	$a0, 4		 # OR Immediate
		lui	$1, 0xBE00	 # Load	Upper Immediate
		lhu	$t9, 2($1)	 # Load	Halfword Unsigned
		bnel	$v0, $t9, loc_8C003D14	# Branch on Not	Equal Likely
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003D14:				 # CODE	XREF: sub_8C003CD0+28j
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # End of function sub_8C003CD0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003D24:				 # CODE	XREF: sub_8C003D6C+Cp
					 # sub_8C003D6C+34p ...

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lw	$t9, -0x7FD0($gp)  # Load Word
		lui	$t8, 0xBE00	 # Load	Upper Immediate
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		move	$s0, $a0
		move	$a2, $a0
		lui	$a0, 0x8C01	 # Load	Upper Immediate
		addu	$a1, $t9, $t8	 # Add Unsigned
		jal	sub_8C005060	 # Jump	And Link
		addiu	$a0, 0x8A50	 # Add Immediate Unsigned
		lw	$t7, -0x7FD0($gp)  # Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		addu	$t7, $s0	 # Add Unsigned
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		sw	$t7, -0x7FD0($gp)  # Store Word
 # End of function sub_8C003D24


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003D6C:				 # CODE	XREF: sub_8C003E60+18p

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		jal	sub_8C003D24	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		lui	$1, 0x8C01	 # Load	Upper Immediate
		lhu	$s0, -0x75B0($1)  # Load Halfword Unsigned
		li	$t9, 0x8000	 # Load	Immediate
		sltu	$t8, $t9, $s0	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C003DC4  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate
		jal	sub_8C003D24	 # Jump	And Link
		move	$a0, $s0
		jal	sub_8C002804	 # Jump	And Link
		move	$a0, $s0
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $v0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003DC4:				 # CODE	XREF: sub_8C003D6C+24j
		jal	sub_8C003D24	 # Jump	And Link
		move	$a0, $s0
		jal	sub_8C002804	 # Jump	And Link
		move	$a0, $s0
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $v0
 # End of function sub_8C003D6C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003DE8:				 # CODE	XREF: sub_8C003E60+44p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		jal	sub_8C003D24	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		lui	$s1, 0x8C01	 # Load	Upper Immediate
		addiu	$s1, 0x8A50	 # Add Immediate Unsigned
		lhu	$s0, 0($s1)	 # Load	Halfword Unsigned
		li	$t9, 0x8000	 # Load	Immediate
		sltu	$t8, $t9, $s0	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C003E24  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate

loc_8C003E24:				 # CODE	XREF: sub_8C003DE8+2Cj
		jal	sub_8C003D24	 # Jump	And Link
		move	$a0, $s0
		jal	sub_8C002948	 # Jump	And Link
		move	$a0, $s0
		lw	$a1, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		addiu	$v1, $s1, 0xA	 # Add Immediate Unsigned
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C003DE8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003E60:				 # CODE	XREF: sub_8C0029C0+200p

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		sw	$0, -0x7FD0($gp)  # Store Word
		sw	$0, -0x7FCC($gp)  # Store Word
		li	$t0, 0x65	 # Load	Immediate
		jal	sub_8C003D6C	 # Jump	And Link
		sw	$t0, -0x7FB8($gp)  # Store Word
		beqzl	$v0, loc_8C003EDC  # Branch on Zero Likely
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		lw	$a1, -0x7FD0($gp)  # Load Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lhu	$s0, -0x7FC2($gp)  # Load Halfword Unsigned
		beqz	$s0, loc_8C003EC4  # Branch on Zero
		nop

loc_8C003EA4:				 # CODE	XREF: sub_8C003E60+5Cj
		jal	sub_8C003DE8	 # Jump	And Link
		nop
		jal	sub_8C002558	 # Jump	And Link
		move	$a0, $v0
		addiu	$s0, 0xFFFF	 # Add Immediate Unsigned
		andi	$s0, 0xFFFF	 # AND Immediate
		bnez	$s0, loc_8C003EA4  # Branch on Not Zero
		nop

loc_8C003EC4:				 # CODE	XREF: sub_8C003E60+3Cj
		jal	sub_8C0022B4	 # Jump	And Link
		nop
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003EDC:				 # CODE	XREF: sub_8C003E60+20j
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C003E60

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop

loc_8C003EF0:				 # CODE	XREF: seg000:8C003EF0j
		bnez	$a0, loc_8C003EF0  # Branch on Not Zero
		addiu	$a0, 0xFFFF	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003F00:				 # CODE	XREF: seg000:8C004560p
					 # seg000:8C004580p ...
		andi	$a0, 0xFFFF	 # AND Immediate
		srl	$t9, $a0, 8	 # Shift Right Logical
		lui	$1, 0xB140	 # Load	Upper Immediate
		sb	$t9, 0x34($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		sb	$a0, 0x30($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		sb	$t0, 0x38($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		lbu	$t6, 0($1)	 # Load	Byte Unsigned
		andi	$t7, $t6, 1	 # AND Immediate
		beqz	$t7, locret_8C003F50  #	Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C003F38:				 # CODE	XREF: sub_8C003F00+48j
		lbu	$v1, 0x20($1)	 # Load	Byte Unsigned
		lui	$1, 0xB140	 # Load	Upper Immediate
		lbu	$t6, 0($1)	 # Load	Byte Unsigned
		andi	$t7, $t6, 1	 # AND Immediate
		bnezl	$t7, loc_8C003F38  # Branch on Not Zero	Likely
		lui	$1, 0xB140	 # Load	Upper Immediate

locret_8C003F50:			 # CODE	XREF: sub_8C003F00+30j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C003F00


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003F58:				 # CODE	XREF: seg000:8C004510p
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 0x80	 # Load	Immediate
		sb	$t0, 0x24($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		sb	$0, 0x24($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 0xC1	 # Load	Immediate
		sb	$t0, 0xC($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 0x84	 # Load	Immediate
		sb	$t0, 0x10($1)	 # Store Byte
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 0x68	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sb	$t0, 0x14($1)	 # Store Byte
 # End of function sub_8C003F58


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C003F94:				 # CODE	XREF: sub_8C00421C+20p
					 # sub_8C00421C+54p ...
		move	$v1, $a0
		beqz	$a0, loc_8C003FC0  # Branch on Zero
		andi	$a1, 0xFF	 # AND Immediate
		j	loc_8C003FB0	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003FA8:				 # CODE	XREF: sub_8C003F94+24j
		beqz	$v1, loc_8C003FC4  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C003FB0:				 # CODE	XREF: sub_8C003F94+Cj
		lbu	$t7, 0($1)	 # Load	Byte Unsigned
		andi	$t8, $t7, 4	 # AND Immediate
		beqzl	$t8, loc_8C003FA8  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C003FC0:				 # CODE	XREF: sub_8C003F94+4j
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C003FC4:				 # CODE	XREF: sub_8C003F94+14j
		lbu	$t4, 0($1)	 # Load	Byte Unsigned
		andi	$t5, $t4, 4	 # AND Immediate
		bnezl	$t5, loc_8C003FE0  # Branch on Not Zero	Likely
		move	$v1, $a0
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003FE0:				 # CODE	XREF: sub_8C003F94+38j
		lui	$1, 0xB140	 # Load	Upper Immediate
		beqz	$a0, loc_8C00400C  # Branch on Zero
		sb	$a1, 0x20($1)	 # Store Byte
		j	loc_8C003FFC	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C003FF4:				 # CODE	XREF: sub_8C003F94+70j
		beqz	$v1, loc_8C004010  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C003FFC:				 # CODE	XREF: sub_8C003F94+58j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 1	 # AND Immediate
		beqzl	$t9, loc_8C003FF4  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C00400C:				 # CODE	XREF: sub_8C003F94+50j
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004010:				 # CODE	XREF: sub_8C003F94+60j
		lbu	$t5, 0($1)	 # Load	Byte Unsigned
		andi	$t6, $t5, 1	 # AND Immediate
		bnezl	$t6, loc_8C00402C  # Branch on Not Zero	Likely
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$v0, 0		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00402C:				 # CODE	XREF: sub_8C003F94+84j
		lbu	$t3, 0x20($1)	 # Load	Byte Unsigned
		xori	$t2, $t3, 6	 # Exclusive OR	Immediate
		sltiu	$v1, $t2, 1	 # Set on Less Than Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C003F94


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004040:				 # CODE	XREF: sub_8C00421C+1C0p
					 # sub_8C00421C+290p ...
		beqz	$a0, loc_8C004068  # Branch on Zero
		move	$v1, $a0
		j	loc_8C004058	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004050:				 # CODE	XREF: sub_8C004040+20j
		beqz	$v1, loc_8C00406C  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004058:				 # CODE	XREF: sub_8C004040+8j
		lbu	$t7, 0($1)	 # Load	Byte Unsigned
		andi	$t8, $t7, 1	 # AND Immediate
		beqzl	$t8, loc_8C004050  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C004068:				 # CODE	XREF: sub_8C004040j
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C00406C:				 # CODE	XREF: sub_8C004040+10j
		lbu	$t4, 0($1)	 # Load	Byte Unsigned
		andi	$t5, $t4, 1	 # AND Immediate
		bnezl	$t5, loc_8C004088  # Branch on Not Zero	Likely
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$v0, 0xFFFF	 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004088:				 # CODE	XREF: sub_8C004040+34j
		lbu	$t7, 0x20($1)	 # Load	Byte Unsigned
		beqz	$a0, loc_8C0040B4  # Branch on Zero
		move	$v1, $a0
		j	loc_8C0040A4	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00409C:				 # CODE	XREF: sub_8C004040+6Cj
		beqz	$v1, loc_8C0040B8  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C0040A4:				 # CODE	XREF: sub_8C004040+54j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 4	 # AND Immediate
		beqzl	$t9, loc_8C00409C  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C0040B4:				 # CODE	XREF: sub_8C004040+4Cj
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C0040B8:				 # CODE	XREF: sub_8C004040+5Cj
		lbu	$t5, 0($1)	 # Load	Byte Unsigned
		andi	$t6, $t5, 4	 # AND Immediate
		bnezl	$t6, loc_8C0040D4  # Branch on Not Zero	Likely
		move	$v0, $t7
		li	$v0, 0xFFFF	 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0040D4:				 # CODE	XREF: sub_8C004040+80j
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 6		 # Load	Immediate
		move	$v1, $t7
		jr	$ra		 # Jump	Register
		sb	$t0, 0x20($1)	 # Store Byte
 # End of function sub_8C004040


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0040E8:				 # CODE	XREF: sub_8C00421C+21Cp
					 # sub_8C00421C+248p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		li	$t6, 0		 # Load	Immediate
		sltu	$t8, $t6, $a1	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C00416C  # Branch on Zero
		sw	$ra, 0x18+var_4($sp)  #	Store Word

loc_8C0040FC:				 # CODE	XREF: sub_8C0040E8+64j
		beqz	$a0, loc_8C004124  # Branch on Zero
		move	$v1, $a0
		j	loc_8C004114	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00410C:				 # CODE	XREF: sub_8C0040E8+34j
		beqz	$v1, loc_8C004128  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004114:				 # CODE	XREF: sub_8C0040E8+1Cj
		lbu	$t7, 0($1)	 # Load	Byte Unsigned
		andi	$t8, $t7, 1	 # AND Immediate
		beqzl	$t8, loc_8C00410C  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C004124:				 # CODE	XREF: sub_8C0040E8+14j
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004128:				 # CODE	XREF: sub_8C0040E8+24j
		lbu	$t4, 0($1)	 # Load	Byte Unsigned
		andi	$t5, $t4, 1	 # AND Immediate
		beqzl	$t5, loc_8C00415C  # Branch on Zero Likely
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lui	$1, 0xB140	 # Load	Upper Immediate
		lbu	$t9, 0x20($1)	 # Load	Byte Unsigned
		addiu	$t6, 1		 # Add Immediate Unsigned
		sltu	$t8, $t6, $a1	 # Set on Less Than Unsigned
		addiu	$a2, 1		 # Add Immediate Unsigned
		bnez	$t8, loc_8C0040FC  # Branch on Not Zero
		sb	$t9, -1($a2)	 # Store Byte
		j	loc_8C00416C	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00415C:				 # CODE	XREF: sub_8C0040E8+48j
		li	$v0, 0xFFFF	 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00416C:				 # CODE	XREF: sub_8C0040E8+Cj
					 # sub_8C0040E8+6Cj
		beqz	$a0, loc_8C004194  # Branch on Zero
		move	$v1, $a0
		j	loc_8C004184	 # Jump
		lui	$1, 0xB140	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00417C:				 # CODE	XREF: sub_8C0040E8+A4j
		beqz	$v1, loc_8C004198  # Branch on Zero
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004184:				 # CODE	XREF: sub_8C0040E8+8Cj
		lbu	$t5, 0($1)	 # Load	Byte Unsigned
		andi	$t6, $t5, 4	 # AND Immediate
		beqzl	$t6, loc_8C00417C  # Branch on Zero Likely
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned

loc_8C004194:				 # CODE	XREF: sub_8C0040E8+84j
		lui	$1, 0xB140	 # Load	Upper Immediate

loc_8C004198:				 # CODE	XREF: sub_8C0040E8+94j
		lbu	$t2, 0($1)	 # Load	Byte Unsigned
		andi	$t3, $t2, 4	 # AND Immediate
		bnezl	$t3, loc_8C0041BC  # Branch on Not Zero	Likely
		lw	$t8, -0x7FD0($gp)  # Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 0xFFFF	 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0041BC:				 # CODE	XREF: sub_8C0040E8+B8j
		lw	$v1, -0x7FA4($gp)  # Load Word
		addu	$t8, $a1	 # Add Unsigned
		beqz	$v1, loc_8C0041FC  # Branch on Zero
		sw	$t8, -0x7FD0($gp)  # Store Word
		move	$a1, $t8
		move	$a2, $v1
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 6		 # Load	Immediate
		sb	$t0, 0x20($1)	 # Store Byte
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0041FC:				 # CODE	XREF: sub_8C0040E8+DCj
		lui	$1, 0xB140	 # Load	Upper Immediate
		li	$t0, 6		 # Load	Immediate
		sb	$t0, 0x20($1)	 # Store Byte
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # End of function sub_8C0040E8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00421C:				 # CODE	XREF: sub_8C0047C0+Cp
					 # sub_8C0047C0+50p ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		sw	$s2, 0x20+var_8($sp)  #	Store Word
		move	$s2, $a0
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnezl	$v0, loc_8C00426C  # Branch on Not Zero	Likely
		lui	$a0, 0x17D	 # Load	Upper Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00426C:				 # CODE	XREF: sub_8C00421C+28j
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 0x42	 # Load	Immediate
		bnezl	$v0, loc_8C0042A0  # Branch on Not Zero	Likely
		srl	$a1, $s2, 8	 # Shift Right Logical
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0042A0:				 # CODE	XREF: sub_8C00421C+5Cj
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		bnezl	$v0, loc_8C0042D4  # Branch on Not Zero	Likely
		move	$a1, $s2
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0042D4:				 # CODE	XREF: sub_8C00421C+90j
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		bnezl	$v0, loc_8C004308  # Branch on Not Zero	Likely
		lw	$s0, -0x7FD0($gp)  # Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004308:				 # CODE	XREF: sub_8C00421C+C4j
		lui	$a0, 0x17D	 # Load	Upper Immediate
		srl	$a1, $s0, 16	 # Shift Right Logical
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		bnezl	$v0, loc_8C004340  # Branch on Not Zero	Likely
		srl	$a1, $s0, 8	 # Shift Right Logical
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004340:				 # CODE	XREF: sub_8C00421C+FCj
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		bnezl	$v0, loc_8C004374  # Branch on Not Zero	Likely
		move	$a1, $s0
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004374:				 # CODE	XREF: sub_8C00421C+130j
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		bnezl	$v0, loc_8C0043A8  # Branch on Not Zero	Likely
		lui	$a0, 0x17D	 # Load	Upper Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0043A8:				 # CODE	XREF: sub_8C00421C+164j
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		bnezl	$v0, loc_8C0043DC  # Branch on Not Zero	Likely
		lui	$a0, 0x478	 # Load	Upper Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0043DC:				 # CODE	XREF: sub_8C00421C+198j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x68C0	 # OR Immediate
		li	$t9, 2		 # Load	Immediate
		beql	$v0, $t9, loc_8C004410	# Branch on Equal Likely
		lui	$s1, 0x8C01	 # Load	Upper Immediate
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004410:				 # CODE	XREF: sub_8C00421C+1CCj
		blez	$s2, loc_8C0044A8  # Branch on Less Than or Equal to Zero
		addiu	$s1, 0x8A50	 # Add Immediate Unsigned

loc_8C004418:				 # CODE	XREF: sub_8C00421C+25Cj
		slti	$t9, $s2, 0x80	 # Set on Less Than Immediate
		bnezl	$t9, loc_8C004454  # Branch on Not Zero	Likely
		move	$a1, $s2
		li	$s0, 0x80	 # Load	Immediate
		subu	$s2, $s0	 # Subtract Unsigned
		li	$a1, 0x80	 # Load	Immediate
		move	$a2, $s1
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C0040E8	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t9, 0xFFFF	 # Load	Immediate
		bne	$v0, $t9, loc_8C004478	# Branch on Not	Equal
		nop
		j	loc_8C004488	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004454:				 # CODE	XREF: sub_8C00421C+200j
		move	$s0, $s2
		subu	$s2, $s2	 # Subtract Unsigned
		move	$a2, $s1
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C0040E8	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t9, 0xFFFF	 # Load	Immediate
		beql	$v0, $t9, loc_8C00448C	# Branch on Equal Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word

loc_8C004478:				 # CODE	XREF: sub_8C00421C+228j
		bgtz	$s2, loc_8C004418  # Branch on Greater Than Zero
		addu	$s1, $s0	 # Add Unsigned
		j	loc_8C0044AC	 # Jump
		lui	$a0, 0x17D	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004488:				 # CODE	XREF: sub_8C00421C+230j
		lw	$s1, 0x20+var_C($sp)  #	Load Word

loc_8C00448C:				 # CODE	XREF: sub_8C00421C+254j
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0044A8:				 # CODE	XREF: sub_8C00421C+1F4j
		lui	$a0, 0x17D	 # Load	Upper Immediate

loc_8C0044AC:				 # CODE	XREF: sub_8C00421C+264j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t9, 3		 # Load	Immediate
		beql	$v0, $t9, loc_8C0044E0	# Branch on Equal Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0044E0:				 # CODE	XREF: sub_8C00421C+29Cj
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s2, 0x20+var_8($sp)  #	Load Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # End of function sub_8C00421C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0044FC:				 # CODE	XREF: sub_8C0029C0+2A0p
		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x1C($sp)	 # Store Word
		sw	$s2, 0x18($sp)	 # Store Word
		sw	$s1, 0x14($sp)	 # Store Word
		sw	$s0, 0x10($sp)	 # Store Word
		jal	sub_8C003F58	 # Jump	And Link
		addiu	$s2, $gp, 0x805C  # Add	Immediate Unsigned
		li	$s1, 0		 # Load	Immediate
		sltiu	$t7, $s1, 5	 # Set on Less Than Immediate Unsigned
		beqzl	$t7, loc_8C0047A4  # Branch on Zero Likely
		lw	$s1, 0x14($sp)	 # Load	Word
		sltiu	$t8, $s1, 4	 # Set on Less Than Immediate Unsigned

loc_8C00452C:				 # CODE	XREF: seg000:8C004774j
		beqz	$t8, loc_8C0045E0  # Branch on Zero
		move	$v1, $s1
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x4550	 # Add Immediate Unsigned
		sll	$t7, $s1, 2	 # Shift Left Logical
		addu	$t7, $t6, $t7	 # Add Unsigned
		lw	$t9, 0($t7)	 # Load	Word
		jr	$t9		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0x4560($0)	 # Load	Word
		lw	$0, 0x4580($0)	 # Load	Word
		lw	$0, 0x45A0($0)	 # Load	Word
		lw	$0, 0x45C0($0)	 # Load	Word
		jal	sub_8C003F00	 # Jump	And Link
		li	$a0, 9		 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		beqzl	$t5, loc_8C00466C  # Branch on Zero Likely
		li	$t4, 3		 # Load	Immediate
		j	loc_8C0045FC	 # Jump
		lui	$a0, 1		 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	sub_8C003F00	 # Jump	And Link
		li	$a0, 0x14	 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		beqzl	$t5, loc_8C00466C  # Branch on Zero Likely
		li	$t4, 3		 # Load	Immediate
		j	loc_8C0045FC	 # Jump
		lui	$a0, 1		 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	sub_8C003F00	 # Jump	And Link
		li	$a0, 0x1F	 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		beqzl	$t5, loc_8C00466C  # Branch on Zero Likely
		li	$t4, 3		 # Load	Immediate
		j	loc_8C0045FC	 # Jump
		lui	$a0, 1		 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	sub_8C003F00	 # Jump	And Link
		li	$a0, 0x40	 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		beqzl	$t5, loc_8C00466C  # Branch on Zero Likely
		li	$t4, 3		 # Load	Immediate
		j	loc_8C0045FC	 # Jump
		lui	$a0, 1		 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0045E0:				 # CODE	XREF: seg000:8C00452Cj
		jal	sub_8C003F00	 # Jump	And Link
		li	$a0, 0x82	 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		beqzl	$t5, loc_8C00466C  # Branch on Zero Likely
		li	$t4, 3		 # Load	Immediate
		lui	$a0, 1		 # Load	Upper Immediate

loc_8C0045FC:				 # CODE	XREF: seg000:8C004578j
					 # seg000:8C004598j ...
		ori	$a0, 0x86A0	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		beqzl	$v0, loc_8C00465C  # Branch on Zero Likely
		addiu	$s0, 1		 # Add Immediate Unsigned
		lui	$a0, 1		 # Load	Upper Immediate
		ori	$a0, 0x86A0	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 0x40	 # Load	Immediate
		beqzl	$v0, loc_8C00465C  # Branch on Zero Likely
		addiu	$s0, 1		 # Add Immediate Unsigned
		lui	$a0, 1		 # Load	Upper Immediate
		ori	$a0, 0x86A0	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		beqzl	$v0, loc_8C00465C  # Branch on Zero Likely
		addiu	$s0, 1		 # Add Immediate Unsigned
		lui	$a0, 1		 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 2		 # Load	Immediate
		beql	$v0, $t9, loc_8C00466C	# Branch on Equal Likely
		li	$t4, 3		 # Load	Immediate
		addiu	$s0, 1		 # Add Immediate Unsigned

loc_8C00465C:				 # CODE	XREF: seg000:8C004608j
					 # seg000:8C004620j ...
		sltiu	$t5, $s0, 3	 # Set on Less Than Immediate Unsigned
		bnezl	$t5, loc_8C0045FC  # Branch on Not Zero	Likely
		lui	$a0, 1		 # Load	Upper Immediate
		li	$t4, 3		 # Load	Immediate

loc_8C00466C:				 # CODE	XREF: seg000:8C004570j
					 # seg000:8C004590j ...
		beql	$s0, $t4, loc_8C004770	# Branch on Equal Likely
		addiu	$s1, 1		 # Add Immediate Unsigned
		lui	$a0, 1		 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t3, 0x41	 # Load	Immediate
		bne	$v0, $t3, loc_8C0046B0	# Branch on Not	Equal
		move	$s0, $v0
		li	$s0, 1		 # Load	Immediate
		lui	$a0, 1		 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 3		 # Load	Immediate
		beql	$v0, $t9, loc_8C004784	# Branch on Equal Likely
		move	$v1, $s0
		j	loc_8C004770	 # Jump
		addiu	$s1, 1		 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0046B0:				 # CODE	XREF: seg000:8C004684j
		li	$t2, 0x44	 # Load	Immediate
		bnel	$s0, $t2, loc_8C004770	# Branch on Not	Equal Likely
		addiu	$s1, 1		 # Add Immediate Unsigned
		li	$s0, 2		 # Load	Immediate
		lui	$a0, 1		 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 0xFFFF	 # Load	Immediate
		beq	$v0, $t9, loc_8C00476C	# Branch on Equal
		move	$v1, $v0
		sll	$t8, $v1, 24	 # Shift Left Logical
		sw	$t8, 0($s2)	 # Store Word
		lui	$a0, 1		 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t7, 0xFFFF	 # Load	Immediate
		beq	$v0, $t7, loc_8C00476C	# Branch on Equal
		move	$v1, $v0
		lw	$t5, 0($s2)	 # Load	Word
		lui	$a0, 1		 # Load	Upper Immediate
		sll	$t6, $v1, 16	 # Shift Left Logical
		or	$t5, $t6	 # OR
		sw	$t5, 0($s2)	 # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t4, 0xFFFF	 # Load	Immediate
		beq	$v0, $t4, loc_8C00476C	# Branch on Equal
		move	$v1, $v0
		lw	$t2, 0($s2)	 # Load	Word
		lui	$a0, 1		 # Load	Upper Immediate
		sll	$t3, $v1, 8	 # Shift Left Logical
		or	$t2, $t3	 # OR
		sw	$t2, 0($s2)	 # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 0xFFFF	 # Load	Immediate
		beq	$v0, $t9, loc_8C00476C	# Branch on Equal
		move	$v1, $v0
		lw	$t8, 0($s2)	 # Load	Word
		lui	$a0, 1		 # Load	Upper Immediate
		or	$t8, $v1	 # OR
		sw	$t8, 0($s2)	 # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 3		 # Load	Immediate
		beql	$v0, $t9, loc_8C004784	# Branch on Equal Likely
		move	$v1, $s0

loc_8C00476C:				 # CODE	XREF: seg000:8C0046D0j
					 # seg000:8C0046F0j ...
		addiu	$s1, 1		 # Add Immediate Unsigned

loc_8C004770:				 # CODE	XREF: seg000:8C00466Cj
					 # seg000:8C0046A8j ...
		sltiu	$t7, $s1, 5	 # Set on Less Than Immediate Unsigned
		bnezl	$t7, loc_8C00452C  # Branch on Not Zero	Likely
		sltiu	$t8, $s1, 4	 # Set on Less Than Immediate Unsigned
		j	loc_8C0047A0	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004784:				 # CODE	XREF: seg000:8C0046A0j
					 # seg000:8C004764j
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		move	$v0, $s0
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0047A0:				 # CODE	XREF: seg000:8C00477Cj
		lw	$s1, 0x14($sp)	 # Load	Word

loc_8C0047A4:				 # CODE	XREF: seg000:8C004520j
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s2, 0x18($sp)	 # Load	Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0047C0:				 # CODE	XREF: sub_8C004A0C+2Cp

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		jal	sub_8C00421C	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		beqzl	$v0, loc_8C0047F4  # Branch on Zero Likely
		lui	$1, 0x8C01	 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0047F4:				 # CODE	XREF: sub_8C0047C0+14j
		lhu	$s0, -0x75B0($1)  # Load Halfword Unsigned
		li	$t9, 0x8000	 # Load	Immediate
		sltu	$t8, $t9, $s0	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C004810  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate

loc_8C004810:				 # CODE	XREF: sub_8C0047C0+40j
		jal	sub_8C00421C	 # Jump	And Link
		move	$a0, $s0
		beqz	$v0, loc_8C004838  # Branch on Zero
		nop
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004838:				 # CODE	XREF: sub_8C0047C0+58j
		jal	sub_8C002804	 # Jump	And Link
		move	$a0, $s0
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $v0
 # End of function sub_8C0047C0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004854:				 # CODE	XREF: sub_8C004A0C+F0p
					 # sub_8C004A0C+130p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		jal	sub_8C00421C	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		beqzl	$v0, loc_8C004890  # Branch on Zero Likely
		lui	$s1, 0x8C01	 # Load	Upper Immediate
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004890:				 # CODE	XREF: sub_8C004854+18j
		addiu	$s1, 0x8A50	 # Add Immediate Unsigned
		lhu	$s0, 0($s1)	 # Load	Halfword Unsigned
		li	$t9, 0x8000	 # Load	Immediate
		sltu	$t8, $t9, $s0	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C0048B0  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate

loc_8C0048B0:				 # CODE	XREF: sub_8C004854+4Cj
		jal	sub_8C00421C	 # Jump	And Link
		move	$a0, $s0
		beqz	$v0, loc_8C0048DC  # Branch on Zero
		nop
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0048DC:				 # CODE	XREF: sub_8C004854+64j
		jal	sub_8C002948	 # Jump	And Link
		move	$a0, $s0
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		addiu	$v1, $s1, 0xA	 # Add Immediate Unsigned
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C004854


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004900:				 # CODE	XREF: sub_8C004A0C+60p
					 # sub_8C004A0C+120p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lui	$a0, 0xBE	 # Load	Upper Immediate
		ori	$a0, 0xBC20	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnezl	$v0, loc_8C004934  # Branch on Not Zero	Likely
		lui	$a0, 1		 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004934:				 # CODE	XREF: sub_8C004900+18j
		ori	$a0, 0x86A0	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 0x40	 # Load	Immediate
		bnezl	$v0, loc_8C00495C  # Branch on Not Zero	Likely
		lui	$a0, 1		 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00495C:				 # CODE	XREF: sub_8C004900+40j
		ori	$a0, 0x86A0	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		bnezl	$v0, loc_8C004984  # Branch on Not Zero	Likely
		lui	$a0, 1		 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004984:				 # CODE	XREF: sub_8C004900+68j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 2		 # Load	Immediate
		beql	$v0, $t9, loc_8C0049AC	# Branch on Equal Likely
		lui	$a0, 1		 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0049AC:				 # CODE	XREF: sub_8C004900+90j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 0x41	 # Load	Immediate
		beql	$v0, $t9, loc_8C0049D4	# Branch on Equal Likely
		lui	$a0, 1		 # Load	Upper Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0049D4:				 # CODE	XREF: sub_8C004900+B8j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x86A0	 # OR Immediate
		li	$t9, 3		 # Load	Immediate
		beql	$v0, $t9, loc_8C0049FC	# Branch on Equal Likely
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		li	$v0, 1		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0049FC:				 # CODE	XREF: sub_8C004900+E0j
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # End of function sub_8C004900


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004A0C:				 # CODE	XREF: sub_8C0029C0+2BCp

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s2, 0x28+var_10($sp)  # Store Word
		sw	$s1, 0x28+var_14($sp)  # Store Word
		sw	$s3, 0x28+var_C($sp)  #	Store Word
		addiu	$s3, $gp, 0x8030  # Add	Immediate Unsigned
		sw	$0, 0($s3)	 # Store Word
		sw	$s0, 0x28+var_18($sp)  # Store Word
		li	$s0, 0		 # Load	Immediate
		li	$t0, 0x65	 # Load	Immediate
		sw	$t0, -0x7FB8($gp)  # Store Word

loc_8C004A38:				 # CODE	XREF: sub_8C004A0C+74j
		jal	sub_8C0047C0	 # Jump	And Link
		nop
		beqz	$v0, loc_8C004A90  # Branch on Zero
		move	$s1, $v0
		li	$t8, 1		 # Load	Immediate
		beql	$s1, $t8, loc_8C004ADC	# Branch on Equal Likely
		li	$s0, 0		 # Load	Immediate
		addiu	$s0, 1		 # Add Immediate Unsigned

loc_8C004A58:				 # CODE	XREF: sub_8C004A0C+68j
		sltiu	$t7, $s0, 4	 # Set on Less Than Immediate Unsigned
		bnez	$t7, loc_8C004A6C  # Branch on Not Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 6		 # Load	Immediate

loc_8C004A6C:				 # CODE	XREF: sub_8C004A0C+50j
		jal	sub_8C004900	 # Jump	And Link
		nop
		bnezl	$v0, loc_8C004A58  # Branch on Not Zero	Likely
		addiu	$s0, 1		 # Add Immediate Unsigned
		li	$t6, 1		 # Load	Immediate
		bne	$s1, $t6, loc_8C004A38	# Branch on Not	Equal
		sw	$0, 0($s3)	 # Store Word
		j	loc_8C004ADC	 # Jump
		li	$s0, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004A90:				 # CODE	XREF: sub_8C004A0C+34j
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 0x43	 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004ADC:				 # CODE	XREF: sub_8C004A0C+40j
					 # sub_8C004A0C+7Cj
		lw	$a1, 0($s3)	 # Load	Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 0		 # Load	Immediate
		lhu	$s1, -0x7FC2($gp)  # Load Halfword Unsigned
		beqzl	$s1, loc_8C004B70  # Branch on Zero Likely
		lui	$a0, 0x17D	 # Load	Upper Immediate
		lw	$s2, 0($s3)	 # Load	Word

loc_8C004AFC:				 # CODE	XREF: sub_8C004A0C+158j
		jal	sub_8C004854	 # Jump	And Link
		nop
		li	$t4, 0xFFFFFFFF	 # Load	Immediate
		bne	$v0, $t4, loc_8C004B50	# Branch on Not	Equal
		move	$v1, $v0

loc_8C004B10:				 # CODE	XREF: sub_8C004A0C+13Cj
		sw	$s2, 0($s3)	 # Store Word
		addiu	$s0, 1		 # Add Immediate Unsigned

loc_8C004B18:				 # CODE	XREF: sub_8C004A0C+128j
		sltiu	$t5, $s0, 4	 # Set on Less Than Immediate Unsigned
		bnez	$t5, loc_8C004B2C  # Branch on Not Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 6		 # Load	Immediate

loc_8C004B2C:				 # CODE	XREF: sub_8C004A0C+110j
		jal	sub_8C004900	 # Jump	And Link
		nop
		bnezl	$v0, loc_8C004B18  # Branch on Not Zero	Likely
		addiu	$s0, 1		 # Add Immediate Unsigned
		jal	sub_8C004854	 # Jump	And Link
		nop
		li	$t4, 0xFFFFFFFF	 # Load	Immediate
		beq	$v0, $t4, loc_8C004B10	# Branch on Equal
		move	$v1, $v0

loc_8C004B50:				 # CODE	XREF: sub_8C004A0C+FCj
		li	$s0, 0		 # Load	Immediate
		jal	sub_8C002558	 # Jump	And Link
		move	$a0, $v1
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		andi	$s1, 0xFFFF	 # AND Immediate
		bnezl	$s1, loc_8C004AFC  # Branch on Not Zero	Likely
		lw	$s2, 0($s3)	 # Load	Word
		lui	$a0, 0x17D	 # Load	Upper Immediate

loc_8C004B70:				 # CODE	XREF: sub_8C004A0C+E4j
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 0x43	 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		jal	sub_8C0022B4	 # Jump	And Link
		nop
		lw	$s3, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		lw	$s1, 0x28+var_14($sp)  # Load Word
		lw	$s2, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C004A0C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004BC0:				 # CODE	XREF: sub_8C004F3C+24p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		addiu	$s1, $gp, 0x809C  # Add	Immediate Unsigned
		lui	$a0, 0x478	 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x68C0	 # OR Immediate
		li	$t9, 2		 # Load	Immediate
		beql	$v0, $t9, loc_8C004BF4	# Branch on Equal Likely
		lui	$a0, 0x17D	 # Load	Upper Immediate
		j	loc_8C004D28	 # Jump
		move	$v1, $v0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004BF4:				 # CODE	XREF: sub_8C004BC0+24j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		move	$v1, $v0
		slti	$t9, $v0, 0x42	 # Set on Less Than Immediate
		bnez	$t9, loc_8C004D28  # Branch on Not Zero
		move	$s0, $v0
		li	$t8, 0x42	 # Load	Immediate
		beql	$v1, $t8, loc_8C004C2C	# Branch on Equal Likely
		lui	$a0, 0x17D	 # Load	Upper Immediate
		li	$t7, 0x43	 # Load	Immediate
		bne	$v1, $t7, loc_8C004D28	# Branch on Not	Equal
		nop
		j	loc_8C004CF8	 # Jump
		lui	$a0, 0x17D	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004C2C:				 # CODE	XREF: sub_8C004BC0+50j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t6, 0xFFFF	 # Load	Immediate
		beq	$v0, $t6, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		lui	$a0, 0x17D	 # Load	Upper Immediate
		sw	$v1, -0x7F6C($gp)  # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t5, 0xFFFF	 # Load	Immediate
		beq	$v0, $t5, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		sll	$t4, $v1, 8	 # Shift Left Logical
		sw	$t4, -0x7F68($gp)  # Store Word
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t3, 0xFFFF	 # Load	Immediate
		beq	$v0, $t3, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		lw	$t2, -0x7F68($gp)  # Load Word
		lui	$a0, 0x17D	 # Load	Upper Immediate
		or	$t2, $v1	 # OR
		sw	$t2, -0x7F68($gp)  # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t9, 0xFFFF	 # Load	Immediate
		beq	$v0, $t9, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		sll	$t8, $v1, 16	 # Shift Left Logical
		sw	$t8, 0($s1)	 # Store Word
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t7, 0xFFFF	 # Load	Immediate
		beq	$v0, $t7, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		lw	$t5, 0($s1)	 # Load	Word
		lui	$a0, 0x17D	 # Load	Upper Immediate
		sll	$t6, $v1, 8	 # Shift Left Logical
		or	$t5, $t6	 # OR
		sw	$t5, 0($s1)	 # Store Word
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t4, 0xFFFF	 # Load	Immediate
		beq	$v0, $t4, loc_8C004D28	# Branch on Equal
		move	$v1, $v0
		lw	$t3, 0($s1)	 # Load	Word
		or	$t3, $v1	 # OR
		sw	$t3, 0($s1)	 # Store Word
		lui	$a0, 0x17D	 # Load	Upper Immediate

loc_8C004CF8:				 # CODE	XREF: sub_8C004BC0+64j
		jal	sub_8C004040	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		li	$t9, 3		 # Load	Immediate
		bne	$v0, $t9, loc_8C004D28	# Branch on Not	Equal
		move	$v1, $v0
		move	$v1, $s0
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		move	$v0, $s0
		lw	$s0, 0x20+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004D28:				 # CODE	XREF: sub_8C004BC0+2Cj
					 # sub_8C004BC0+44j ...
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 6		 # Load	Immediate
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C004BC0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004D48:				 # CODE	XREF: sub_8C004F3C+58p

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		lw	$v1, -0x7F6C($gp)  # Load Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		lw	$s1, -0x7F68($gp)  # Load Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		addiu	$t9, $gp, 0x809C  # Add	Immediate Unsigned
		bltz	$v1, loc_8C004E98  # Branch on Less Than Zero
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		beqzl	$v1, loc_8C004D90  # Branch on Zero Likely
		lw	$t5, 0($t9)	 # Load	Word
		li	$t7, 1		 # Load	Immediate
		beql	$v1, $t7, loc_8C004DDC	# Branch on Equal Likely
		lui	$1, 0x8C18	 # Load	Upper Immediate
		li	$t6, 3		 # Load	Immediate
		bne	$v1, $t6, loc_8C004E98	# Branch on Not	Equal
		nop
		j	loc_8C004E3C	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004D90:				 # CODE	XREF: sub_8C004D48+20j
		lui	$t2, 0xBFC1	 # Load	Upper Immediate
		lui	$t4, 0xBFC0	 # Load	Upper Immediate
		addu	$s0, $t5, $t4	 # Add Unsigned
		addu	$t3, $s0, $s1	 # Add Unsigned
		sltu	$t9, $t2, $t3	 # Set on Less Than Unsigned
		beqz	$t9, loc_8C004EA0  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 5		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnez	$v0, loc_8C004EFC  # Branch on Not Zero
		nop
		j	loc_8C004F28	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004DDC:				 # CODE	XREF: sub_8C004D48+2Cj
		lw	$t8, 0($t9)	 # Load	Word
		lw	$t4, -0x75AC($1)  # Load Word
		lui	$t7, 0xBFC1	 # Load	Upper Immediate
		lui	$t3, 0xBFC1	 # Load	Upper Immediate
		lui	$t9, 1		 # Load	Upper Immediate
		addu	$s0, $t8, $t7	 # Add Unsigned
		addu	$t6, $s0, $s1	 # Add Unsigned
		addu	$t5, $t4, $t3	 # Add Unsigned
		subu	$t2, $t5, $t9	 # Subtract Unsigned
		sltu	$t8, $t2, $t6	 # Set on Less Than Unsigned
		beqz	$t8, loc_8C004EA0  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 5		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnez	$v0, loc_8C004EFC  # Branch on Not Zero
		nop
		j	loc_8C004F28	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004E3C:				 # CODE	XREF: sub_8C004D48+40j
		lw	$t7, 0($t9)	 # Load	Word
		lui	$1, 0x8C18	 # Load	Upper Immediate
		lw	$t3, -0x757C($1)  # Load Word
		lui	$t6, 0xB300	 # Load	Upper Immediate
		lui	$t2, 0xB300	 # Load	Upper Immediate
		addu	$s0, $t7, $t6	 # Add Unsigned
		addu	$t5, $s0, $s1	 # Add Unsigned
		addu	$t4, $t3, $t2	 # Add Unsigned
		sltu	$t9, $t4, $t5	 # Set on Less Than Unsigned
		beqz	$t9, loc_8C004EA0  # Branch on Zero
		nop
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 7		 # Load	Immediate
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 5		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnez	$v0, loc_8C004EFC  # Branch on Not Zero
		nop
		j	loc_8C004F28	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004E98:				 # CODE	XREF: sub_8C004D48+18j
					 # sub_8C004D48+38j
		jal	sub_8C000D6C	 # Jump	And Link
		li	$a0, 3		 # Load	Immediate

loc_8C004EA0:				 # CODE	XREF: sub_8C004D48+5Cj
					 # sub_8C004D48+BCj ...
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 5		 # Load	Immediate
		lui	$a0, 0x17D	 # Load	Upper Immediate
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 2		 # Load	Immediate
		bnez	$v0, loc_8C004EFC  # Branch on Not Zero
		nop
		j	loc_8C004F28	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004EC8:				 # CODE	XREF: sub_8C004D48+1B4j
		lw	$t8, -0x7FD0($gp)  # Load Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		addiu	$a1, $t8, 1	 # Add Immediate Unsigned
		sw	$a1, -0x7FD0($gp)  # Store Word
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a0, 2		 # Load	Immediate
		lbu	$a1, 0($s0)	 # Load	Byte Unsigned
		addiu	$s0, 1		 # Add Immediate Unsigned
		lui	$a0, 0x17D	 # Load	Upper Immediate
		jal	sub_8C003F94	 # Jump	And Link
		ori	$a0, 0x7840	 # OR Immediate
		beqz	$v0, loc_8C004F0C  # Branch on Zero
		nop

loc_8C004EFC:				 # CODE	XREF: sub_8C004D48+84j
					 # sub_8C004D48+E4j ...
		bnez	$s1, loc_8C004EC8  # Branch on Not Zero
		addiu	$s1, 0xFFFF	 # Add Immediate Unsigned
		j	loc_8C004F14	 # Jump
		lui	$a0, 0x17D	 # Load	Upper Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004F0C:				 # CODE	XREF: sub_8C004D48+1ACj
		j	loc_8C004F28	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004F14:				 # CODE	XREF: sub_8C004D48+1BCj
		ori	$a0, 0x7840	 # OR Immediate
		jal	sub_8C003F94	 # Jump	And Link
		li	$a1, 3		 # Load	Immediate
		beqzl	$v0, loc_8C004F2C  # Branch on Zero Likely
		lw	$s1, 0x20+var_C($sp)  #	Load Word

loc_8C004F28:				 # CODE	XREF: sub_8C004D48+8Cj
					 # sub_8C004D48+ECj ...
		lw	$s1, 0x20+var_C($sp)  #	Load Word

loc_8C004F2C:				 # CODE	XREF: sub_8C004D48+1D8j
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # End of function sub_8C004D48


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004F3C:				 # CODE	XREF: sub_8C0029C0+2ECp

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$0, -0x7FD0($gp)  # Store Word
		li	$t0, 0x65	 # Load	Immediate
		sw	$t0, -0x7FB8($gp)  # Store Word
		lw	$a2, -0x7FA4($gp)  # Load Word
		li	$a0, 2		 # Load	Immediate
		jal	sub_8C000B8C	 # Jump	And Link
		li	$a1, 0		 # Load	Immediate

loc_8C004F60:				 # CODE	XREF: sub_8C004F3C+30j
					 # sub_8C004F3C+48j ...
		jal	sub_8C004BC0	 # Jump	And Link
		nop
		slti	$t9, $v0, 0x42	 # Set on Less Than Immediate
		bnez	$t9, loc_8C004F60  # Branch on Not Zero
		move	$v1, $v0
		li	$t9, 0x42	 # Load	Immediate
		beq	$v0, $t9, loc_8C004F94	# Branch on Equal
		nop
		li	$t9, 0x43	 # Load	Immediate
		bne	$v1, $t9, loc_8C004F60	# Branch on Not	Equal
		nop
		j	loc_8C004FA4	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004F94:				 # CODE	XREF: sub_8C004F3C+3Cj
		jal	sub_8C004D48	 # Jump	And Link
		nop
		j	loc_8C004F60	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C004FA4:				 # CODE	XREF: sub_8C004F3C+50j
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C004F3C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C004FB0:				 # CODE	XREF: sub_8C0017F8+30p
					 # sub_8C0017F8+40p ...
		li	$v0, 0xFFFFFFFF	 # Load	Immediate
		lui	$t0, 0x8C00	 # Load	Upper Immediate
		addiu	$t0, 0x515C	 # Add Immediate Unsigned

loc_8C004FBC:				 # CODE	XREF: sub_8C004FB0+44j
		beqz	$a1, locret_8C004FFC  #	Branch on Zero
		nop
		sll	$t1, $v0, 8	 # Shift Left Logical
		srl	$v0, 24		 # Shift Right Logical
		lbu	$t2, 0($a0)	 # Load	Byte Unsigned
		addiu	$a0, 1		 # Add Immediate Unsigned
		xor	$v0, $t2	 # Exclusive OR
		andi	$v0, 0xFF	 # AND Immediate
		sll	$v0, 2		 # Shift Left Logical
		addu	$t3, $t0, $v0	 # Add Unsigned
		lw	$v0, 0($t3)	 # Load	Word
		nop
		xor	$v0, $t1	 # Exclusive OR
		addiu	$a1, 0xFFFF	 # Add Immediate Unsigned
		b	loc_8C004FBC	 # Branch Always
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C004FFC:			 # CODE	XREF: sub_8C004FB0+Cj
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C004FB0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C005004:				 # CODE	XREF: sub_8C0016B4+A4p
					 # sub_8C0018BC+24p ...
		andi	$t9, $a1, 0xFFFF  # AND	Immediate
		addiu	$a1, $t9, 0xFFFF  # Add	Immediate Unsigned
		andi	$a1, 0xFFFF	 # AND Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		addiu	$t2, 0x555C	 # Add Immediate Unsigned
		beqz	$t9, locret_8C005058  #	Branch on Zero
		li	$v1, 0		 # Load	Immediate

loc_8C005020:				 # CODE	XREF: sub_8C005004+4Cj
		lbu	$t7, 0($a0)	 # Load	Byte Unsigned
		srl	$t9, $v1, 8	 # Shift Right Logical
		xor	$t8, $v1, $t7	 # Exclusive OR
		andi	$t6, $t8, 0xFF	 # AND Immediate
		sll	$t5, $t6, 1	 # Shift Left Logical
		addu	$t4, $t2, $t5	 # Add Unsigned
		lhu	$t3, 0($t4)	 # Load	Halfword Unsigned
		addiu	$a0, 1		 # Add Immediate Unsigned
		xor	$v1, $t9, $t3	 # Exclusive OR
		move	$t9, $a1
		addiu	$a1, 0xFFFF	 # Add Immediate Unsigned
		andi	$a1, 0xFFFF	 # AND Immediate
		bnez	$t9, loc_8C005020  # Branch on Not Zero
		andi	$v1, 0xFFFF	 # AND Immediate

locret_8C005058:			 # CODE	XREF: sub_8C005004+14j
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C005004


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C005060:				 # CODE	XREF: sub_8C0024A0+48p
					 # sub_8C0024FC+48p ...
		move	$v0, $a0

loc_8C005064:				 # CODE	XREF: sub_8C005060+1Cj
		beqz	$a2, locret_8C005084  #	Branch on Zero
		lbu	$t0, 0($a1)	 # Load	Byte Unsigned
		addiu	$a1, 1		 # Add Immediate Unsigned
		sb	$t0, 0($a0)	 # Store Byte
		addiu	$a0, 1		 # Add Immediate Unsigned
		addiu	$a2, 0xFFFF	 # Add Immediate Unsigned
		b	loc_8C005064	 # Branch Always
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C005084:			 # CODE	XREF: sub_8C005060+4j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C005060


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00508C:				 # CODE	XREF: sub_8C0016B4+4Cp
		beqz	$a2, locret_8C0050AC  #	Branch on Zero
		nop

loc_8C005094:				 # CODE	XREF: sub_8C00508C+18j
		lw	$t7, 0($a1)	 # Load	Word
		addiu	$a2, 0xFFFC	 # Add Immediate Unsigned
		addiu	$a0, 4		 # Add Immediate Unsigned
		sw	$t7, -4($a0)	 # Store Word
		bnez	$a2, loc_8C005094  # Branch on Not Zero
		addiu	$a1, 4		 # Add Immediate Unsigned

locret_8C0050AC:			 # CODE	XREF: sub_8C00508Cj
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C00508C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0050B4:				 # CODE	XREF: sub_8C0029C0+50p
		move	$v0, $a0

loc_8C0050B8:				 # CODE	XREF: sub_8C0050B4+18j
		beqz	$a2, locret_8C0050D4  #	Branch on Zero
		nop
		sb	$a1, 0($a0)	 # Store Byte
		addiu	$a0, 1		 # Add Immediate Unsigned
		addiu	$a2, 0xFFFF	 # Add Immediate Unsigned
		b	loc_8C0050B8	 # Branch Always
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C0050D4:			 # CODE	XREF: sub_8C0050B4+4j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C0050B4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0050DC:				 # CODE	XREF: sub_8C002804+5Cp
					 # sub_8C002804+68p ...
		lbu	$v0, 0($a0)	 # Load	Byte Unsigned
		lbu	$t0, 1($a0)	 # Load	Byte Unsigned
		lbu	$t1, 2($a0)	 # Load	Byte Unsigned
		lbu	$t2, 3($a0)	 # Load	Byte Unsigned
		sll	$v0, 24		 # Shift Left Logical
		sll	$t0, 16		 # Shift Left Logical
		sll	$t1, 8		 # Shift Left Logical
		or	$v0, $t0	 # OR
		or	$v0, $t1	 # OR
		or	$v0, $t2	 # OR
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C0050DC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00510C:				 # CODE	XREF: sub_8C002804+44p
					 # sub_8C002804+50p
		lbu	$v0, 0($a0)	 # Load	Byte Unsigned
		lbu	$t0, 1($a0)	 # Load	Byte Unsigned
		sll	$v0, 8		 # Shift Left Logical
		or	$v0, $t0	 # OR
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C00510C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lbu	$v0, 0($a0)	 # Load	Byte Unsigned
		lbu	$t0, 1($a0)	 # Load	Byte Unsigned
		andi	$v0, 0x1F	 # AND Immediate
		sll	$v0, 8		 # Shift Left Logical
		or	$v0, $t0	 # OR
		jr	$ra		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lbu	$v0, 0($a0)	 # Load	Byte Unsigned
		lbu	$t0, 1($a0)	 # Load	Byte Unsigned
		andi	$v0, 0xF	 # AND Immediate
		sll	$v0, 8		 # Shift Left Logical
		or	$v0, $t0	 # OR
		jr	$ra		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		bgez	$a2, 0x8C00C840	 # Branch on Greater Than or Equal to Zero
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.word 0x9823B6E
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jal	0x850C9B64	 # Jump	And Link
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x13  #  
		.byte	 4  #  
		.byte 0x76  # v
		.byte 0xDC  # Ü
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		bne	$fp, $a1, 0x8C01FF20  #	Branch on Not Equal
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x1A  #  
		.byte 0x86  # †
		.byte 0x4D  # M
		.byte 0xB2  # ²
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		bgtz	$s2, 0x8C019190	 # Branch on Greater Than Zero
		addiu	$t0, $s0, 0xEDB8  # Add	Immediate Unsigned
		addi	$t1, $s6, 0xF00F  # Add	Immediate
		sltiu	$t2, $gp, 0xD6D6  # Set	on Less	Than Immediate Unsigned
		slti	$t3, $k0, 0xCB61  # Set	on Less	Than Immediate
		ori	$t4, $t0, 0x9B64  # OR Immediate
		andi	$t5, $t6, 0x86D3  # AND	Immediate
		lui	$t6, 0xA00A	 # Load	Upper Immediate
		xori	$t7, $v0, 0xBDBD  # Exclusive OR Immediate
		nmadd.s	$f13, $f0, $f27, $f17  # Floating-Pont Negative	Multiply Add
		ctc2	$s0, $v24[0]	 # Move	Control	to Coprocessor 2
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x45  # E
		.byte 0x93  # “
		.byte 0xE0  # à
		.byte 0x1E  #  
		.byte 0x41  # A
		.byte 0x52  # R
		.byte 0xFD  # ı
		.byte 0xA9  # ©
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		bgtzl	$t8, 0x8BFF0860	 # Branch on Greater Than Zero Likely
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x5B  # [
		.byte 0xD4  # Ô
		.byte 0xB0  # °
		.byte 0x1B  #  
		.byte 0x56  # V
		.byte 0x97  # —
		.byte 0x96  # –
		.byte 0xC2  # Â
		.byte 0x52  # R
		.byte 0x56  # V
		.byte 0x8B  # ‹
		.byte 0x75  # u
		.byte 0x6A  # j
		.byte 0x19  #  
		.byte 0x36  # 6
		.byte 0xC8  # È
		.byte 0x6E  # n
		.byte 0xD8  # Ø
		.byte 0x2B  # +
		.byte 0x7F  # 
		.byte 0x63  # c
		.byte 0x9B  # ›
		.byte  0xD  #  
		.byte 0xA6  # ¦
		.byte 0x67  # g
		.byte 0x5A  # Z
		.byte 0x10  #  
		.byte 0x11  #  
		.byte 0x79  # y
		.byte 0x1D  #  
		.byte 0x40  # @
		.byte 0x14  #  
		.byte 0x7D  # }
		.byte 0xDC  # Ü
		.byte 0x5D  # ]
		.byte 0xA3  # £
		.byte 0x70  # p
		.byte 0x9F  # Ÿ
		.byte 0x7B  # {
		.byte 0x7A  # z
		.byte 0x74  # t
		.byte 0x5E  # ^
		.byte 0x66  # f
		.byte 0xCD  # Í
		.byte 0x98  # ˜
		.byte 0x23  # #
		.byte 0xB6  # ¶
		.byte 0xE0  # à
		.byte 0x9C  # œ
		.byte 0xE2  # â
		.byte 0xAB  # «
		.byte 0x57  # W
		.byte 0x91  # ‘
		.byte 0xA1  # ¡
		.byte 0x8D  # 
		.byte 0x8E  # 
		.byte 0x95  # •
		.byte 0x60  # `
		.byte 0x90  # 
		.byte 0x39  # 9
		.byte 0x8B  # ‹
		.byte 0x27  # '
		.byte 0xC0  # À
		.byte 0x3C  # <
		.byte 0x8F  # 
		.byte 0xE6  # æ
		.byte 0xDD  # İ
		.byte 0x8B  # ‹
		.byte 0x82  # ‚
		.byte 0xA5  # ¥
		.byte 0xFB  # û
		.byte 0x52  # R
		.byte 0x86  # †
		.byte 0x64  # d
		.byte 0xE6  # æ
		.byte 0xE5  # å
		.byte 0xBE  # ¾
		.byte 0x2B  # +
		.byte 0x5B  # [
		.byte 0x58  # X
		.byte 0xBA  # º
		.byte 0xEA  # ê
		.byte 0x46  # F
		.byte 0xEF  # ï
		.byte 0xB7  # ·
		.byte 0xA9  # ©
		.byte 0x60  # `
		.byte 0x36  # 6
		.byte 0xB3  # ³
		.byte 0x68  # h
		.byte 0x7D  # }
		.byte 0x81  # 
		.byte 0xAD  # ­
		.byte 0x2F  # /
		.byte 0x2D  # -
		.byte 0x84  # „
		.byte 0xA9  # ©
		.byte 0xEE  # î
		.byte 0x30  # 0
		.byte 0x33  # 3
		.byte 0xA4  # ¤
		.byte 0xAD  # ­
		.byte 0x16  #  
		.byte 0xEA  # ê
		.byte 0xA0  #  
		.byte 0x6C  # l
		.byte  0xB  #  
		.byte 0x5D  # ]
		.byte 0xD4  # Ô
		.byte 0x32  # 2
		.byte 0x6D  # m
		.byte 0x90  # 
		.byte 0xD0  # Ğ
		.byte 0xF3  # ó
		.byte 0x70  # p
		.byte 0x27  # '
		.byte 0xDD  # İ
		.byte 0xB0  # °
		.byte 0x56  # V
		.byte 0xFE  # ş
		.byte 0xD9  # Ù
		.byte 0x71  # q
		.byte 0x4B  # K
		.byte 0x49  # I
		.byte 0xC7  # Ç
		.byte 0x36  # 6
		.byte 0x1B  #  
		.byte 0x4C  # L
		.byte 0xC3  # Ã
		.byte 0xF7  # ÷
		.byte	 6  #  
		.byte 0xFB  # û
		.byte 0xCE  # Î
		.byte 0xB4  # ´
		.byte 0x20  #  
		.byte 0x22  # "
		.byte 0xCA  # Ê
		.byte 0x75  # u
		.byte 0x3D  # =
		.byte 0x95  # •
		.byte 0xF2  # ò
		.byte 0x3A  # :
		.byte 0x80  # €
		.byte 0x28  # (
		.byte 0xF6  # ö
		.byte 0xFB  # û
		.byte 0x9D  # 
		.byte 0x9F  # Ÿ
		.byte 0xFB  # û
		.byte 0xB8  # ¸
		.byte 0xBB  # »
		.byte 0x46  # F
		.byte 0xFF  #  
		.byte 0x79  # y
		.byte 0xA6  # ¦
		.byte 0xF1  # ñ
		.byte 0xE1  # á
		.byte 0x3E  # >
		.byte 0xF6  # ö
		.byte 0xF4  # ô
		.byte 0xE5  # å
		.byte 0xFF  #  
		.byte 0xEB  # ë
		.byte 0x43  # C
		.byte 0xE8  # è
		.byte 0xBC  # ¼
		.byte 0xCD  # Í
		.byte 0x9A  # š
		.byte 0xEC  # ì
		.byte 0x7D  # }
		.byte 0xD0  # Ğ
		.byte 0x2D  # -
		.byte 0x34  # 4
		.byte 0x86  # †
		.byte 0x70  # p
		.byte 0x77  # w
		.byte 0x30  # 0
		.byte 0x47  # G
		.byte 0x6D  # m
		.byte 0xC0  # À
		.byte 0x3D  # =
		.byte	 4  #  
		.byte 0x4B  # K
		.byte 0x19  #  
		.byte 0x39  # 9
		.byte 0xC5  # Å
		.byte 0x56  # V
		.byte 0xAE  # ®
		.byte 0x27  # '
		.byte 0x82  # ‚
		.byte	 6  #  
		.byte 0xAB  # «
		.byte 0x23  # #
		.byte 0x43  # C
		.byte 0x1B  #  
		.byte 0x1C  #  
		.byte 0x2E  # .
		.byte	 0  #  
		.byte 0x3D  # =
		.byte 0xC5  # Å
		.byte 0x2A  # *
		.byte 0xC1  # Á
		.byte 0x20  #  
		.byte 0x72  # r
		.byte 0x12  #  
		.byte 0x8E  # 
		.byte 0x9D  # 
		.byte 0xCF  # Ï
		.byte 0x16  #  
		.byte 0x4F  # O
		.byte 0x80  # €
		.byte 0x78  # x
		.byte 0x1B  #  
		.byte  0xC  #  
		.byte 0xA6  # ¦
		.byte 0xA1  # ¡
		.byte 0x1F  #  
		.byte 0xCD  # Í
		.byte 0xBB  # »
		.byte 0x16  #  
		.byte	 1  #  
		.byte 0x8A  # Š
		.byte 0xEB  # ë
		.byte 0x13  #  
		.byte	 5  #  
		.byte 0x4B  # K
		.byte 0xF6  # ö
		.byte 0xA4  # ¤
		.byte	 8  #  
		.byte	 8  #  
		.byte 0xD0  # Ğ
		.byte 0x7D  # }
		.byte  0xC  #  
		.byte 0xC9  # É
		.byte 0xCD  # Í
		.byte 0xCA  # Ê
		.byte 0x78  # x
		.byte 0x97  # —
		.byte 0xAB  # «
		.byte	 7  #  
		.byte 0x7C  # |
		.byte 0x56  # V
		.byte 0xB6  # ¶
		.byte 0xB0  # °
		.byte 0x71  # q
		.byte 0x15  #  
		.byte 0x90  # 
		.byte 0x69  # i
		.byte 0x75  # u
		.byte 0xD4  # Ô
		.byte 0x8D  # 
		.byte 0xDE  # Ş
		.byte 0x6B  # k
		.byte 0x93  # “
		.byte 0xDD  # İ
		.byte 0xDB  # Û
		.byte 0x6F  # o
		.byte 0x52  # R
		.byte 0xC0  # À
		.byte 0x6C  # l
		.byte 0x62  # b
		.byte 0x11  #  
		.byte 0xE6  # æ
		.byte 0xB5  # µ
		.byte 0x66  # f
		.byte 0xD0  # Ğ
		.byte 0xFB  # û
		.byte	 2  #  
		.byte 0x5E  # ^
		.byte 0x9F  # Ÿ
		.byte 0x46  # F
		.byte 0xBF  # ¿
		.byte 0x5A  # Z
		.byte 0x5E  # ^
		.byte 0x5B  # [
		.byte	 8  #  
		.byte 0x57  # W
		.byte 0x1D  #  
		.byte 0x7D  # }
		.byte 0xD1  # Ñ
		.byte 0x53  # S
		.byte 0xDC  # Ü
		.byte 0x60  # `
		.byte 0x66  # f
		.byte 0x4D  # M
		.byte 0x9B  # ›
		.byte 0x30  # 0
		.byte 0x63  # c
		.byte 0x49  # I
		.byte 0x5A  # Z
		.byte 0x2D  # -
		.byte 0xD4  # Ô
		.byte 0x44  # D
		.byte 0x19  #  
		.byte  0xB  #  
		.byte  0xD  #  
		.byte 0x40  # @
		.byte 0xD8  # Ø
		.byte 0x16  #  
		.byte 0xBA  # º
		.byte 0xAC  # ¬
		.byte 0xA5  # ¥
		.byte 0xC6  # Æ
		.byte 0x97  # —
		.byte 0xA8  # ¨
		.byte 0x64  # d
		.byte 0xDB  # Û
		.byte 0x20  #  
		.byte 0xA5  # ¥
		.byte 0x27  # '
		.byte 0xFD  # ı
		.byte 0xF9  # ù
		.byte 0xA1  # ¡
		.byte 0xE6  # æ
		.byte 0xE0  # à
		.byte 0x4E  # N
		.byte 0xBF  # ¿
		.byte 0xA1  # ¡
		.byte 0xB0  # °
		.byte 0x4B  # K
		.byte 0xBB  # »
		.byte 0x60  # `
		.byte 0xAD  # ­
		.byte 0xFC  # ü
		.byte 0xB6  # ¶
		.byte 0x23  # #
		.byte 0x8B  # ‹
		.byte 0x25  # %
		.byte 0xB2  # ²
		.byte 0xE2  # â
		.byte 0x96  # –
		.byte 0x92  # ’
		.byte 0x8A  # Š
		.byte 0xAD  # ­
		.byte 0x2B  # +
		.byte 0x2F  # /
		.byte 0x8E  # 
		.byte 0x6C  # l
		.byte 0x36  # 6
		.byte 0x98  # ˜
		.byte 0x83  # ƒ
		.byte 0x2F  # /
		.byte 0x10  #  
		.byte 0x41  # A
		.byte 0x87  # ‡
		.byte 0xEE  # î
		.byte  0xD  #  
		.byte 0xF6  # ö
		.byte 0x99  # ™
		.byte 0xA9  # ©
		.byte 0x5D  # ]
		.byte 0xF3  # ó
		.byte 0x9D  # 
		.byte 0x68  # h
		.byte 0x40  # @
		.byte 0x44  # D
		.byte 0x90  # 
		.byte 0x2B  # +
		.byte 0x66  # f
		.byte 0x9D  # 
		.byte 0x94  # ”
		.byte 0xEA  # ê
		.byte 0x7B  # {
		.byte 0x2A  # *
		.byte 0xE0  # à
		.byte 0xB4  # ´
		.byte 0x1D  #  
		.byte 0xE7  # ç
		.byte 0xE4  # ä
		.byte 0x75  # u
		.byte	 0  #  
		.byte 0x50  # P
		.byte 0xE9  # é
		.byte 0x36  # 6
		.byte 0x26  # &
		.byte 0x89  # ‰
		.byte 0xED  # í
		.byte 0xF7  # ÷
		.byte 0x3B  # ;
		.byte 0x3E  # >
		.byte 0xF3  # ó
		.byte 0xB0  # °
		.byte 0x6B  # k
		.byte 0x3B  # ;
		.byte 0xF7  # ÷
		.byte 0x71  # q
		.byte 0x76  # v
		.byte 0x8C  # Œ
		.byte 0xFA  # ú
		.byte 0x32  # 2
		.byte 0x50  # P
		.byte 0x55  # U
		.byte 0xFE  # ş
		.byte 0xF3  # ó
		.byte 0x4D  # M
		.byte 0xE2  # â
		.byte 0xC6  # Æ
		.byte 0xBC  # ¼
		.byte 0xF0  # ğ
		.byte 0x5F  # _
		.byte 0xC2  # Â
		.byte 0x7D  # }
		.byte 0xED  # í
		.byte 0xE8  # è
		.byte 0xCF  # Ï
		.byte 0x3E  # >
		.byte 0xCB  # Ë
		.byte 0x31  # 1
		.byte 0xCB  # Ë
		.byte 0xFF  #  
		.byte 0xD6  # Ö
		.byte 0x86  # †
		.byte 0xD5  # Õ
		.byte 0xB8  # ¸
		.byte 0x86  # †
		.byte 0x83  # ƒ
		.byte 0xD1  # Ñ
		.byte 0x79  # y
		.byte 0x9B  # ›
		.byte 0x34  # 4
		.byte 0xDC  # Ü
		.byte 0x3A  # :
		.byte 0xBD  # ½
		.byte 0xED  # í
		.byte 0xD8  # Ø
		.byte 0xFB  # û
		.byte 0xA0  #  
		.byte 0x5A  # Z
		.byte 0x69  # i
		.byte  0xC  #  
		.byte 0xE0  # à
		.byte 0xEE  # î
		.byte 0x6D  # m
		.byte 0xCD  # Í
		.byte 0xFD  # ı
		.byte 0x59  # Y
		.byte 0x60  # `
		.byte 0x8E  # 
		.byte 0xDB  # Û
		.byte 0x80  # €
		.byte 0x64  # d
		.byte 0x4F  # O
		.byte 0xC6  # Æ
		.byte 0x37  # 7
		.byte 0x7A  # z
		.byte	 8  #  
		.byte 0x96  # –
		.byte 0x32  # 2
		.byte 0x7E  # ~
		.byte 0xC9  # É
		.byte 0x8B  # ‹
		.byte 0x85  # …
		.byte 0x73  # s
		.byte 0x8A  # Š
		.byte 0xAD  # ­
		.byte 0x5C  # \
		.byte 0x77  # w
		.byte 0x4B  # K
		.byte 0xB0  # °
		.byte 0xEB  # ë
		.byte 0x4F  # O
		.byte	 4  #  
		.byte  0xD  #  
		.byte 0x56  # V
		.byte 0x4B  # K
		.byte 0xC5  # Å
		.byte 0x10  #  
		.byte 0xE1  # á
		.byte 0x46  # F
		.byte 0x86  # †
		.byte 0x36  # 6
		.byte 0x38  # 8
		.byte 0x42  # B
		.byte 0x47  # G
		.byte 0x2B  # +
		.byte 0x8F  # 
		.byte 0x5C  # \
		.byte	 0  #  
		.byte 0x7B  # {
		.byte 0x8A  # Š
		.byte 0x58  # X
		.byte 0xC1  # Á
		.byte 0x66  # f
		.byte 0x3D  # =
		.byte 0x55  # U
		.byte 0x82  # ‚
		.byte 0x40  # @
		.byte 0xE4  # ä
		.byte 0x51  # Q
		.byte 0x43  # C
		.byte 0x5D  # ]
		.byte 0x53  # S
		.byte 0x25  # %
		.byte 0x1D  #  
		.byte 0x3B  # ;
		.byte 0x9E  # 
		.byte 0x21  # !
		.byte 0xDC  # Ü
		.byte 0x26  # &
		.byte 0x29  # )
		.byte 0x2C  # ,
		.byte 0x9F  # Ÿ
		.byte	 0  #  
		.byte 0xF0  # ğ
		.byte 0x28  # (
		.byte 0x5E  # ^
		.byte 0x1D  #  
		.byte 0x47  # G
		.byte 0x36  # 6
		.byte 0x19  #  
		.byte 0x4D  # M
		.byte 0x42  # B
		.byte 0x32  # 2
		.byte 0xD8  # Ø
		.byte 0x50  # P
		.byte 0xF5  # õ
		.byte 0x3F  # ?
		.byte 0x9B  # ›
		.byte 0x76  # v
		.byte 0x2C  # ,
		.byte 0x3B  # ;
		.byte 0x5A  # Z
		.byte 0x6B  # k
		.byte 0x9B  # ›
		.byte	 3  #  
		.byte 0x15  #  
		.byte 0xD6  # Ö
		.byte 0x26  # &
		.byte	 7  #  
		.byte 0xD4  # Ô
		.byte 0xCB  # Ë
		.byte 0x91  # ‘
		.byte  0xA  #  
		.byte 0x97  # —
		.byte 0xED  # í
		.byte 0x48  # H
		.byte  0xE  #  
		.byte 0x56  # V
		.byte 0xF0  # ğ
		.byte 0xFF  #  
		.byte 0x10  #  
		.byte 0x11  #  
		.byte 0xA0  #  
		.byte 0xFA  # ú
		.byte 0x14  #  
		.byte 0xD0  # Ğ
		.byte 0xBD  # ½
		.byte 0x4D  # M
		.byte 0x19  #  
		.byte 0x93  # “
		.byte 0x9B  # ›
		.byte 0x94  # ”
		.byte 0x1D  #  
		.byte 0x52  # R
		.byte 0x86  # †
		.byte 0x23  # #
		.byte 0xF1  # ñ
		.byte 0x2F  # /
		.byte 0x56  # V
		.byte  0xE  #  
		.byte 0xF5  # õ
		.byte 0xEE  # î
		.byte 0x4B  # K
		.byte 0xB9  # ¹
		.byte 0xF8  # ø
		.byte 0xAD  # ­
		.byte 0x6D  # m
		.byte 0x60  # `
		.byte 0xFC  # ü
		.byte 0x6C  # l
		.byte 0x70  # p
		.byte 0xD7  # ×
		.byte 0xE2  # â
		.byte 0x2B  # +
		.byte 0x20  #  
		.byte 0xD2  # Ò
		.byte 0xE6  # æ
		.byte 0xEA  # ê
		.byte 0x3D  # =
		.byte 0x65  # e
		.byte 0xEB  # ë
		.byte 0xA9  # ©
		.byte 0x1B  #  
		.byte 0xBC  # ¼
		.byte 0xEF  # ï
		.byte 0x68  # h
		.byte	 6  #  
		.byte  0xB  #  
		.byte 0xD7  # ×
		.byte 0x27  # '
		.byte 0xBB  # »
		.byte 0xB6  # ¶
		.byte 0xD3  # Ó
		.byte 0xE6  # æ
		.byte 0xA6  # ¦
		.byte	 1  #  
		.byte 0xDE  # Ş
		.byte 0xA5  # ¥
		.byte 0x80  # €
		.byte 0xD8  # Ø
		.byte 0xDA  # Ú
		.byte 0x64  # d
		.byte 0x9D  # 
		.byte 0x6F  # o
		.byte 0xC4  # Ä
		.byte 0x23  # #
		.byte 0xCD  # Í
		.byte 0x6A  # j
		.byte 0xC0  # À
		.byte 0xE2  # â
		.byte 0xD0  # Ğ
		.byte 0xDD  # İ
		.byte 0xCD  # Í
		.byte 0xA1  # ¡
		.byte 0xF6  # ö
		.byte	 4  #  
		.byte 0xC9  # É
		.byte 0x60  # `
		.byte 0xEB  # ë
		.byte 0xB3  # ³
		.byte 0xBD  # ½
		.byte 0x3E  # >
		.byte 0x8D  # 
		.byte 0x7E  # ~
		.byte 0xB9  # ¹
		.byte 0xFF  #  
		.byte 0x90  # 
		.byte 0xC9  # É
		.byte 0xB4  # ´
		.byte 0xBC  # ¼
		.byte 0xB6  # ¶
		.byte 0x10  #  
		.byte 0xB0  # °
		.byte 0x7D  # }
		.byte 0xAB  # «
		.byte 0xA7  # §
		.byte 0xAE  # ®
		.byte 0x3A  # :
		.byte 0xFB  # û
		.byte 0xA2  # ¢
		.byte 0xAA  # ª
		.byte 0xFB  # û
		.byte 0xE6  # æ
		.byte 0x15  #  
		.byte 0xA7  # §
		.byte 0xB8  # ¸
		.byte 0xC0  # À
		.byte 0xCC  # Ì
		.byte 0xA3  # £
		.byte 0x79  # y
		.byte 0xDD  # İ
		.byte 0x7B  # {
		.byte 0x9B  # ›
		.byte 0x36  # 6
		.byte 0x60  # `
		.byte 0xC6  # Æ
		.byte 0x9F  # Ÿ
		.byte 0xF7  # ÷
		.byte 0x7D  # }
		.byte 0x71  # q
		.byte 0x92  # ’
		.byte 0xB4  # ´
		.byte 0x5B  # [
		.byte 0xA8  # ¨
		.byte 0x96  # –
		.byte 0x75  # u
		.byte 0x46  # F
		.byte 0x1F  #  
		.byte 0x88  # ˆ
		.byte 0x32  # 2
		.byte 0x16  #  
		.byte 0x1A  #  
		.byte 0x8C  # Œ
		.byte 0xF3  # ó
		.byte  0xB  #  
		.byte 0xAD  # ­
		.byte 0x81  # 
		.byte 0xB0  # °
		.byte 0x2D  # -
		.byte 0x74  # t
		.byte 0x85  # …
		.byte 0x71  # q
		.byte 0x30  # 0
		.byte 0xC3  # Ã
		.byte 0x5D  # ]
		.byte 0x8A  # Š
		.byte 0x90  # 
		.byte 0x99  # ™
		.byte 0x59  # Y
		.byte 0x4B  # K
		.byte 0x8D  # 
		.byte 0x2E  # .
		.byte 0x54  # T
		.byte	 8  #  
		.byte 0xAB  # «
		.byte 0xF7  # ÷
		.byte 0x50  # P
		.byte 0xC9  # É
		.byte 0xB6  # ¶
		.byte 0x40  # @
		.byte 0x4E  # N
		.byte 0x8E  # 
		.byte 0xE6  # æ
		.byte 0x45  # E
		.byte 0x4A  # J
		.byte 0x4F  # O
		.byte 0xFB  # û
		.byte 0xF2  # ò
		.byte 0x47  # G
		.byte  0xC  #  
		.byte 0xDD  # İ
		.byte 0x2B  # +
		.byte 0x43  # C
		.byte 0xCD  # Í
		.byte 0xC0  # À
		.byte 0x9C  # œ
		.byte 0x7B  # {
		.byte 0x82  # ‚
		.byte 0x7D  # }
		.byte 0x21  # !
		.byte 0x7F  # 
		.byte 0x43  # C
		.byte 0x60  # `
		.byte 0x96  # –
		.byte 0x72  # r
		.byte	 0  #  
		.byte 0x46  # F
		.byte 0x4F  # O
		.byte 0x76  # v
		.byte 0xC1  # Á
		.byte 0x5B  # [
		.byte 0xF8  # ø
		.byte 0x68  # h
		.byte 0x86  # †
		.byte  0xB  #  
		.byte 0xFD  # ı
		.byte 0x6C  # l
		.byte 0x47  # G
		.byte 0x16  #  
		.byte 0x4A  # J
		.byte 0x61  # a
		.byte	 4  #  
		.byte 0x30  # 0
		.byte 0x93  # “
		.byte 0x65  # e
		.byte 0xC5  # Å
		.byte 0x2D  # -
		.byte 0x24  # $
		.byte 0x11  #  
		.byte 0x9B  # ›
		.byte 0x4B  # K
		.byte 0xE9  # é
		.byte 0x15  #  
		.byte 0x5A  # Z
		.byte 0x56  # V
		.byte 0x5E  # ^
		.byte 0x18  #  
		.byte 0x19  #  
		.byte 0x70  # p
		.byte 0x87  # ‡
		.byte 0x1C  #  
		.byte 0xD8  # Ø
		.byte 0x6D  # m
		.byte 0x30  # 0
		.byte	 2  #  
		.byte 0x9F  # Ÿ
		.byte 0x3D  # =
		.byte 0x35  # 5
		.byte	 6  #  
		.byte 0x5E  # ^
		.byte 0x20  #  
		.byte 0x82  # ‚
		.byte  0xB  #  
		.byte 0x1D  #  
		.byte	 6  #  
		.byte 0x5B  # [
		.byte  0xF  #  
		.byte 0xDC  # Ü
		.byte 0x1B  #  
		.byte 0xEC  # ì
		.byte 0x37  # 7
		.byte 0x93  # “
		.byte 0xA6  # ¦
		.byte 0x51  # Q
		.byte 0x33  # 3
		.byte 0x52  # R
		.byte 0xBB  # »
		.byte 0xE6  # æ
		.byte 0x3E  # >
		.byte 0x11  #  
		.byte 0x9D  # 
		.byte 0x3F  # ?
		.byte 0x3A  # :
		.byte 0xD0  # Ğ
		.byte 0x80  # €
		.byte 0x88  # ˆ
		.byte 0x24  # $
		.byte 0x97  # —
		.byte 0xD0  # Ğ
		.byte 0x8D  # 
		.byte 0x20  #  
		.byte 0x56  # V
		.byte 0xCD  # Í
		.byte 0x3A  # :
		.byte 0x2D  # -
		.byte 0x15  #  
		.byte 0xEB  # ë
		.byte 0xE3  # ã
		.byte 0x29  # )
		.byte 0xD4  # Ô
		.byte 0xF6  # ö
		.byte 0x54  # T
		.byte 0xC5  # Å
		.byte 0xA9  # ©
		.byte 0x26  # &
		.byte 0x79  # y
		.byte 0xC1  # Á
		.byte 0x68  # h
		.byte 0x3B  # ;
		.byte 0xCE  # Î
		.byte 0xCC  # Ì
		.byte 0x2B  # +
		.byte 0x1D  #  
		.byte 0x17  #  
		.byte 0xC8  # È
		.byte 0xEA  # ê
		.byte	 0  #  
		.byte 0xA0  #  
		.byte 0xD6  # Ö
		.byte 0xAD  # ­
		.byte 0x50  # P
		.byte 0xA5  # ¥
		.byte 0xD2  # Ò
		.byte 0x6C  # l
		.byte 0x4D  # M
		.byte 0x12  #  
		.byte 0xDF  # ß
		.byte 0x2F  # /
		.byte 0x6B  # k
		.byte 0xCB  # Ë
		.byte 0xDB  # Û
		.byte 0xEE  # î
		.byte 0x76  # v
		.byte 0x7C  # |
		.byte 0xE3  # ã
		.byte 0xA1  # ¡
		.byte 0xCB  # Ë
		.byte 0xC1  # Á
		.byte 0xE7  # ç
		.byte 0x60  # `
		.byte 0xD6  # Ö
		.byte 0x76  # v
		.byte 0xEA  # ê
		.byte 0x23  # #
		.byte 0xF0  # ğ
		.byte 0xAF  # ¯
		.byte 0xEE  # î
		.byte 0xE2  # â
		.byte 0xED  # í
		.byte 0x18  #  
		.byte 0xF0  # ğ
		.byte 0xA5  # ¥
		.byte 0xBD  # ½
		.byte 0x1D  #  
		.byte 0xF4  # ô
		.byte 0x64  # d
		.byte 0xA0  #  
		.byte 0xAA  # ª
		.byte 0xF9  # ù
		.byte 0x27  # '
		.byte 0x86  # †
		.byte 0x73  # s
		.byte 0xFD  # ı
		.byte 0xE6  # æ
		.byte 0x9B  # ›
		.byte 0xC4  # Ä
		.byte 0x89  # ‰
		.byte 0xB8  # ¸
		.byte 0xFD  # ı
		.byte	 9  #  
		.byte 0x8D  # 
		.byte 0x79  # y
		.byte 0xE0  # à
		.byte 0xBE  # ¾
		.byte 0x80  # €
		.byte 0x3A  # :
		.byte 0xC6  # Æ
		.byte 0x67  # g
		.byte 0x84  # „
		.byte 0xFB  # û
		.byte 0xDB  # Û
		.byte 0xD0  # Ğ
		.byte 0x9A  # š
		.byte 0xBC  # ¼
		.byte 0x8B  # ‹
		.byte 0xD5  # Õ
		.byte 0x9E  # 
		.byte 0x7D  # }
		.byte 0x96  # –
		.byte 0x62  # b
		.byte 0x93  # “
		.byte 0x3E  # >
		.byte 0xB0  # °
		.byte 0xBB  # »
		.byte 0x97  # —
		.byte 0xFF  #  
		.byte 0xAD  # ­
		.byte  0xC  #  
		.byte 0xAF  # ¯
		.byte 0xB0  # °
		.byte 0x10  #  
		.byte 0xB1  # ±
		.byte 0xAB  # «
		.byte 0x71  # q
		.byte  0xD  #  
		.byte	 6  #  
		.byte 0xA6  # ¦
		.byte 0x32  # 2
		.byte 0x2B  # +
		.byte 0xDF  # ß
		.byte 0xA2  # ¢
		.byte 0xF3  # ó
		.byte 0x36  # 6
		.byte 0x68  # h
		.byte 0xBC  # ¼
		.byte 0xB4  # ´
		.byte 0x66  # f
		.byte 0x6D  # m
		.byte 0xB8  # ¸
		.byte 0x75  # u
		.byte 0x7B  # {
		.byte 0xDA  # Ú
		.byte 0xB5  # µ
		.byte 0x36  # 6
		.byte 0x5D  # ]
		.byte	 3  #  
		.byte 0xB1  # ±
		.byte 0xF7  # ÷
		.byte 0x40  # @
		.byte 0xB4  # ´
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xC0  # À
		.byte 0xC1  # Á
		.byte 0xC1  # Á
		.byte 0x81  # 
		.byte	 1  #  
		.byte 0x40  # @
		.byte 0xC3  # Ã
		.byte	 1  #  
		.byte	 3  #  
		.byte 0xC0  # À
		.byte	 2  #  
		.byte 0x80  # €
		.byte 0xC2  # Â
		.byte 0x41  # A
		.byte 0xC6  # Æ
		.byte	 1  #  
		.byte	 6  #  
		.byte 0xC0  # À
		.byte	 7  #  
		.byte 0x80  # €
		.byte 0xC7  # Ç
		.byte 0x41  # A
		.byte	 5  #  
		.byte	 0  #  
		.byte 0xC5  # Å
		.byte 0xC1  # Á
		.byte 0xC4  # Ä
		.byte 0x81  # 
		.byte	 4  #  
		.byte 0x40  # @
		.byte 0xCC  # Ì
		.byte	 1  #  
		.byte  0xC  #  
		.byte 0xC0  # À
		.byte  0xD  #  
		.byte 0x80  # €
		.byte 0xCD  # Í
		.byte 0x41  # A
		.byte  0xF  #  
		.byte	 0  #  
		.byte 0xCF  # Ï
		.byte 0xC1  # Á
		.byte 0xCE  # Î
		.byte 0x81  # 
		.byte  0xE  #  
		.byte 0x40  # @
		.byte  0xA  #  
		.byte	 0  #  
		.byte 0xCA  # Ê
		.byte 0xC1  # Á
		.byte 0xCB  # Ë
		.byte 0x81  # 
		.byte  0xB  #  
		.byte 0x40  # @
		.byte 0xC9  # É
		.byte	 1  #  
		.byte	 9  #  
		.byte 0xC0  # À
		.byte	 8  #  
		.byte 0x80  # €
		.byte 0xC8  # È
		.byte 0x41  # A
		.byte 0xD8  # Ø
		.byte	 1  #  
		.byte 0x18  #  
		.byte 0xC0  # À
		.byte 0x19  #  
		.byte 0x80  # €
		.byte 0xD9  # Ù
		.byte 0x41  # A
		.byte 0x1B  #  
		.byte	 0  #  
		.byte 0xDB  # Û
		.byte 0xC1  # Á
		.byte 0xDA  # Ú
		.byte 0x81  # 
		.byte 0x1A  #  
		.byte 0x40  # @
		.byte 0x1E  #  
		.byte	 0  #  
		.byte 0xDE  # Ş
		.byte 0xC1  # Á
		.byte 0xDF  # ß
		.byte 0x81  # 
		.byte 0x1F  #  
		.byte 0x40  # @
		.byte 0xDD  # İ
		.byte	 1  #  
		.byte 0x1D  #  
		.byte 0xC0  # À
		.byte 0x1C  #  
		.byte 0x80  # €
		.byte 0xDC  # Ü
		.byte 0x41  # A
		.byte 0x14  #  
		.byte	 0  #  
		.byte 0xD4  # Ô
		.byte 0xC1  # Á
		.byte 0xD5  # Õ
		.byte 0x81  # 
		.byte 0x15  #  
		.byte 0x40  # @
		.byte 0xD7  # ×
		.byte	 1  #  
		.byte 0x17  #  
		.byte 0xC0  # À
		.byte 0x16  #  
		.byte 0x80  # €
		.byte 0xD6  # Ö
		.byte 0x41  # A
		.byte 0xD2  # Ò
		.byte	 1  #  
		.byte 0x12  #  
		.byte 0xC0  # À
		.byte 0x13  #  
		.byte 0x80  # €
		.byte 0xD3  # Ó
		.byte 0x41  # A
		.byte 0x11  #  
		.byte	 0  #  
		.byte 0xD1  # Ñ
		.byte 0xC1  # Á
		.byte 0xD0  # Ğ
		.byte 0x81  # 
		.byte 0x10  #  
		.byte 0x40  # @
		.byte 0xF0  # ğ
		.byte	 1  #  
		.byte 0x30  # 0
		.byte 0xC0  # À
		.byte 0x31  # 1
		.byte 0x80  # €
		.byte 0xF1  # ñ
		.byte 0x41  # A
		.byte 0x33  # 3
		.byte	 0  #  
		.byte 0xF3  # ó
		.byte 0xC1  # Á
		.byte 0xF2  # ò
		.byte 0x81  # 
		.byte 0x32  # 2
		.byte 0x40  # @
		.byte 0x36  # 6
		.byte	 0  #  
		.byte 0xF6  # ö
		.byte 0xC1  # Á
		.byte 0xF7  # ÷
		.byte 0x81  # 
		.byte 0x37  # 7
		.byte 0x40  # @
		.byte 0xF5  # õ
		.byte	 1  #  
		.byte 0x35  # 5
		.byte 0xC0  # À
		.byte 0x34  # 4
		.byte 0x80  # €
		.byte 0xF4  # ô
		.byte 0x41  # A
		.byte 0x3C  # <
		.byte	 0  #  
		.byte 0xFC  # ü
		.byte 0xC1  # Á
		.byte 0xFD  # ı
		.byte 0x81  # 
		.byte 0x3D  # =
		.byte 0x40  # @
		.byte 0xFF  #  
		.byte	 1  #  
		.byte 0x3F  # ?
		.byte 0xC0  # À
		.byte 0x3E  # >
		.byte 0x80  # €
		.byte 0xFE  # ş
		.byte 0x41  # A
		.byte 0xFA  # ú
		.byte	 1  #  
		.byte 0x3A  # :
		.byte 0xC0  # À
		.byte 0x3B  # ;
		.byte 0x80  # €
		.byte 0xFB  # û
		.byte 0x41  # A
		.byte 0x39  # 9
		.byte	 0  #  
		.byte 0xF9  # ù
		.byte 0xC1  # Á
		.byte 0xF8  # ø
		.byte 0x81  # 
		.byte 0x38  # 8
		.byte 0x40  # @
		.byte 0x28  # (
		.byte	 0  #  
		.byte 0xE8  # è
		.byte 0xC1  # Á
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		srv	$v1[0],	0x2940($t4)  # Store Rest Vector
		srv	$v1[0],	0x2BC0($t8)  # Store Rest Vector
		slti	$0, $s4, 0xEA41	 # Set on Less Than Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0xEE  # î
		.byte	 1  #  
		.byte 0x2E  # .
		.byte 0xC0  # À
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sltiu	$0, $gp, 0xEF41	 # Set on Less Than Immediate Unsigned
		sltiu	$0, $t0, 0xEDC1	 # Set on Less Than Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0xEC  # ì
		.byte 0x81  # 
		.byte 0x2C  # ,
		.byte 0x40  # @
		.byte 0xE4  # ä
		.byte	 1  #  
		.byte 0x24  # $
		.byte 0xC0  # À
		.byte 0x25  # %
		.byte 0x80  # €
		.byte 0xE5  # å
		.byte 0x41  # A
		.byte 0x27  # '
		.byte	 0  #  
		.byte 0xE7  # ç
		.byte 0xC1  # Á
		.byte 0xE6  # æ
		.byte 0x81  # 
		.byte 0x26  # &
		.byte 0x40  # @
		.byte 0x22  # "
		.byte	 0  #  
		.byte 0xE2  # â
		.byte 0xC1  # Á
		.byte 0xE3  # ã
		.byte 0x81  # 
		.byte 0x23  # #
		.byte 0x40  # @
		.byte 0xE1  # á
		.byte	 1  #  
		.byte 0x21  # !
		.byte 0xC0  # À
		.byte 0x20  #  
		.byte 0x80  # €
		.byte 0xE0  # à
		.byte 0x41  # A
		.byte 0xA0  #  
		.byte	 1  #  
		.byte 0x60  # `
		.byte 0xC0  # À
		.byte 0x61  # a
		.byte 0x80  # €
		.byte 0xA1  # ¡
		.byte 0x41  # A
		.byte 0x63  # c
		.byte	 0  #  
		.byte 0xA3  # £
		.byte 0xC1  # Á
		.byte 0xA2  # ¢
		.byte 0x81  # 
		.byte 0x62  # b
		.byte 0x40  # @
		.byte 0x66  # f
		.byte	 0  #  
		.byte 0xA6  # ¦
		.byte 0xC1  # Á
		.byte 0xA7  # §
		.byte 0x81  # 
		.byte 0x67  # g
		.byte 0x40  # @
		.byte 0xA5  # ¥
		.byte	 1  #  
		.byte 0x65  # e
		.byte 0xC0  # À
		.byte 0x64  # d
		.byte 0x80  # €
		.byte 0xA4  # ¤
		.byte 0x41  # A
		.byte 0x6C  # l
		.byte	 0  #  
		.byte 0xAC  # ¬
		.byte 0xC1  # Á
		.byte 0xAD  # ­
		.byte 0x81  # 
		.byte 0x6D  # m
		.byte 0x40  # @
		.byte 0xAF  # ¯
		.byte	 1  #  
		.byte 0x6F  # o
		.byte 0xC0  # À
		.byte 0x6E  # n
		.byte 0x80  # €
		.byte 0xAE  # ®
		.byte 0x41  # A
		.byte 0xAA  # ª
		.byte	 1  #  
		.byte 0x6A  # j
		.byte 0xC0  # À
		.byte 0x6B  # k
		.byte 0x80  # €
		.byte 0xAB  # «
		.byte 0x41  # A
		.byte 0x69  # i
		.byte	 0  #  
		.byte 0xA9  # ©
		.byte 0xC1  # Á
		.byte 0xA8  # ¨
		.byte 0x81  # 
		.byte 0x68  # h
		.byte 0x40  # @
		.byte 0x78  # x
		.byte	 0  #  
		.byte 0xB8  # ¸
		.byte 0xC1  # Á
		.byte 0xB9  # ¹
		.byte 0x81  # 
		.byte 0x79  # y
		.byte 0x40  # @
		.byte 0xBB  # »
		.byte	 1  #  
		.byte 0x7B  # {
		.byte 0xC0  # À
		.byte 0x7A  # z
		.byte 0x80  # €
		.byte 0xBA  # º
		.byte 0x41  # A
		.byte 0xBE  # ¾
		.byte	 1  #  
		.byte 0x7E  # ~
		.byte 0xC0  # À
		.byte 0x7F  # 
		.byte 0x80  # €
		.byte 0xBF  # ¿
		.byte 0x41  # A
		.byte 0x7D  # }
		.byte	 0  #  
		.byte 0xBD  # ½
		.byte 0xC1  # Á
		.byte 0xBC  # ¼
		.byte 0x81  # 
		.byte 0x7C  # |
		.byte 0x40  # @
		.byte 0xB4  # ´
		.byte	 1  #  
		.byte 0x74  # t
		.byte 0xC0  # À
		.byte 0x75  # u
		.byte 0x80  # €
		.byte 0xB5  # µ
		.byte 0x41  # A
		.byte 0x77  # w
		.byte	 0  #  
		.byte 0xB7  # ·
		.byte 0xC1  # Á
		.byte 0xB6  # ¶
		.byte 0x81  # 
		.byte 0x76  # v
		.byte 0x40  # @
		.byte 0x72  # r
		.byte	 0  #  
		.byte 0xB2  # ²
		.byte 0xC1  # Á
		.byte 0xB3  # ³
		.byte 0x81  # 
		.byte 0x73  # s
		.byte 0x40  # @
		.byte 0xB1  # ±
		.byte	 1  #  
		.byte 0x71  # q
		.byte 0xC0  # À
		.byte 0x70  # p
		.byte 0x80  # €
		.byte 0xB0  # °
		.byte 0x41  # A
		.byte 0x50  # P
		.byte	 0  #  
		.byte 0x90  # 
		.byte 0xC1  # Á
		.byte 0x91  # ‘
		.byte 0x81  # 
		.byte 0x51  # Q
		.byte 0x40  # @
		.byte 0x93  # “
		.byte	 1  #  
		.byte 0x53  # S
		.byte 0xC0  # À
		.byte 0x52  # R
		.byte 0x80  # €
		.byte 0x92  # ’
		.byte 0x41  # A
		.byte 0x96  # –
		.byte	 1  #  
		.byte 0x56  # V
		.byte 0xC0  # À
		.byte 0x57  # W
		.byte 0x80  # €
		.byte 0x97  # —
		.byte 0x41  # A
		.byte 0x55  # U
		.byte	 0  #  
		.byte 0x95  # •
		.byte 0xC1  # Á
		.byte 0x94  # ”
		.byte 0x81  # 
		.byte 0x54  # T
		.byte 0x40  # @
		.byte 0x9C  # œ
		.byte	 1  #  
		.byte 0x5C  # \
		.byte 0xC0  # À
		.byte 0x5D  # ]
		.byte 0x80  # €
		.byte 0x9D  # 
		.byte 0x41  # A
		.byte 0x5F  # _
		.byte	 0  #  
		.byte 0x9F  # Ÿ
		.byte 0xC1  # Á
		.byte 0x9E  # 
		.byte 0x81  # 
		.byte 0x5E  # ^
		.byte 0x40  # @
		.byte 0x5A  # Z
		.byte	 0  #  
		.byte 0x9A  # š
		.byte 0xC1  # Á
		.byte 0x9B  # ›
		.byte 0x81  # 
		.byte 0x5B  # [
		.byte 0x40  # @
		.byte 0x99  # ™
		.byte	 1  #  
		.byte 0x59  # Y
		.byte 0xC0  # À
		.byte 0x58  # X
		.byte 0x80  # €
		.byte 0x98  # ˜
		.byte 0x41  # A
		.byte 0x88  # ˆ
		.byte	 1  #  
		.byte 0x48  # H
		.byte 0xC0  # À
		.byte 0x49  # I
		.byte 0x80  # €
		.byte 0x89  # ‰
		.byte 0x41  # A
		.byte 0x4B  # K
		.byte	 0  #  
		.byte 0x8B  # ‹
		.byte 0xC1  # Á
		.byte 0x8A  # Š
		.byte 0x81  # 
		.byte 0x4A  # J
		.byte 0x40  # @
		.byte 0x4E  # N
		.byte	 0  #  
		.byte 0x8E  # 
		.byte 0xC1  # Á
		.byte 0x8F  # 
		.byte 0x81  # 
		.byte 0x4F  # O
		.byte 0x40  # @
		.byte 0x8D  # 
		.byte	 1  #  
		.byte 0x4D  # M
		.byte 0xC0  # À
		.byte 0x4C  # L
		.byte 0x80  # €
		.byte 0x8C  # Œ
		.byte 0x41  # A
		.byte 0x44  # D
		.byte	 0  #  
		.byte 0x84  # „
		.byte 0xC1  # Á
		.byte 0x85  # …
		.byte 0x81  # 
		.byte 0x45  # E
		.byte 0x40  # @
		.byte 0x87  # ‡
		.byte	 1  #  
		.byte 0x47  # G
		.byte 0xC0  # À
		.byte 0x46  # F
		.byte 0x80  # €
		.byte 0x86  # †
		.byte 0x41  # A
		.byte 0x82  # ‚
		.byte	 1  #  
		.byte 0x42  # B
		.byte 0xC0  # À
		.byte 0x43  # C
		.byte 0x80  # €
		.byte 0x83  # ƒ
		.byte 0x41  # A
		.byte 0x41  # A
		.byte	 0  #  
		.byte 0x81  # 
		.byte 0xC1  # Á
		.byte 0x80  # €
		.byte 0x81  # 
		.byte 0x40  # @
		.byte 0x40  # @
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		lui	$1, 0xB144	 # Load	Upper Immediate
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 1	 # AND Immediate
		beqzl	$t9, locret_8C005780  #	Branch on Zero Likely
		li	$v0, 0		 # Load	Immediate
		li	$v0, 1		 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 1		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C005780:			 # CODE	XREF: seg000:8C00576Cj
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xB144	 # Load	Upper Immediate

loc_8C00578C:				 # CODE	XREF: seg000:8C005794j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 1	 # AND Immediate
		beqzl	$t9, loc_8C00578C  # Branch on Zero Likely
		lui	$1, 0xB144	 # Load	Upper Immediate
		lui	$1, 0xB144	 # Load	Upper Immediate
		lbu	$v1, 0x20($1)	 # Load	Byte Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0057AC:				 # CODE	XREF: sub_8C005874+20p
					 # sub_8C005874+40p ...
		sll	$a0, 24		 # Shift Left Logical
		sra	$a0, 24		 # Shift Right Arithmetic
		lui	$1, 0xB144	 # Load	Upper Immediate

loc_8C0057B8:				 # CODE	XREF: sub_8C0057AC+14j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 4	 # AND Immediate
		beqzl	$t9, loc_8C0057B8  # Branch on Zero Likely
		lui	$1, 0xB144	 # Load	Upper Immediate
		lui	$1, 0xB144	 # Load	Upper Immediate
		jr	$ra		 # Jump	Register
		sb	$a0, 0x20($1)	 # Store Byte
 # End of function sub_8C0057AC

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xB144	 # Load	Upper Immediate

loc_8C0057D8:				 # CODE	XREF: seg000:8C0057E0j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 1	 # AND Immediate
		beqzl	$t9, loc_8C0057D8  # Branch on Zero Likely
		lui	$1, 0xB144	 # Load	Upper Immediate
		lui	$1, 0xB144	 # Load	Upper Immediate
		lbu	$v1, 0x20($1)	 # Load	Byte Unsigned
		li	$t6, 0xD	 # Load	Immediate
		bne	$v1, $t6, locret_8C005804  # Branch on Not Equal
		li	$v0, 0xA	 # Load	Immediate
		jr	$ra		 # Jump	Register
		li	$v1, 0xA	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

locret_8C005804:			 # CODE	XREF: seg000:8C0057F4j
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sll	$a0, 24		 # Shift Left Logical
		sra	$a0, 24		 # Shift Right Arithmetic
		li	$t9, 0xA	 # Load	Immediate
		beq	$a0, $t9, loc_8C005820	# Branch on Equal
		lui	$1, 0xB144	 # Load	Upper Immediate

loc_8C005820:				 # CODE	XREF: seg000:8C005818j
					 # seg000:8C005828j
		lbu	$t7, 0($1)	 # Load	Byte Unsigned
		andi	$t8, $t7, 4	 # AND Immediate
		beqzl	$t8, loc_8C005820  # Branch on Zero Likely
		lui	$1, 0xB144	 # Load	Upper Immediate
		lui	$1, 0xB144	 # Load	Upper Immediate
		jr	$ra		 # Jump	Register
		sb	$a0, 0x20($1)	 # Store Byte

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00583C:				 # CODE	XREF: seg000:8C005A28p
					 # seg000:8C005A34p ...
		lb	$v1, 0($a0)	 # Load	Byte
		beqz	$v1, locret_8C00586C  #	Branch on Zero

loc_8C005844:				 # CODE	XREF: sub_8C00583C+28j
		lui	$1, 0xB144	 # Load	Upper Immediate

loc_8C005848:				 # CODE	XREF: sub_8C00583C+14j
		lbu	$t8, 0($1)	 # Load	Byte Unsigned
		andi	$t9, $t8, 4	 # AND Immediate
		beqzl	$t9, loc_8C005848  # Branch on Zero Likely
		lui	$1, 0xB144	 # Load	Upper Immediate
		lui	$1, 0xB144	 # Load	Upper Immediate
		sb	$v1, 0x20($1)	 # Store Byte
		lb	$v1, 1($a0)	 # Load	Byte
		bnez	$v1, loc_8C005844  # Branch on Not Zero
		addiu	$a0, 1		 # Add Immediate Unsigned

locret_8C00586C:			 # CODE	XREF: sub_8C00583C+4j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C00583C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C005874:				 # CODE	XREF: seg000:8C005914p
					 # seg000:8C00591Cp ...

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		andi	$s0, $a0, 0xFF	 # AND Immediate
		srl	$v1, $s0, 4	 # Shift Right Logical
		andi	$v1, 0xFF	 # AND Immediate
		slti	$t9, $v1, 0xA	 # Set on Less Than Immediate
		beqz	$t9, loc_8C0058B4  # Branch on Zero
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C0057AC	 # Jump	And Link
		addiu	$a0, $v1, 0x30	 # Add Immediate Unsigned
		andi	$v1, $s0, 0xF	 # AND Immediate
		slti	$t8, $v1, 0xA	 # Set on Less Than Immediate
		beqz	$t8, loc_8C0058E4  # Branch on Zero
		nop
		j	loc_8C0058CC	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0058B4:				 # CODE	XREF: sub_8C005874+18j
		jal	sub_8C0057AC	 # Jump	And Link
		addiu	$a0, $v1, 0x57	 # Add Immediate Unsigned
		andi	$v1, $s0, 0xF	 # AND Immediate
		slti	$t8, $v1, 0xA	 # Set on Less Than Immediate
		beqz	$t8, loc_8C0058E4  # Branch on Zero
		nop

loc_8C0058CC:				 # CODE	XREF: sub_8C005874+38j
		jal	sub_8C0057AC	 # Jump	And Link
		addiu	$a0, $v1, 0x30	 # Add Immediate Unsigned
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0058E4:				 # CODE	XREF: sub_8C005874+30j
					 # sub_8C005874+50j
		jal	sub_8C0057AC	 # Jump	And Link
		addiu	$a0, $v1, 0x57	 # Add Immediate Unsigned
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C005874

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		sw	$s0, 0x10($sp)	 # Store Word
		move	$s0, $a0
		andi	$t9, $a0, 0xFF00  # AND	Immediate
		sra	$t8, $t9, 8	 # Shift Right Arithmetic
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $t8, 0xFF	 # AND Immediate
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $s0, 0xFF	 # AND Immediate
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C005934:				 # CODE	XREF: seg000:8C005A48p
					 # seg000:8C005A68p ...

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		move	$s0, $a0
		lui	$t8, 0xFF00	 # Load	Upper Immediate
		and	$t9, $t8, $a0	 # AND
		jal	sub_8C005874	 # Jump	And Link
		srl	$a0, $t9, 24	 # Shift Right Logical
		lui	$t4, 0xFF	 # Load	Upper Immediate
		and	$t5, $t4, $s0	 # AND
		srl	$t3, $t5, 16	 # Shift Right Logical
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $t3, 0xFF	 # AND Immediate
		andi	$t9, $s0, 0xFF00  # AND	Immediate
		srl	$t8, $t9, 8	 # Shift Right Logical
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $t8, 0xFF	 # AND Immediate
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $s0, 0xFF	 # AND Immediate
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C005934

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		sw	$s0, 0x10($sp)	 # Store Word
		move	$s0, $a0
		lui	$t8, 0xFF00	 # Load	Upper Immediate
		and	$t9, $t8, $a0	 # AND
		jal	sub_8C005874	 # Jump	And Link
		srl	$a0, $t9, 24	 # Shift Right Logical
		lui	$t4, 0xFF	 # Load	Upper Immediate
		and	$t5, $t4, $s0	 # AND
		sra	$t3, $t5, 16	 # Shift Right Arithmetic
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $t3, 0xFF	 # AND Immediate
		andi	$t9, $s0, 0xFF00  # AND	Immediate
		sra	$t8, $t9, 8	 # Shift Right Arithmetic
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $t8, 0xFF	 # AND Immediate
		jal	sub_8C005874	 # Jump	And Link
		andi	$a0, $s0, 0xFF	 # AND Immediate
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x24($sp)	 # Store Word
		sw	$s0, 0x10($sp)	 # Store Word
		sw	$s1, 0x14($sp)	 # Store Word
		move	$s1, $a0
		sw	$s2, 0x18($sp)	 # Store Word
		move	$s2, $a1
		sw	$s3, 0x1C($sp)	 # Store Word
		move	$s3, $a2
		sw	$s4, 0x20($sp)	 # Store Word
		move	$s4, $a3
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5ADC	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5AF0	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5B20	 # Add Immediate Unsigned
		jal	sub_8C005934	 # Jump	And Link
		move	$a0, $s1
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5AD9	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5B2C	 # Add Immediate Unsigned
		jal	sub_8C005934	 # Jump	And Link
		move	$a0, $s2
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5AD6	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5B38	 # Add Immediate Unsigned
		jal	sub_8C005934	 # Jump	And Link
		move	$a0, $s3
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5AD3	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5B44	 # Add Immediate Unsigned
		jal	sub_8C005934	 # Jump	And Link
		move	$a0, $s4
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5AD0	 # Add Immediate Unsigned
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5B50	 # Add Immediate Unsigned

loc_8C005AC8:				 # CODE	XREF: seg000:8C005AC8j
		j	loc_8C005AC8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.ascii "\r\n"<0>
		.ascii "\r\n"<0>
		.ascii "\r\n"<0>
		.ascii "\r\n"<0>
aException:	.ascii "\r\n"
		.ascii "Exception !!!\r\n"<0>
		.byte	 0  #  
		.byte	 0  #  
		.ascii "*********************************************\r\n"<0>
aCause:		.ascii "CAUSE : "<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aEpc:		.ascii "EPC   : "<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aSr:		.ascii "SR    : "<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
aRa:		.ascii "RA    : "<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.ascii "*********************************************\r\n"<0>
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$v1, 1		 # Load	Immediate
		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$s0, 0x10($sp)	 # Store Word
		lui	$s0, 0x8C01	 # Load	Upper Immediate
		addiu	$s0, 0x89C0	 # Add Immediate Unsigned
		sw	$s1, 0x14($sp)	 # Store Word
		and	$t9, $a0, $a1	 # AND
		andi	$s1, $t9, 0xFF00  # AND	Immediate
		andi	$t8, $t9, 0x400	 # AND Immediate
		beqz	$t8, loc_8C005BE4  # Branch on Zero
		sw	$ra, 0x1C($sp)	 # Store Word
		lui	$1, 0xBB00	 # Load	Upper Immediate
		lw	$t6, 0($1)	 # Load	Word
		srl	$t9, $t6, 2	 # Shift Right Logical
		sll	$t5, $t9, 2	 # Shift Left Logical
		addu	$t4, $s0, $t5	 # Add Unsigned
		lw	$t3, 0($t4)	 # Load	Word
		beqzl	$t3, loc_8C005BE8  # Branch on Zero Likely
		andi	$t9, $s1, 0x2000  # AND	Immediate
		sll	$v1, $t9, 2	 # Shift Left Logical
		addu	$v1, $s0, $v1	 # Add Unsigned
		lw	$v1, 0($v1)	 # Load	Word
		jalr	$v1		 # Jump	And Link Register
		nop
		li	$v1, 0		 # Load	Immediate

loc_8C005BE4:				 # CODE	XREF: seg000:8C005BA4j
		andi	$t9, $s1, 0x2000  # AND	Immediate

loc_8C005BE8:				 # CODE	XREF: seg000:8C005BC4j
		beqzl	$t9, loc_8C005C1C  # Branch on Zero Likely
		lw	$s1, 0x14($sp)	 # Load	Word
		lw	$t7, 0x18($s0)	 # Load	Word
		beqzl	$t7, loc_8C005C1C  # Branch on Zero Likely
		lw	$s1, 0x14($sp)	 # Load	Word
		jalr	$t7		 # Jump	And Link Register
		nop
		lw	$s0, 0x10($sp)	 # Load	Word
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s1, 0x14($sp)	 # Load	Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v1, $v0
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C005C1C:				 # CODE	XREF: seg000:8C005BE8j
					 # seg000:8C005BF4j
		lw	$ra, 0x1C($sp)	 # Load	Word
		lw	$s0, 0x10($sp)	 # Load	Word
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 #  (0x8C0189C0	+ (a0 shl 2)) =	a1

sub_8C005C30:				 # CODE	XREF: seg000:8C0008F8p
					 # seg000:8C000908p ...
		sll	$t9, $a0, 2	 # Shift Left Logical
		lui	$t7, 0x8C01	 # Load	Upper Immediate
		addiu	$t7, 0x89C0	 # Add Immediate Unsigned
		addu	$t8, $t7, $t9	 # Add Unsigned
		jr	$ra		 # Jump	Register
		sw	$a1, 0($t8)	 # Store Word
 # End of function sub_8C005C30


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C005C48:				 # CODE	XREF: sub_8C0009C4+8p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$0, -0x7FDC($gp)  # Store Word
		lui	$a1, 0x8C00	 # Load	Upper Immediate
		addiu	$a1, 0x5C90	 # Add Immediate Unsigned
		jal	sub_8C005C30	 #  (0x8C0189C0	+ (a0 shl 2)) =	a1
		li	$a0, 6		 # Load	Immediate
		lui	$t0, 2		 # Load	Upper Immediate
		ori	$t0, 0x78D0	 # OR Immediate
		sw	$t0, -0x7FE0($gp)  # Store Word
		lui	$a0, 2		 # Load	Upper Immediate
		jal	sub_8C0000F0	 # Jump	And Link
		ori	$a0, 0x78D0	 # OR Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C005C48

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jr	$ra		 # Jump	Register
		sw	$a0, -0x7FDC($gp)  # Store Word
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		lw	$a0, -0x7FE0($gp)  # Load Word
		jal	sub_8C000100	 # Jump	And Link
		nop
		lw	$t9, -0x7FDC($gp)  # Load Word
		beqzl	$t9, loc_8C005CCC  # Branch on Zero Likely
		lw	$ra, 0x14($sp)	 # Load	Word
		jalr	$t9		 # Jump	And Link Register
		nop
		lw	$ra, 0x14($sp)	 # Load	Word
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C005CCC:				 # CODE	XREF: seg000:8C005CA8j
		li	$v0, 0		 # Load	Immediate
		addiu	$sp, 0x18	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		li	$v1, 0		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		lui	$1, 0xBB00	 # Load	Upper Immediate
		jal	sub_8C000168	 # Sync	loads and stores to shared memory
		sw	$a0, 0x10($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		lw	$v1, 0x10($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # 0xBB000000+0x20 = a0	and 0xF
 # Sprung zu sub_8c000168
 # 

sub_8C005D10:				 # CODE	XREF: seg000:8C000920p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		andi	$t9, $a0, 0xF	 # AND Immediate
		lui	$1, 0xBB00	 # Load	Upper Immediate
		jal	sub_8C000168	 # Sync	loads and stores to shared memory
		sw	$t9, 0x20($1)	 # Store Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C005D10

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		lw	$v1, 0x20($1)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		lw	$t9, 0($1)	 # Load	Word
		srl	$v1, $t9, 2	 # Shift Right Logical
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		lui	$t8, 0xFFFF	 # Load	Upper Immediate
		and	$t9, $t8, $a0	 # AND
		lui	$1, 0xBB00	 # Load	Upper Immediate
		jal	sub_8C000168	 # Sync	loads and stores to shared memory
		sw	$t9, 0($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		sll	$t9, $a0, 2	 # Shift Left Logical
		lui	$t7, 0xBB00	 # Load	Upper Immediate
		ori	$t7, 0x20	 # OR Immediate
		addu	$t8, $t9, $t7	 # Add Unsigned
		andi	$t6, $a1, 0xF	 # AND Immediate
		jal	sub_8C000168	 # Sync	loads and stores to shared memory
		sw	$t6, 0($t8)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sll	$t9, $a0, 2	 # Shift Left Logical
		lui	$t7, 0xBB00	 # Load	Upper Immediate
		ori	$t7, 0x20	 # OR Immediate
		addu	$t8, $t9, $t7	 # Add Unsigned
		lw	$v1, 0($t8)	 # Load	Word
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		lw	$t9, 8($1)	 # Load	Word
		andi	$v1, $t9, 0xF	 # AND Immediate
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x14($sp)	 # Store Word
		jal	sub_8C005C30	 #  (0x8C0189C0	+ (a0 shl 2)) =	a1
		andi	$a0, 0xFF	 # AND Immediate
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		andi	$a1, 0xFF	 # AND Immediate
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		andi	$a0, 0xFF	 # AND Immediate
		slti	$t9, $a0, 1	 # Set on Less Than Immediate
		bnez	$t9, loc_8C005E20  # Branch on Not Zero
		sw	$ra, 0x14($sp)	 # Store Word
		slti	$t8, $a0, 0x10	 # Set on Less Than Immediate
		bnezl	$t8, loc_8C005E38  # Branch on Not Zero	Likely
		lui	$1, 0xBB00	 # Load	Upper Immediate

loc_8C005E20:				 # CODE	XREF: seg000:8C005E0Cj
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x5E84	 # Add Immediate Unsigned
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C005E38:				 # CODE	XREF: seg000:8C005E18j
		lw	$v1, 0x10($1)	 # Load	Word
		bnezl	$a1, loc_8C005E68  # Branch on Not Zero	Likely
		li	$t2, 1		 # Load	Immediate
		li	$t5, 1		 # Load	Immediate
		sllv	$t6, $t5, $a0	 # Shift Left Logical Variable
		nor	$t4, $0, $t6	 # NOR
		and	$v1, $t4	 # AND
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$v1, 0x10($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C005E68:				 # CODE	XREF: seg000:8C005E3Cj
		sllv	$t3, $t2, $a0	 # Shift Left Logical Variable
		or	$v1, $t3	 # OR
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$v1, 0x10($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
aInvalidMaskLev:.ascii "Invalid Mask Level\r\n"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		andi	$a1, 0xFF	 # AND Immediate
		addiu	$sp, -0x18	 # Add Immediate Unsigned
		andi	$a0, 0xFF	 # AND Immediate
		slti	$t9, $a0, 0xB	 # Set on Less Than Immediate
		bnez	$t9, loc_8C005ECC  # Branch on Not Zero
		sw	$ra, 0x14($sp)	 # Store Word
		slti	$t8, $a0, 0x20	 # Set on Less Than Immediate
		beqzl	$t8, loc_8C005ED0  # Branch on Zero Likely
		lui	$a0, 0x8C00	 # Load	Upper Immediate
		slti	$t7, $a1, 0x10	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C005EE4  # Branch on Not Zero	Likely
		addiu	$t6, $a0, 0xFFF5  # Add	Immediate Unsigned

loc_8C005ECC:				 # CODE	XREF: seg000:8C005EACj
		lui	$a0, 0x8C00	 # Load	Upper Immediate

loc_8C005ED0:				 # CODE	XREF: seg000:8C005EB8j
		jal	sub_8C00583C	 # Jump	And Link
		addiu	$a0, 0x6110	 # Add Immediate Unsigned
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C005EE4:				 # CODE	XREF: seg000:8C005EC4j
		sltiu	$t5, $t6, 0x15	 # Set on Less Than Immediate Unsigned
		beqz	$t5, loc_8C006104  # Branch on Zero
		move	$v1, $a0
		lui	$t3, 0x8C00	 # Load	Upper Immediate
		addiu	$t3, 0x5F0C	 # Add Immediate Unsigned
		sll	$t4, $t6, 2	 # Shift Left Logical
		addu	$t4, $t3, $t4	 # Add Unsigned
		lw	$t6, 0($t4)	 # Load	Word
		jr	$t6		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0x5F60($0)	 # Load	Word
		lw	$0, 0x5F74($0)	 # Load	Word
		lw	$0, 0x5F88($0)	 # Load	Word
		lw	$0, 0x5F9C($0)	 # Load	Word
		lw	$0, 0x5FB0($0)	 # Load	Word
		lw	$0, 0x5FC4($0)	 # Load	Word
		lw	$0, 0x5FD8($0)	 # Load	Word
		lw	$0, 0x5FEC($0)	 # Load	Word
		lw	$0, 0x6000($0)	 # Load	Word
		lw	$0, 0x6014($0)	 # Load	Word
		lw	$0, 0x6028($0)	 # Load	Word
		lw	$0, 0x603C($0)	 # Load	Word
		lw	$0, 0x6050($0)	 # Load	Word
		lw	$0, 0x6064($0)	 # Load	Word
		lw	$0, 0x6078($0)	 # Load	Word
		lw	$0, 0x608C($0)	 # Load	Word
		lw	$0, 0x60A0($0)	 # Load	Word
		lw	$0, 0x60B4($0)	 # Load	Word
		lw	$0, 0x60C8($0)	 # Load	Word
		lw	$0, 0x60DC($0)	 # Load	Word
		lw	$0, 0x60F0($0)	 # Load	Word
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x4C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x50($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x54($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x58($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x5C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x60($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x64($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x68($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x6C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x70($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x74($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x78($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x7C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x80($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x84($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x88($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x8C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x90($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x94($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x98($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lui	$1, 0xBB00	 # Load	Upper Immediate
		sw	$a1, 0x9C($1)	 # Store Word
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006104:				 # CODE	XREF: seg000:8C005EE8j
		lw	$ra, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
aInvalidInt_lin:.ascii "Invalid INT_line or Invalid INT_priority\r\n"<0>
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C006140:				 # CODE	XREF: sub_8C0062E4+E0p
					 # sub_8C0062E4+124p ...
		addiu	$v1, $gp, 0x80A0  # Add	Immediate Unsigned
		lw	$t9, 0($v1)	 # Load	Word
		lw	$t8, 0($t9)	 # Load	Word
		li	$t7, 0xFFFFFFDF	 # Load	Immediate
		and	$t8, $t7	 # AND
		sw	$t8, 0($t9)	 # Store Word
		lw	$t6, 0($v1)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x14($t6)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lw	$t4, 0($t5)	 # Load	Word
		li	$t3, 0xFFFFFFFB	 # Load	Immediate
		and	$t4, $t3	 # AND
		sw	$t4, 0($t5)	 # Store Word
		lw	$t2, 0($v1)	 # Load	Word
		sw	$t0, 0x10($t2)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		li	$t0, 0x80	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 0x18($t9)	 # Store Word
 # End of function sub_8C006140


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C006190:				 # CODE	XREF: sub_8C0062E4+F8p
					 # sub_8C0062E4+144p ...
		addiu	$v1, $gp, 0x80A0  # Add	Immediate Unsigned
		lw	$t9, 0($v1)	 # Load	Word
		lw	$t8, 0($t9)	 # Load	Word
		li	$t7, 0xFFFFFFDF	 # Load	Immediate
		and	$t8, $t7	 # AND
		sw	$t8, 0($t9)	 # Store Word
		lw	$t6, 0($v1)	 # Load	Word
		lw	$t5, 0($t6)	 # Load	Word
		ori	$t5, 4		 # OR Immediate
		sw	$t5, 0($t6)	 # Store Word
		lw	$t4, 0($v1)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x10($t4)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		li	$t0, 0x80	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 0x18($t3)	 # Store Word
 # End of function sub_8C006190


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0061D4:				 # CODE	XREF: sub_8C0064B8+1A4p
		addiu	$v1, $gp, 0x80A0  # Add	Immediate Unsigned
		lw	$t9, 0($v1)	 # Load	Word
		lw	$t8, 0($t9)	 # Load	Word
		li	$t7, 0xFFFFFFDF	 # Load	Immediate
		and	$t8, $t7	 # AND
		sw	$t8, 0($t9)	 # Store Word
		lw	$t6, 0($v1)	 # Load	Word
		lw	$t5, 0($t6)	 # Load	Word
		li	$t4, 0xFFFFFFFB	 # Load	Immediate
		and	$t5, $t4	 # AND
		sw	$t5, 0($t6)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x10($t3)	 # Store Word
		lw	$t2, 0($v1)	 # Load	Word
		li	$t0, 0x80	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 0x18($t2)	 # Store Word
 # End of function sub_8C0061D4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00621C:				 # CODE	XREF: sub_8C0029C0+60p
		lui	$1, 0xBA00	 # Load	Upper Immediate
		addiu	$v1, $gp, 0x80A0  # Add	Immediate Unsigned
		lui	$t0, 0xBA00	 # Load	Upper Immediate
		sw	$t0, 0($v1)	 # Store Word
		li	$t0, 4		 # Load	Immediate
		sw	$t0, 0x18($1)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		li	$t0, 0xF	 # Load	Immediate
		sw	$t0, 0x10($t9)	 # Store Word
		lw	$t8, 0($v1)	 # Load	Word
		sw	$0, 0x1C($t8)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$1, 0xBA40	 # Load	Upper Immediate
		sw	$0, 0x18($t7)	 # Store Word
		lw	$t6, 0($v1)	 # Load	Word
		li	$t0, 2		 # Load	Immediate
		sw	$t0, 0xC($t6)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x10($t5)	 # Store Word
		lw	$t4, 0($v1)	 # Load	Word
		li	$t0, 0xC5	 # Load	Immediate
		sw	$t0, 0($t4)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		li	$t0, 0x80	 # Load	Immediate
		sw	$t0, 0x18($t3)	 # Store Word
		lui	$t0, 0xBA40	 # Load	Upper Immediate
		sw	$t0, 0($v1)	 # Store Word
		li	$t0, 4		 # Load	Immediate
		sw	$t0, 0x18($1)	 # Store Word
		lw	$t2, 0($v1)	 # Load	Word
		li	$t0, 0xF	 # Load	Immediate
		sw	$t0, 0x10($t2)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		sw	$0, 0x1C($t9)	 # Store Word
		lw	$t8, 0($v1)	 # Load	Word
		sw	$0, 0x18($t8)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		li	$t0, 2		 # Load	Immediate
		sw	$t0, 0xC($t7)	 # Store Word
		lw	$t6, 0($v1)	 # Load	Word
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x10($t6)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		li	$t0, 0xC5	 # Load	Immediate
		sw	$t0, 0($t5)	 # Store Word
		lw	$t4, 0($v1)	 # Load	Word
		li	$t0, 0x80	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sw	$t0, 0x18($t4)	 # Store Word
 # End of function sub_8C00621C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0062E4:				 # CODE	XREF: sub_8C007C30+1Cp
					 # sub_8C007CB0+2B8p ...

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		andi	$s4, $a0, 0xFF	 # AND Immediate
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		andi	$s5, $a1, 0xFF	 # AND Immediate
		sw	$s2, 0x30+var_18($sp)  # Store Word
		move	$s2, $a2
		sw	$s3, 0x30+var_14($sp)  # Store Word
		move	$s3, $a3
		sw	$s0, 0x30+var_20($sp)  # Store Word
		addiu	$s0, $gp, 0x80A0  # Add	Immediate Unsigned
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		bnez	$s4, loc_8C006358  # Branch on Not Zero
		move	$s1, $v0
		lui	$t0, 0xBA00	 # Load	Upper Immediate
		sw	$t0, 0($s0)	 # Store Word
		lw	$t6, 0($t0)	 # Load	Word
		ori	$t6, 0x24	 # OR Immediate
		sw	$t6, 0($t0)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		bnezl	$t5, loc_8C0063B8  # Branch on Not Zero	Likely
		lw	$t2, 8($v1)	 # Load	Word
		j	loc_8C0063A0	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006358:				 # CODE	XREF: sub_8C0062E4+3Cj
		li	$t8, 1		 # Load	Immediate
		bne	$s4, $t8, loc_8C006390	# Branch on Not	Equal
		lui	$t0, 0xBA40	 # Load	Upper Immediate
		sw	$t0, 0($s0)	 # Store Word
		lw	$t6, 0($t0)	 # Load	Word
		ori	$t6, 0x24	 # OR Immediate
		sw	$t6, 0($t0)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		bnezl	$t5, loc_8C0063B8  # Branch on Not Zero	Likely
		lw	$t2, 8($v1)	 # Load	Word
		j	loc_8C0063A0	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006390:				 # CODE	XREF: sub_8C0062E4+78j
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C006490	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0063A0:				 # CODE	XREF: sub_8C0062E4+6Cj
					 # sub_8C0062E4+A4j
		lw	$v1, 0($s0)	 # Load	Word

loc_8C0063A4:				 # CODE	XREF: sub_8C0062E4+C8j
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		beqzl	$t5, loc_8C0063A4  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t2, 8($v1)	 # Load	Word

loc_8C0063B8:				 # CODE	XREF: sub_8C0062E4+64j
					 # sub_8C0062E4+9Cj
		li	$t9, 8		 # Load	Immediate
		beql	$t2, $t9, loc_8C0063DC	# Branch on Equal Likely
		lw	$t8, 0($s0)	 # Load	Word
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C006490	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0063DC:				 # CODE	XREF: sub_8C0062E4+D8j
		jal	sub_8C006190	 # Jump	And Link
		sw	$s5, 4($t8)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word

loc_8C0063E8:				 # CODE	XREF: sub_8C0062E4+10Cj
		lw	$t6, 0x10($v1)	 # Load	Word
		andi	$t7, $t6, 1	 # AND Immediate
		beqzl	$t7, loc_8C0063E8  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 8($v1)	 # Load	Word
		li	$t3, 0x18	 # Load	Immediate
		beq	$t4, $t3, loc_8C006454	# Branch on Equal
		nop
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C006490	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006420:				 # CODE	XREF: sub_8C0062E4+170j
		lw	$t2, 0($s0)	 # Load	Word
		addiu	$s2, 1		 # Add Immediate Unsigned
		jal	sub_8C006190	 # Jump	And Link
		sw	$t8, 4($t2)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word

loc_8C006434:				 # CODE	XREF: sub_8C0062E4+158j
		lw	$t6, 0x10($v1)	 # Load	Word
		andi	$t7, $t6, 1	 # AND Immediate
		beqzl	$t7, loc_8C006434  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 8($v1)	 # Load	Word
		li	$t3, 0x28	 # Load	Immediate
		bne	$t4, $t3, loc_8C006464	# Branch on Not	Equal
		addiu	$s3, 0xFFFF	 # Add Immediate Unsigned

loc_8C006454:				 # CODE	XREF: sub_8C0062E4+11Cj
		bnezl	$s3, loc_8C006420  # Branch on Not Zero	Likely
		lbu	$t8, 0($s2)	 # Load	Byte Unsigned
		j	loc_8C00647C	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006464:				 # CODE	XREF: sub_8C0062E4+168j
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C006490	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00647C:				 # CODE	XREF: sub_8C0062E4+178j
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		li	$v1, 0		 # Load	Immediate

loc_8C006490:				 # CODE	XREF: sub_8C0062E4+B4j
					 # sub_8C0062E4+F0j ...
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		addiu	$sp, 0x30	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C0062E4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0064B8:				 # CODE	XREF: sub_8C008078+1Cp

var_20		= -0x20
var_1C		= -0x1C
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		sw	$s1, 0x30+var_1C($sp)  # Store Word
		sw	$s4, 0x30+var_10($sp)  # Store Word
		andi	$s4, $a0, 0xFF	 # AND Immediate
		sw	$s5, 0x30+var_C($sp)  #	Store Word
		andi	$s5, $a1, 0xFF	 # AND Immediate
		sw	$s2, 0x30+var_18($sp)  # Store Word
		move	$s2, $a2
		sw	$s3, 0x30+var_14($sp)  # Store Word
		move	$s3, $a3
		sw	$s0, 0x30+var_20($sp)  # Store Word
		addiu	$s0, $gp, 0x80A0  # Add	Immediate Unsigned
		jal	sub_8C00017C	 # Jump	And Link
		li	$a0, 1		 # Load	Immediate
		bnez	$s4, loc_8C00652C  # Branch on Not Zero
		move	$s1, $v0
		lui	$t0, 0xBA00	 # Load	Upper Immediate
		sw	$t0, 0($s0)	 # Store Word
		lw	$t6, 0($t0)	 # Load	Word
		ori	$t6, 0x24	 # OR Immediate
		sw	$t6, 0($t0)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		bnezl	$t5, loc_8C00658C  # Branch on Not Zero	Likely
		lw	$t2, 8($v1)	 # Load	Word
		j	loc_8C006574	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00652C:				 # CODE	XREF: sub_8C0064B8+3Cj
		li	$t8, 1		 # Load	Immediate
		bne	$s4, $t8, loc_8C006564	# Branch on Not	Equal
		lui	$t0, 0xBA40	 # Load	Upper Immediate
		sw	$t0, 0($s0)	 # Store Word
		lw	$t6, 0($t0)	 # Load	Word
		ori	$t6, 0x24	 # OR Immediate
		sw	$t6, 0($t0)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		bnezl	$t5, loc_8C00658C  # Branch on Not Zero	Likely
		lw	$t2, 8($v1)	 # Load	Word
		j	loc_8C006574	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006564:				 # CODE	XREF: sub_8C0064B8+78j
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C0066B8	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006574:				 # CODE	XREF: sub_8C0064B8+6Cj
					 # sub_8C0064B8+A4j
		lw	$v1, 0($s0)	 # Load	Word

loc_8C006578:				 # CODE	XREF: sub_8C0064B8+C8j
		lw	$t4, 0x10($v1)	 # Load	Word
		andi	$t5, $t4, 1	 # AND Immediate
		beqzl	$t5, loc_8C006578  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t2, 8($v1)	 # Load	Word

loc_8C00658C:				 # CODE	XREF: sub_8C0064B8+64j
					 # sub_8C0064B8+9Cj
		li	$t9, 8		 # Load	Immediate
		beql	$t2, $t9, loc_8C0065B0	# Branch on Equal Likely
		lw	$t8, 0($s0)	 # Load	Word
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C0066B8	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0065B0:				 # CODE	XREF: sub_8C0064B8+D8j
		jal	sub_8C006190	 # Jump	And Link
		sw	$s5, 4($t8)	 # Store Word
		lw	$v1, 0($s0)	 # Load	Word

loc_8C0065BC:				 # CODE	XREF: sub_8C0064B8+10Cj
		lw	$t6, 0x10($v1)	 # Load	Word
		andi	$t7, $t6, 1	 # AND Immediate
		beqzl	$t7, loc_8C0065BC  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t4, 8($v1)	 # Load	Word
		li	$t3, 0x40	 # Load	Immediate
		beql	$t4, $t3, loc_8C0065F4	# Branch on Equal Likely
		addiu	$s3, 0xFFFF	 # Add Immediate Unsigned
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C0066B8	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0065F4:				 # CODE	XREF: sub_8C0064B8+11Cj
		beqz	$s3, loc_8C00665C  # Branch on Zero
		nop

loc_8C0065FC:				 # CODE	XREF: sub_8C0064B8+17Cj
		jal	sub_8C006190	 # Jump	And Link
		nop
		lw	$v1, 0($s0)	 # Load	Word

loc_8C006608:				 # CODE	XREF: sub_8C0064B8+158j
		lw	$t9, 0x10($v1)	 # Load	Word
		andi	$t2, $t9, 1	 # AND Immediate
		beqzl	$t2, loc_8C006608  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t7, 8($v1)	 # Load	Word
		li	$t6, 0x50	 # Load	Immediate
		bne	$t7, $t6, loc_8C006644	# Branch on Not	Equal
		nop
		lw	$t4, 4($v1)	 # Load	Word
		addiu	$s2, 1		 # Add Immediate Unsigned
		addiu	$s3, 0xFFFF	 # Add Immediate Unsigned
		bnez	$s3, loc_8C0065FC  # Branch on Not Zero
		sb	$t4, -1($s2)	 # Store Byte
		j	loc_8C00665C	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006644:				 # CODE	XREF: sub_8C0064B8+168j
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C0066B8	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C00665C:				 # CODE	XREF: sub_8C0064B8+13Cj
					 # sub_8C0064B8+184j
		jal	sub_8C0061D4	 # Jump	And Link
		nop
		lw	$v1, 0($s0)	 # Load	Word

loc_8C006668:				 # CODE	XREF: sub_8C0064B8+1B8j
		lw	$t9, 0x10($v1)	 # Load	Word
		andi	$t2, $t9, 1	 # AND Immediate
		beqzl	$t2, loc_8C006668  # Branch on Zero Likely
		lw	$v1, 0($s0)	 # Load	Word
		lw	$t7, 8($v1)	 # Load	Word
		li	$t6, 0x58	 # Load	Immediate
		beql	$t7, $t6, loc_8C0066A0	# Branch on Equal Likely
		lw	$t3, 0($s0)	 # Load	Word
		jal	sub_8C006140	 # Jump	And Link
		nop
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		j	loc_8C0066B8	 # Jump
		li	$v1, 0xFFFFFFFF	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0066A0:				 # CODE	XREF: sub_8C0064B8+1C8j
		lw	$t3, 4($t3)	 # Load	Word
		jal	sub_8C006140	 # Jump	And Link
		sb	$t3, 0($s2)	 # Store Byte
		jal	sub_8C00017C	 # Jump	And Link
		move	$a0, $s1
		li	$v1, 0		 # Load	Immediate

loc_8C0066B8:				 # CODE	XREF: sub_8C0064B8+B4j
					 # sub_8C0064B8+F0j ...
		lw	$s5, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_20($sp)  # Load Word
		lw	$s1, 0x30+var_1C($sp)  # Load Word
		lw	$s2, 0x30+var_18($sp)  # Load Word
		lw	$s3, 0x30+var_14($sp)  # Load Word
		lw	$s4, 0x30+var_10($sp)  # Load Word
		addiu	$sp, 0x30	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C0064B8


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0066E0:				 # CODE	XREF: sub_8C0029C0+3C8p
		addiu	$v1, $gp, 0x8010  # Add	Immediate Unsigned
		lw	$t9, 0($v1)	 # Load	Word
		lui	$t8, 0x8C01	 # Load	Upper Immediate
		addiu	$t8, 0x8A50	 # Add Immediate Unsigned
		sw	$t8, 0($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		addiu	$t6, $gp, 0x803E  # Add	Immediate Unsigned
		sw	$t6, 4($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lui	$t2, 0x8C02	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t2, 0x8A50	 # Add Immediate Unsigned
		addiu	$t4, $gp, 0x805C  # Add	Immediate Unsigned
		sw	$t4, 8($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		sw	$t2, 0xC($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		addiu	$t8, 0xA0C	 # Add Immediate Unsigned
		sw	$t8, 0x10($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x72B4	 # Add Immediate Unsigned
		addiu	$t6, 0xB2C	 # Add Immediate Unsigned
		sw	$t6, 0x14($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		sw	$t4, 0x18($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		addiu	$t2, 0xA28	 # Add Immediate Unsigned
		sw	$t2, 0x1C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0xD6C	 # Add Immediate Unsigned
		addiu	$t8, 0xB8C	 # Add Immediate Unsigned
		sw	$t8, 0x20($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		sw	$t6, 0x24($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		addiu	$t4, 0x1B50	 # Add Immediate Unsigned
		sw	$t4, 0x28($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		addiu	$t2, 0x2804	 # Add Immediate Unsigned
		sw	$t2, 0x2C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x2558	 # Add Immediate Unsigned
		addiu	$t8, 0x2948	 # Add Immediate Unsigned
		sw	$t8, 0x30($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		addiu	$t4, 0x22B4	 # Add Immediate Unsigned
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		sw	$t6, 0x34($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		sw	$t4, 0x38($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		addiu	$t2, 0x583C	 # Add Immediate Unsigned
		sw	$t2, 0x3C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		addiu	$t8, 0x5874	 # Add Immediate Unsigned
		sw	$t8, 0x40($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		addiu	$t6, 0x58FC	 # Add Immediate Unsigned
		sw	$t6, 0x44($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x5934	 # Add Immediate Unsigned
		sw	$t4, 0x48($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		addiu	$t2, 0x1410	 # Add Immediate Unsigned
		sw	$t2, 0x4C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		addiu	$t8, 0x4FB0	 # Add Immediate Unsigned
		sw	$t8, 0x50($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x5060	 # Add Immediate Unsigned
		addiu	$t6, 0x5004	 # Add Immediate Unsigned
		sw	$t6, 0x54($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		sw	$t4, 0x58($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		addiu	$t2, 0x50B4	 # Add Immediate Unsigned
		sw	$t2, 0x5C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		addiu	$t8, 0x5140	 # Add Immediate Unsigned
		sw	$t8, 0x60($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x5124	 # Add Immediate Unsigned
		sw	$t6, 0x64($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x510C	 # Add Immediate Unsigned
		sw	$t4, 0x68($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t8, 0x132C	 # Add Immediate Unsigned
		addiu	$t2, 0x50DC	 # Add Immediate Unsigned
		sw	$t2, 0x6C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		sw	$t8, 0x70($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		addiu	$t6, 0x5DE0	 # Add Immediate Unsigned
		sw	$t6, 0x74($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		addiu	$t4, 0x5DFC	 # Add Immediate Unsigned
		sw	$t4, 0x78($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t8, 0x5C88	 # Add Immediate Unsigned
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		addiu	$t2, 0x5E9C	 # Add Immediate Unsigned
		sw	$t2, 0x7C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		addiu	$t6, 0x1950	 # Add Immediate Unsigned
		lui	$t4, 0x8C00	 # Load	Upper Immediate
		lui	$t2, 0x8C00	 # Load	Upper Immediate
		sw	$t8, 0x80($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		sw	$t6, 0x84($t7)	 # Store Word
		lw	$t5, 0($v1)	 # Load	Word
		addiu	$t4, 0x19FC	 # Add Immediate Unsigned
		sw	$t4, 0x88($t5)	 # Store Word
		lw	$t3, 0($v1)	 # Load	Word
		addiu	$t2, 0x62E4	 # Add Immediate Unsigned
		sw	$t2, 0x8C($t3)	 # Store Word
		lw	$t9, 0($v1)	 # Load	Word
		addiu	$t8, 0x64B8	 # Add Immediate Unsigned
		sw	$t8, 0x90($t9)	 # Store Word
		lw	$t7, 0($v1)	 # Load	Word
		lui	$t6, 0x8C00	 # Load	Upper Immediate
		addiu	$t6, 0x7900	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		sw	$t6, 0x94($t7)	 # Store Word
 # End of function sub_8C0066E0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C006940:				 # CODE	XREF: sub_8C006D0C+20Cp
		addiu	$v1, $gp, 0x80A4  # Add	Immediate Unsigned
		lw	$t5, 0($v1)	 # Load	Word
		lhu	$t7, 0($t5)	 # Load	Halfword Unsigned
		li	$t8, 0xFFFFFC00	 # Load	Immediate
		and	$t9, $t8, $t7	 # AND
		or	$t6, $t9, $a0	 # OR
		sh	$t6, 0($t5)	 # Store Halfword
		lw	$t5, 0($v1)	 # Load	Word
		lhu	$t9, 2($t5)	 # Load	Halfword Unsigned
		li	$t2, 0xFFFFFC00	 # Load	Immediate
		and	$t3, $t2, $t9	 # AND
		or	$t8, $t3, $a1	 # OR
		sh	$t8, 2($t5)	 # Store Halfword
		lw	$t7, 0($v1)	 # Load	Word
		lhu	$t3, 4($t7)	 # Load	Halfword Unsigned
		li	$t4, 0xFFFFFC00	 # Load	Immediate
		and	$t5, $t4, $t3	 # AND
		or	$t2, $t5, $a2	 # OR
		sh	$t2, 4($t7)	 # Store Halfword
		lw	$t9, 0($v1)	 # Load	Word
		lhu	$t5, 8($t9)	 # Load	Halfword Unsigned
		li	$t6, 0xFFFFFC00	 # Load	Immediate
		and	$t7, $t6, $t5	 # AND
		or	$t4, $t7, $a3	 # OR
		jr	$ra		 # Jump	Register
		sh	$t4, 8($t9)	 # Store Halfword
 # End of function sub_8C006940


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1

sub_8C0069A8:				 # CODE	XREF: sub_8C006D0C+8Cp
					 # sub_8C006D0C+98p ...
		lw	$t9, -0x7F5C($gp)  # Load Word
		andi	$a0, 0xFFFF	 # AND Immediate
		sll	$t8, $a0, 2	 # Shift Left Logical
		addu	$t7, $t9, $t8	 # Add Unsigned
		jr	$ra		 # Jump	Register
		sw	$a1, 0x40($t7)	 # Store Word
 # End of function sub_8C0069A8

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0069C0:				 # CODE	XREF: sub_8C007408+98p
					 # sub_8C0074E4+48p ...
		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$s4, 0x10($sp)	 # Store Word
		andi	$s4, $a0, 0xFFFF  # AND	Immediate
		sw	$s3, 0xC($sp)	 # Store Word
		addiu	$s3, $gp, 0x80A4  # Add	Immediate Unsigned
		lw	$v1, 0($s3)	 # Load	Word
		addiu	$t5, $a2, 3	 # Add Immediate Unsigned
		li	$t4, 0xFFFFFFFC	 # Load	Immediate
		sw	$s0, 0($sp)	 # Store Word
		sw	$s1, 4($sp)	 # Store Word
		sw	$s2, 8($sp)	 # Store Word
		sw	$s5, 0x14($sp)	 # Store Word
		sw	$s6, 0x18($sp)	 # Store Word
		lhu	$t6, 8($v1)	 # Load	Halfword Unsigned
		lhu	$t9, 4($v1)	 # Load	Halfword Unsigned
		andi	$s6, $a3, 0xFFFF  # AND	Immediate
		li	$a3, 0		 # Load	Immediate
		and	$a2, $t4, $t5	 # AND
		andi	$s1, $a2, 0xFFFF  # AND	Immediate
		andi	$s2, $t6, 0x3FF	 # AND Immediate
		andi	$s5, $a1, 0xFFFF  # AND	Immediate
		li	$t7, 0xFFFFFFFC	 # Load	Immediate
		andi	$a1, $t9, 0x3FF	 # AND Immediate
		addiu	$t8, $a1, 3	 # Add Immediate Unsigned
		and	$a1, $t7, $t8	 # AND
		slt	$t7, $a3, $s6	 # Set on Less Than
		beqz	$t7, loc_8C006B54  # Branch on Zero
		andi	$a1, 0xFFFF	 # AND Immediate
		li	$v1, 0		 # Load	Immediate

loc_8C006A34:				 # CODE	XREF: seg000:8C006B4Cj
		slt	$t8, $v1, $s1	 # Set on Less Than
		beqzl	$t8, loc_8C006B44  # Branch on Zero Likely
		addiu	$a3, 1		 # Add Immediate Unsigned

loc_8C006A40:				 # CODE	XREF: seg000:8C006B38j
		addu	$s0, $a3, $s5	 # Add Unsigned
		sra	$t3, $s0, 31	 # Shift Right Arithmetic
		andi	$t2, $t3, 1	 # AND Immediate
		addu	$t9, $t2, $s0	 # Add Unsigned
		sra	$t8, $t9, 1	 # Shift Right Arithmetic
		addu	$t6, $v1, $s4	 # Add Unsigned
		mtlo	$t6		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x73  # s
		.byte	 5  #  
		.byte 0xC8  # È
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sra	$t3, $s0, 31	 # Shift Right Arithmetic
		andi	$t9, 0xFFFF	 # AND Immediate
		andi	$t4, $t9, 3	 # AND Immediate
		sll	$a0, $t4, 1	 # Shift Left Logical
		andi	$a0, 0xFF	 # AND Immediate
		srl	$t5, $t9, 2	 # Shift Right Logical
		andi	$t2, $t3, 1	 # AND Immediate
		addu	$t9, $t2, $s0	 # Add Unsigned
		li	$t7, 0xFFFFFFFE	 # Load	Immediate
		and	$t8, $t9, $t7	 # AND
		subu	$t6, $s0, $t8	 # Subtract Unsigned
		bnez	$t6, loc_8C006AC0  # Branch on Not Zero
		andi	$a2, $t5, 0xFFFF  # AND	Immediate
		mult	$a1, $s2	 # Multiply
		sra	$t4, $t9, 31	 # Shift Right Arithmetic
		andi	$t3, $t4, 3	 # AND Immediate
		addu	$t2, $t3, $t9	 # Add Unsigned
		sra	$t7, $t2, 2	 # Shift Right Arithmetic
		sra	$t9, $t7, 31	 # Shift Right Arithmetic
		andi	$t8, $t9, 1	 # AND Immediate
		addu	$t7, $t8, $t7	 # Add Unsigned
		sra	$t6, $t7, 1	 # Shift Right Arithmetic
		addu	$a2, $t6	 # Add Unsigned
		andi	$a2, 0xFFFF	 # AND Immediate

loc_8C006AC0:				 # CODE	XREF: seg000:8C006A8Cj
		mtlo	$v1		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x70  # p
		.byte 0xF1  # ñ
		.byte 0xC8  # È
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$1, 0x30($sp)	 # Load	Word
		andi	$t9, 0xFFFF	 # AND Immediate
		srl	$t4, $t9, 2	 # Shift Right Logical
		andi	$t9, 3		 # AND Immediate
		sll	$t9, 1		 # Shift Left Logical
		andi	$t8, $t4, 0xFFFF  # AND	Immediate
		addu	$t2, $1, $t8	 # Add Unsigned
		lbu	$t8, 0($t2)	 # Load	Byte Unsigned
		li	$t2, 0xC0	 # Load	Immediate
		sllv	$t9, $t8, $t9	 # Shift Left Logical Variable
		andi	$s0, $t9, 0xC0	 # AND Immediate
		lw	$t9, 0($s3)	 # Load	Word
		srav	$t3, $t2, $a0	 # Shift Right Arithmetic Variable
		addiu	$t6, $t9, 0x440	 # Add Immediate Unsigned
		addu	$t7, $t6, $a2	 # Add Unsigned
		lbu	$t6, 0($t7)	 # Load	Byte Unsigned
		nor	$t9, $0, $t3	 # NOR
		and	$t8, $t6, $t9	 # AND
		sb	$t8, 0($t7)	 # Store Byte
		lw	$t4, 0($s3)	 # Load	Word
		srlv	$t5, $s0, $a0	 # Shift Right Logical Variable
		addiu	$t2, $t4, 0x440	 # Add Immediate Unsigned
		addu	$t3, $t2, $a2	 # Add Unsigned
		lbu	$t9, 0($t3)	 # Load	Byte Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate
		slt	$t8, $v1, $s1	 # Set on Less Than
		or	$t9, $t5	 # OR
		bnez	$t8, loc_8C006A40  # Branch on Not Zero
		sb	$t9, 0($t3)	 # Store Byte
		addiu	$a3, 1		 # Add Immediate Unsigned

loc_8C006B44:				 # CODE	XREF: seg000:8C006A38j
		andi	$a3, 0xFFFF	 # AND Immediate
		slt	$t7, $a3, $s6	 # Set on Less Than
		bnezl	$t7, loc_8C006A34  # Branch on Not Zero	Likely
		li	$v1, 0		 # Load	Immediate

loc_8C006B54:				 # CODE	XREF: seg000:8C006A28j
		lw	$s6, 0x18($sp)	 # Load	Word
		lw	$s0, 0($sp)	 # Load	Word
		lw	$s1, 4($sp)	 # Load	Word
		lw	$s2, 8($sp)	 # Load	Word
		lw	$s3, 0xC($sp)	 # Load	Word
		lw	$s4, 0x10($sp)	 # Load	Word
		lw	$s5, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C006B78:				 # CODE	XREF: sub_8C007804+38p
					 # sub_8C007804+54p ...
		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$s4, 0x10($sp)	 # Store Word
		andi	$s4, $a0, 0xFFFF  # AND	Immediate
		sw	$s2, 8($sp)	 # Store Word
		addiu	$s2, $gp, 0x80A4  # Add	Immediate Unsigned
		lw	$v1, 0($s2)	 # Load	Word
		sw	$s0, 0($sp)	 # Store Word
		sw	$s1, 4($sp)	 # Store Word
		sw	$s5, 0x14($sp)	 # Store Word
		sw	$s6, 0x18($sp)	 # Store Word
		sw	$s3, 0xC($sp)	 # Store Word
		lhu	$t6, 8($v1)	 # Load	Halfword Unsigned
		li	$t7, 0xFFFFFFFC	 # Load	Immediate
		lhu	$t9, 4($v1)	 # Load	Halfword Unsigned
		andi	$s5, $a1, 0xFFFF  # AND	Immediate
		andi	$s6, $a3, 0xFFFF  # AND	Immediate
		addiu	$t5, $a2, 3	 # Add Immediate Unsigned
		andi	$s1, $t6, 0x3FF	 # AND Immediate
		li	$t4, 0xFFFFFFFC	 # Load	Immediate
		andi	$a1, $t9, 0x3FF	 # AND Immediate
		addiu	$t8, $a1, 3	 # Add Immediate Unsigned
		and	$a1, $t7, $t8	 # AND
		and	$a2, $t4, $t5	 # AND
		andi	$s3, $a2, 0xFFFF  # AND	Immediate
		li	$a2, 0		 # Load	Immediate
		slt	$t5, $a2, $s6	 # Set on Less Than
		beqz	$t5, loc_8C006CE8  # Branch on Zero
		andi	$a1, 0xFFFF	 # AND Immediate
		li	$a3, 0		 # Load	Immediate

loc_8C006BEC:				 # CODE	XREF: seg000:8C006CE0j
		slt	$t6, $a3, $s3	 # Set on Less Than
		beqzl	$t6, loc_8C006CD8  # Branch on Zero Likely
		addiu	$a2, 1		 # Add Immediate Unsigned

loc_8C006BF8:				 # CODE	XREF: seg000:8C006CCCj
		addu	$s0, $a2, $s5	 # Add Unsigned
		sra	$t3, $s0, 31	 # Shift Right Arithmetic
		andi	$t2, $t3, 1	 # AND Immediate
		addu	$t9, $t2, $s0	 # Add Unsigned
		sra	$t8, $t9, 1	 # Shift Right Arithmetic
		addu	$t6, $a3, $s4	 # Add Unsigned
		mtlo	$t6		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x73  # s
		.byte	 5  #  
		.byte 0xC8  # È
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		sra	$t3, $s0, 31	 # Shift Right Arithmetic
		andi	$t9, 0xFFFF	 # AND Immediate
		andi	$t4, $t9, 3	 # AND Immediate
		sll	$a0, $t4, 1	 # Shift Left Logical
		andi	$a0, 0xFF	 # AND Immediate
		srl	$t5, $t9, 2	 # Shift Right Logical
		andi	$t2, $t3, 1	 # AND Immediate
		addu	$t9, $t2, $s0	 # Add Unsigned
		li	$t7, 0xFFFFFFFE	 # Load	Immediate
		and	$t8, $t9, $t7	 # AND
		subu	$t6, $s0, $t8	 # Subtract Unsigned
		bnez	$t6, loc_8C006C78  # Branch on Not Zero
		andi	$v1, $t5, 0xFFFF  # AND	Immediate
		mult	$a1, $s1	 # Multiply
		sra	$t4, $t9, 31	 # Shift Right Arithmetic
		andi	$t3, $t4, 3	 # AND Immediate
		addu	$t2, $t3, $t9	 # Add Unsigned
		sra	$t7, $t2, 2	 # Shift Right Arithmetic
		sra	$t9, $t7, 31	 # Shift Right Arithmetic
		andi	$t8, $t9, 1	 # AND Immediate
		addu	$t7, $t8, $t7	 # Add Unsigned
		sra	$t6, $t7, 1	 # Shift Right Arithmetic
		addu	$v1, $t6	 # Add Unsigned
		andi	$v1, 0xFFFF	 # AND Immediate

loc_8C006C78:				 # CODE	XREF: seg000:8C006C44j
		lw	$t9, 0($s2)	 # Load	Word
		lbu	$1, 0x33($sp)	 # Load	Byte Unsigned
		addiu	$t4, $t9, 0x440	 # Add Immediate Unsigned
		addu	$t5, $t4, $v1	 # Add Unsigned
		lbu	$t4, 0($t5)	 # Load	Byte Unsigned
		li	$t8, 0xC0	 # Load	Immediate
		srav	$t9, $t8, $a0	 # Shift Right Arithmetic Variable
		nor	$t7, $0, $t9	 # NOR
		and	$t6, $t4, $t7	 # AND
		sb	$t6, 0($t5)	 # Store Byte
		lw	$t2, 0($s2)	 # Load	Word
		sll	$s0, $1, 6	 # Shift Left Logical
		addiu	$t8, $t2, 0x440	 # Add Immediate Unsigned
		addu	$t9, $t8, $v1	 # Add Unsigned
		lbu	$t7, 0($t9)	 # Load	Byte Unsigned
		addiu	$a3, 1		 # Add Immediate Unsigned
		andi	$a3, 0xFFFF	 # AND Immediate
		slt	$t6, $a3, $s3	 # Set on Less Than
		andi	$s0, 0xFF	 # AND Immediate
		srlv	$t3, $s0, $a0	 # Shift Right Logical Variable
		or	$t7, $t3	 # OR
		bnez	$t6, loc_8C006BF8  # Branch on Not Zero
		sb	$t7, 0($t9)	 # Store Byte
		addiu	$a2, 1		 # Add Immediate Unsigned

loc_8C006CD8:				 # CODE	XREF: seg000:8C006BF0j
		andi	$a2, 0xFFFF	 # AND Immediate
		slt	$t5, $a2, $s6	 # Set on Less Than
		bnezl	$t5, loc_8C006BEC  # Branch on Not Zero	Likely
		li	$a3, 0		 # Load	Immediate

loc_8C006CE8:				 # CODE	XREF: seg000:8C006BE0j
		lw	$s6, 0x18($sp)	 # Load	Word
		lw	$s0, 0($sp)	 # Load	Word
		lw	$s1, 4($sp)	 # Load	Word
		lw	$s2, 8($sp)	 # Load	Word
		lw	$s3, 0xC($sp)	 # Load	Word
		lw	$s4, 0x10($sp)	 # Load	Word
		lw	$s5, 0x14($sp)	 # Load	Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C006D0C:				 # CODE	XREF: sub_8C007240+28p

var_50		= -0x50
var_4C		= -0x4C
var_48		= -0x48
var_44		= -0x44
var_40		= -0x40
var_3C		= -0x3C
var_38		= -0x38
var_4		= -4

		addiu	$sp, -0x60	 # Add Immediate Unsigned
		sw	$ra, 0x60+var_4($sp)  #	Store Word
		sw	$s2, 0x60+var_48($sp)  # Store Word
		sw	$s4, 0x60+var_40($sp)  # Store Word
		andi	$s4, $a0, 0xFFFF  # AND	Immediate
		sw	$s5, 0x60+var_3C($sp)  # Store Word
		andi	$s5, $a1, 0xFFFF  # AND	Immediate
		sw	$s1, 0x60+var_4C($sp)  # Store Word
		andi	$s1, $a2, 0xFFFF  # AND	Immediate
		sw	$s3, 0x60+var_44($sp)  # Store Word
		andi	$s3, $a3, 0xFFFF  # AND	Immediate
		sw	$s0, 0x60+var_50($sp)  # Store Word
		addiu	$s0, $gp, 0x80A4  # Add	Immediate Unsigned
		addiu	$t8, $sp, 0x60+var_38  # Add Immediate Unsigned
		lui	$t9, 0x8C00	 # Load	Upper Immediate
		addiu	$t9, 0x6F9C	 # Add Immediate Unsigned
		addiu	$t7, $t9, 0x34	 # Add Immediate Unsigned

loc_8C006D50:				 # CODE	XREF: sub_8C006D0C+50j
		lw	$t6, 0($t9)	 # Load	Word
		addiu	$t9, 4		 # Add Immediate Unsigned
		addiu	$t8, 4		 # Add Immediate Unsigned
		bne	$t7, $t9, loc_8C006D50	# Branch on Not	Equal
		sw	$t6, -4($t8)	 # Store Word
		addiu	$v1, $s1, 3	 # Add Immediate Unsigned
		sra	$t4, $v1, 31	 # Shift Right Arithmetic
		andi	$t3, $t4, 3	 # AND Immediate
		addu	$t2, $t3, $v1	 # Add Unsigned
		sra	$t9, $t2, 2	 # Shift Right Arithmetic
		sll	$v1, $t9, 2	 # Shift Left Logical
		andi	$s1, $v1, 0xFFFF  # AND	Immediate
		li	$t7, 0xFFFFFFE0	 # Load	Immediate
		lui	$t6, 0x8C18	 # Load	Upper Immediate
		addiu	$t6, 0xDF7F	 # Add Immediate Unsigned
		and	$t8, $t7, $t6	 # AND
		sw	$t8, 0($s0)	 # Store Word
		li	$a0, 0		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
		li	$a0, 1		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFFFFFF00	 # Load	Immediate
		lui	$a1, 0xE600	 # Load	Upper Immediate
		ori	$a1, 0xB100	 # OR Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a0, 2		 # Load	Immediate
		li	$a0, 3		 # Load	Immediate
		lui	$a1, 0x53AB	 # Load	Upper Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		ori	$a1, 0x5900	 # OR Immediate
		li	$v1, 0		 # Load	Immediate
		mult	$s1, $s3	 # Multiply
		sra	$t2, $t8, 31	 # Shift Right Arithmetic
		andi	$t9, $t2, 3	 # AND Immediate
		addu	$t8, $t9, $t8	 # Add Unsigned
		sra	$s2, $t8, 2	 # Shift Right Arithmetic
		slt	$t7, $v1, $s2	 # Set on Less Than
		beqzl	$t7, loc_8C006E20  # Branch on Zero Likely
		li	$v1, 0		 # Load	Immediate

loc_8C006DF0:				 # CODE	XREF: sub_8C006D0C+108j
		lw	$t5, 0($s0)	 # Load	Word
		mult	$s1, $s3	 # Multiply
		sra	$t2, $t8, 31	 # Shift Right Arithmetic
		andi	$t9, $t2, 3	 # AND Immediate
		addu	$t8, $t9, $t8	 # Add Unsigned
		sra	$s2, $t8, 2	 # Shift Right Arithmetic
		addu	$t4, $t5, $v1	 # Add Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slt	$t7, $v1, $s2	 # Set on Less Than
		bnez	$t7, loc_8C006DF0  # Branch on Not Zero
		sb	$0, 0x440($t4)	 # Store Byte
		li	$v1, 0		 # Load	Immediate

loc_8C006E20:				 # CODE	XREF: sub_8C006D0C+DCj
					 # sub_8C006D0C+130j
		sll	$t9, $v1, 1	 # Shift Left Logical
		lw	$t6, 0($s0)	 # Load	Word
		addu	$t4, $sp, $t9	 # Add Unsigned
		lhu	$t2, 0x28($t4)	 # Load	Halfword Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		addu	$t5, $t6, $t9	 # Add Unsigned
		slti	$t9, $v1, 0x1A	 # Set on Less Than Immediate
		bnez	$t9, loc_8C006E20  # Branch on Not Zero
		sh	$t2, 0($t5)	 # Store Halfword
		lw	$t9, 0($s0)	 # Load	Word
		addiu	$t8, $t9, 0x40	 # Add Immediate Unsigned
		subu	$v1, $t8, $t9	 # Subtract Unsigned
		srl	$v1, 5		 # Shift Right Logical
		sh	$v1, 0xA($t9)	 # Store Halfword
		lw	$t2, 0($s0)	 # Load	Word
		lui	$t7, 0xFFFF	 # Load	Upper Immediate
		lhu	$t6, 0xC($t2)	 # Load	Halfword Unsigned
		addiu	$t3, $t2, 0x440	 # Add Immediate Unsigned
		subu	$v1, $t3, $t2	 # Subtract Unsigned
		srl	$v1, 1		 # Shift Right Logical
		srl	$t5, $v1, 5	 # Shift Right Logical
		and	$t8, $t7, $t6	 # AND
		or	$t9, $t8, $t5	 # OR
		sh	$t9, 0xC($t2)	 # Store Halfword
		lw	$t8, 0($s0)	 # Load	Word
		andi	$t3, $v1, 0x1F	 # AND Immediate
		lhu	$t4, 0xE($t8)	 # Load	Halfword Unsigned
		lui	$t5, 0xFFFF	 # Load	Upper Immediate
		ori	$t5, 0x7FF	 # OR Immediate
		sll	$t2, $t3, 11	 # Shift Left Logical
		and	$t6, $t5, $t4	 # AND
		or	$t7, $t6, $t2	 # OR
		sh	$t7, 0xE($t8)	 # Store Halfword
		sra	$t6, $s2, 31	 # Shift Right Arithmetic
		andi	$t5, $t6, 1	 # AND Immediate
		addu	$t4, $t5, $s2	 # Add Unsigned
		sra	$t9, $t4, 1	 # Shift Right Arithmetic
		sra	$t3, $t9, 31	 # Shift Right Arithmetic
		andi	$t2, $t3, 1	 # AND Immediate
		addu	$t9, $t2, $t9	 # Add Unsigned
		lw	$t7, 0($s0)	 # Load	Word
		li	$t4, 0xFFFFF800	 # Load	Immediate
		sra	$t8, $t9, 1	 # Shift Right Arithmetic
		addu	$v1, $t8	 # Add Unsigned
		srl	$t2, $v1, 10	 # Shift Right Logical
		andi	$t8, $t2, 0x7FF	 # AND Immediate
		lhu	$t3, 0xE($t7)	 # Load	Halfword Unsigned
		lui	$t2, 0xFFFF	 # Load	Upper Immediate
		move	$a0, $s4
		move	$a1, $s5
		move	$a2, $s1
		ori	$t2, 0x3F	 # OR Immediate
		and	$t5, $t4, $t3	 # AND
		or	$t6, $t5, $t8	 # OR
		sh	$t6, 0xE($t7)	 # Store Halfword
		lw	$t5, 0($s0)	 # Load	Word
		andi	$t8, $v1, 0x3FF	 # AND Immediate
		lhu	$t9, 0x10($t5)	 # Load	Halfword Unsigned
		sll	$t7, $t8, 6	 # Shift Left Logical
		and	$t3, $t2, $t9	 # AND
		or	$t4, $t3, $t7	 # OR
		sh	$t4, 0x10($t5)	 # Store Halfword
		jal	sub_8C006940	 # Jump	And Link
		move	$a3, $s3
		lw	$t3, 0($s0)	 # Load	Word
		li	$t8, 0xFFFFC7FF	 # Load	Immediate
		lui	$t4, 0x4F7F	 # Load	Upper Immediate
		ori	$t4, 0xFFFF	 # OR Immediate
		lui	$1, 0xB080	 # Load	Upper Immediate
		lhu	$t7, 0($t3)	 # Load	Halfword Unsigned
		lui	$t5, 0x20	 # Load	Upper Immediate
		and	$t9, $t8, $t7	 # AND
		ori	$t6, $t9, 0x2000  # OR Immediate
		sh	$t6, 0($t3)	 # Store Halfword
		lw	$v1, 0($s0)	 # Load	Word
		li	$t0, 2		 # Load	Immediate
		or	$v1, $t5	 # OR
		and	$v1, $t4	 # AND
		srl	$v1, 1		 # Shift Right Logical
		srl	$t3, $v1, 16	 # Shift Right Logical
		andi	$t2, $t3, 0x1F	 # AND Immediate
		sh	$t2, 0x520($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$v1, 0x522($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$t0, 0x500($1)	 # Store Halfword
		lw	$s5, 0x60+var_3C($sp)  # Load Word
		lw	$ra, 0x60+var_4($sp)  #	Load Word
		lw	$s0, 0x60+var_50($sp)  # Load Word
		lw	$s1, 0x60+var_4C($sp)  # Load Word
		lw	$s2, 0x60+var_48($sp)  # Load Word
		lw	$s3, 0x60+var_44($sp)  # Load Word
		lw	$s4, 0x60+var_40($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x60	 # Add Immediate Unsigned
 # End of function sub_8C006D0C

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		slti	$0, 0xC2C	 # Set on Less Than Immediate
		bgtz	$s6, loc_8C006FA4  # Branch on Greater Than Zero

loc_8C006FA4:				 # Trap	if Greater Than	or Equal
		tge	$s2, $0	 #4
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte	 0  #  
		.byte 0xB3  # ³
		.byte 0x40  # @
		.byte	 5  #  
		.byte 0x40  # @
		.byte 0x2D  # -
		.byte 0x16  #  
		.byte 0x80  # €
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C006FD0:				 # CODE	XREF: sub_8C0072B4+8p
		li	$v1, 0		 # Load	Immediate

loc_8C006FD4:				 # CODE	XREF: sub_8C006FD0+18j
		lw	$t9, -0x7F5C($gp)  # Load Word
		sll	$t8, $v1, 1	 # Shift Left Logical
		addiu	$v1, 1		 # Add Immediate Unsigned
		slti	$t6, $v1, 0x1A	 # Set on Less Than Immediate
		addu	$t7, $t9, $t8	 # Add Unsigned
		bnez	$t6, loc_8C006FD4  # Branch on Not Zero
		sh	$0, 0($t7)	 # Store Halfword
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C006FD0

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		jr	$ra		 # Jump	Register
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007000:				 # CODE	XREF: sub_8C007240+14p
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x8240	 # Load	Immediate
		sh	$t0, 0x486($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x352	 # Load	Immediate
		sh	$t0, 0x488($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x360	 # Load	Immediate
		sh	$t0, 0x48A($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x2C05	 # Load	Immediate
		sh	$t0, 0x48C($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x26C	 # Load	Immediate
		sh	$t0, 0x48E($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x271	 # Load	Immediate
		sh	$t0, 0x490($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x8240	 # Load	Immediate
		sh	$t0, 0x492($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x352	 # Load	Immediate
		sh	$t0, 0x494($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x360	 # Load	Immediate
		sh	$t0, 0x496($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x2D05	 # Load	Immediate
		sh	$t0, 0x498($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x26D	 # Load	Immediate
		sh	$t0, 0x49A($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x271	 # Load	Immediate
		sh	$t0, 0x49C($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$0, 0x292($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 3		 # Load	Immediate
		sh	$t0, 0x480($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 1		 # Load	Immediate
		sh	$t0, 0x482($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x2C	 # Load	Immediate
		sh	$t0, 0x484($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x21	 # Load	Immediate
		sh	$t0, 0x650($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x1D	 # Load	Immediate
		sh	$t0, 0x652($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x23	 # Load	Immediate
		sh	$t0, 0x674($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x24	 # Load	Immediate
		sh	$t0, 0x676($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x6A	 # Load	Immediate
		sh	$t0, 0x678($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xF	 # Load	Immediate
		sh	$t0, 0x6B4($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x8A	 # Load	Immediate
		sh	$t0, 0x6B6($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xBC	 # Load	Immediate
		sh	$t0, 0x6B8($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x73	 # Load	Immediate
		sh	$t0, 0x6BA($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x75	 # Load	Immediate
		sh	$t0, 0x6BC($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x35	 # Load	Immediate
		sh	$t0, 0x6BE($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 2		 # Load	Immediate
		sh	$t0, 0x6C2($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x32	 # Load	Immediate
		sh	$t0, 0x6C4($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xCB	 # Load	Immediate
		sh	$t0, 0x6C6($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x8A	 # Load	Immediate
		sh	$t0, 0x6C8($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 9		 # Load	Immediate
		sh	$t0, 0x6CA($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x2A	 # Load	Immediate
		sh	$t0, 0x6CC($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x20	 # Load	Immediate
		sh	$t0, 0x6D6($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x1A	 # Load	Immediate
		sh	$t0, 0x6D8($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$0, 0x6DA($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xA0	 # Load	Immediate
		sh	$t0, 0x6DC($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$0, 0x6DE($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x7B	 # Load	Immediate
		sh	$t0, 0x6EA($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x17	 # Load	Immediate
		sh	$t0, 0x6F4($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x35	 # Load	Immediate
		sh	$t0, 0x6F6($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x40	 # Load	Immediate
		sh	$t0, 0x6F8($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$0, 0x700($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xB3	 # Load	Immediate
		sh	$t0, 0x702($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xAE	 # Load	Immediate
		sh	$t0, 0x704($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xB4	 # Load	Immediate
		sh	$t0, 0x706($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0xC0	 # Load	Immediate
		sh	$t0, 0x65A($1)	 # Store Halfword
		lui	$1, 0xB080	 # Load	Upper Immediate
		li	$t0, 0x3E	 # Load	Immediate
		jr	$ra		 # Jump	Register
		sh	$t0, 0x70E($1)	 # Store Halfword
 # End of function sub_8C007000

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
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

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007240:				 # CODE	XREF: sub_8C0029C0+6Cp

var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s1, 0x20+var_C($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		move	$s0, $a0
		jal	sub_8C007000	 # Jump	And Link
		move	$s1, $a1
		move	$a0, $s0
		move	$a1, $s1
		li	$a2, 0x1E0	 # Load	Immediate
		jal	sub_8C006D0C	 # Jump	And Link
		li	$a3, 0x104	 # Load	Immediate
		jal	sub_8C007C68	 # Jump	And Link
		nop
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 0x1F4	 # Load	Immediate
		jal	sub_8C007CB0	 # Jump	And Link
		nop
		li	$a0, 0x24	 # Load	Immediate
		li	$a1, 0x2C	 # Load	Immediate
		jal	sub_8C0073AC	 # Jump	And Link
		li	$a2, 0x61	 # Load	Immediate
		jal	sub_8C007BE0	 # Jump	And Link
		nop
		lw	$s1, 0x20+var_C($sp)  #	Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lw	$s0, 0x20+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # End of function sub_8C007240


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0072B4:				 # CODE	XREF: sub_8C000B2C+8p
					 # sub_8C0029C0+43Cp ...

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		jal	sub_8C006FD0	 # Jump	And Link
		nop
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C0072B4

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0072D0:				 # CODE	XREF: sub_8C0073AC+24p
		andi	$a0, 0xFF	 # AND Immediate
		andi	$a2, 0xFF	 # AND Immediate
		li	$t8, 0x12B	 # Load	Immediate
		andi	$a1, 0xFF	 # AND Immediate
		li	$t6, 0x24B	 # Load	Immediate
		mult	$a1, $t6	 # Multiply
		mtlo	$t7		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x70  # p
		.byte 0xD8  # Ø
		.byte 0x68  # h
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t3, 0x72	 # Load	Immediate
		mtlo	$t5		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x70  # p
		.byte 0x8B  # ‹
		.byte 0x50  # P
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t8, 0x3E8	 # Load	Immediate
		div	$t2, $t8	 # Divide
		mflo	$t9		 # Move	From LO
		andi	$v1, $t9, 0xFF	 # AND Immediate
		slti	$t7, $v1, 0xA	 # Set on Less Than Immediate
		beqz	$t7, loc_8C007324  # Branch on Zero
		sb	$t9, 0($a3)	 # Store Byte
		li	$t0, 0xA	 # Load	Immediate
		j	loc_8C007338	 # Jump
		sb	$t0, 0($a3)	 # Store Byte
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007324:				 # CODE	XREF: seg000:8C007310j
		slti	$t6, $v1, 0xFB	 # Set on Less Than Immediate
		bnezl	$t6, loc_8C00733C  # Branch on Not Zero	Likely
		li	$t2, 0x1A3	 # Load	Immediate
		li	$t0, 0xFA	 # Load	Immediate
		sb	$t0, 0($a3)	 # Store Byte

loc_8C007338:				 # CODE	XREF: seg000:8C00731Cj
		li	$t2, 0x1A3	 # Load	Immediate

loc_8C00733C:				 # CODE	XREF: seg000:8C007328j
		li	$t4, 0x1F4	 # Load	Immediate
		mult	$a2, $t4	 # Multiply
		mult	$a1, $t2	 # Multiply
		subu	$t9, $t5, $t3	 # Subtract Unsigned
		li	$t7, 0x51	 # Load	Immediate
		mult	$a0, $t7	 # Multiply
		subu	$t6, $t9, $t8	 # Subtract Unsigned
		li	$t4, 0x3E8	 # Load	Immediate
		div	$t6, $t4	 # Divide
		lw	$1, 0x14($sp)	 # Load	Word
		li	$t4, 0x1F4	 # Load	Immediate
		li	$t9, 0xFFFFFF57	 # Load	Immediate
		li	$t7, 0x14B	 # Load	Immediate
		mflo	$t5		 # Move	From LO
		addiu	$t3, $t5, 0x80	 # Add Immediate Unsigned
		sb	$t3, 0($1)	 # Store Byte
		mult	$a2, $t9	 # Multiply
		mult	$a1, $t7	 # Multiply
		subu	$t6, $t2, $t8	 # Subtract Unsigned
		mtlo	$t6		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x70  # p
		.byte 0x8C  # Œ
		.byte 0x58  # X
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t9, 0x3E8	 # Load	Immediate
		div	$t3, $t9	 # Divide
		lw	$1, 0x10($sp)	 # Load	Word
		mflo	$t2		 # Move	From LO
		addiu	$t8, $t2, 0x80	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		sb	$t8, 0($1)	 # Store Byte

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0073AC:				 # CODE	XREF: sub_8C007240+50p

var_10		= -0x10
var_C		= -0xC
var_7		= -7
var_6		= -6
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		andi	$a0, 0xFF	 # AND Immediate
		andi	$a1, 0xFF	 # AND Immediate
		andi	$a2, 0xFF	 # AND Immediate
		addiu	$t9, $sp, 0x20+var_6  #	Add Immediate Unsigned
		sw	$t9, 0x20+var_10($sp)  # Store Word
		addiu	$t8, $sp, 0x20+var_6+1	# Add Immediate	Unsigned
		sw	$t8, 0x20+var_C($sp)  #	Store Word
		jal	loc_8C0072D0	 # Jump	And Link
		addiu	$a3, $sp, 0x19	 # Add Immediate Unsigned
		lbu	$t6, 0x20+var_6+1($sp)	# Load Byte Unsigned
		lbu	$t4, 0x20+var_6($sp)  #	Load Byte Unsigned
		lui	$1, 0xB080	 # Load	Upper Immediate
		sll	$t7, $t6, 8	 # Shift Left Logical
		or	$t5, $t7, $t4	 # OR
		sh	$t5, 0x2CA($1)	 # Store Halfword
		lbu	$t3, 0x20+var_7($sp)  #	Load Byte Unsigned
		lui	$1, 0xB080	 # Load	Upper Immediate
		sh	$t3, 0x2CC($1)	 # Store Halfword
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x20	 # Add Immediate Unsigned
 # End of function sub_8C0073AC


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
 # In $a2 steht	der Zeiger aus das Zeichen (?)

sub_8C007408:				 # CODE	XREF: sub_8C007900+4Cp
					 # sub_8C007900+68p ...

var_20		= -0x20
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4
arg_13		=  0x13

		addiu	$sp, -0x30	 # Add Immediate Unsigned
		sw	$s0, 0x30+var_18($sp)  # Store Word
		sw	$s2, 0x30+var_10($sp)  # Store Word
		sw	$s1, 0x30+var_14($sp)  # Store Word
		sw	$s3, 0x30+var_C($sp)  #	Store Word
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		lb	$v1, 0($a2)	 # Load	Byte
		move	$s0, $a2
		move	$s2, $a1
		andi	$s3, $a3, 0xFF	 # AND Immediate
		beqz	$v1, loc_8C0074C8  # Branch on Zero
		move	$s1, $a0

loc_8C007438:				 # CODE	XREF: sub_8C007408+A4j
					 # sub_8C007408+B8j
		addiu	$v1, 0xFFDF	 # Add Immediate Unsigned
		bltz	$v1, loc_8C0074BC  # Branch on Less Than Zero
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t8, $v1, 0x5A	 # Set on Less Than Immediate
		beqzl	$t8, loc_8C0074C0  # Branch on Zero Likely
Ab 8220	steht ein Zeichensatz von 90 Zeichen a 16 Byte
Hier wird die Adresse des Auszugebenden	Zeichens berechnet
		lb	$v1, 0($s0)	 # Load	Byte
		sll	$t7, $v1, 4	 # Shift Left Logical
		lui	$t6, 0x8C01	 # Load	Upper Immediate
		addiu	$t6, 0x8220	 # Add Immediate Unsigned
		addu	$a0, $t6, $t7	 # Add Unsigned
		move	$a2, $s3
		lbu	$a3, 0x30+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C0075E4	 # Jump	And Link
		li	$a1, 0x10	 # Load	Immediate
		li	$a0, 2		 # Load	Immediate
		jal	loc_8C007778	 # Jump	And Link
		li	$a1, 0x10	 # Load	Immediate
		li	$a0, 2		 # Load	Immediate
		jal	sub_8C0076D4	 # Jump	And Link
		li	$a1, 0x20	 # Load	Immediate
		move	$a0, $s1
		move	$a1, $s2
		lui	$t5, 0x8C01	 # Load	Upper Immediate
		addiu	$t5, 0x88C0	 # Add Immediate Unsigned
		sw	$t5, 0x30+var_20($sp)  # Store Word
		li	$a2, 0x10	 # Load	Immediate
		jal	loc_8C0069C0	 # Jump	And Link
		li	$a3, 0x20	 # Load	Immediate
		lb	$v1, 0($s0)	 # Load	Byte
		bnez	$v1, loc_8C007438  # Branch on Not Zero
		addiu	$s1, 0x10	 # Add Immediate Unsigned
		j	loc_8C0074C8	 # Jump
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C0074BC:				 # CODE	XREF: sub_8C007408+34j
		lb	$v1, 0($s0)	 # Load	Byte

loc_8C0074C0:				 # CODE	XREF: sub_8C007408+40j
		bnez	$v1, loc_8C007438  # Branch on Not Zero
		addiu	$s1, 0x10	 # Add Immediate Unsigned

loc_8C0074C8:				 # CODE	XREF: sub_8C007408+28j
					 # sub_8C007408+ACj
		lw	$s3, 0x30+var_C($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_18($sp)  # Load Word
		lw	$s1, 0x30+var_14($sp)  # Load Word
		lw	$s2, 0x30+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C007408


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0074E4:				 # CODE	XREF: sub_8C007804+74p
					 # sub_8C007804+BCp

var_18		= -0x18
var_10		= -0x10
var_C		= -0xC
var_4		= -4
arg_13		=  0x13

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$s1, 0x28+var_C($sp)  #	Store Word
		move	$s1, $a1
		sw	$s0, 0x28+var_10($sp)  # Store Word
		move	$s0, $a0
		move	$a0, $a2
		andi	$t9, $a3, 0xFF	 # AND Immediate
		move	$a2, $t9
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		lbu	$a3, 0x28+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C0075E4	 # Jump	And Link
		li	$a1, 0x20	 # Load	Immediate
		move	$a0, $s0
		move	$a1, $s1
		lui	$t9, 0x8C01	 # Load	Upper Immediate
		addiu	$t9, 0x8940	 # Add Immediate Unsigned
		sw	$t9, 0x28+var_18($sp)  # Store Word
		li	$a2, 0x10	 # Load	Immediate
		jal	loc_8C0069C0	 # Jump	And Link
		li	$a3, 0x10	 # Load	Immediate
		lw	$s1, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C0074E4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007548:				 # CODE	XREF: sub_8C007804+94p
					 # sub_8C007804+D4p

var_18		= -0x18
var_10		= -0x10
var_C		= -0xC
var_4		= -4
arg_13		=  0x13

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$s1, 0x28+var_C($sp)  #	Store Word
		move	$s1, $a1
		sw	$s0, 0x28+var_10($sp)  # Store Word
		move	$s0, $a0
		move	$a0, $a2
		andi	$t9, $a3, 0xFF	 # AND Immediate
		move	$a2, $t9
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		lbu	$a3, 0x28+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C0075E4	 # Jump	And Link
		li	$a1, 0x20	 # Load	Immediate
		lui	$t6, 0x8C01	 # Load	Upper Immediate
		addiu	$t6, 0x8940	 # Add Immediate Unsigned
		li	$v1, 0		 # Load	Immediate

loc_8C007584:				 # CODE	XREF: sub_8C007548+60j
		sll	$t8, $v1, 2	 # Shift Left Logical
		addu	$t7, $t6, $t8	 # Add Unsigned
		addiu	$t9, $t6, 0x3C	 # Add Immediate Unsigned
		subu	$t9, $t8	 # Subtract Unsigned
		lw	$t8, 0($t9)	 # Load	Word
		lw	$t5, 0($t7)	 # Load	Word
		addiu	$v1, 1		 # Add Immediate Unsigned
		sw	$t8, 0($t7)	 # Store Word
		slti	$t7, $v1, 8	 # Set on Less Than Immediate
		bnez	$t7, loc_8C007584  # Branch on Not Zero
		sw	$t5, 0($t9)	 # Store Word
		move	$a0, $s0
		move	$a1, $s1
		lui	$t6, 0x8C01	 # Load	Upper Immediate
		addiu	$t6, 0x8940	 # Add Immediate Unsigned
		sw	$t6, 0x28+var_18($sp)  # Store Word
		li	$a2, 0x10	 # Load	Immediate
		jal	loc_8C0069C0	 # Jump	And Link
		li	$a3, 0x10	 # Load	Immediate
		lw	$s1, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C007548


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0075E4:				 # CODE	XREF: sub_8C007408+60p
					 # sub_8C0074E4+28p ...

var_10		= -0x10
var_C		= -0xC
var_8		= -8

		addiu	$sp, -0x10	 # Add Immediate Unsigned
		sw	$s0, 0x10+var_10($sp)  # Store Word
		andi	$s0, $a1, 0xFF	 # AND Immediate
		sw	$s1, 0x10+var_C($sp)  #	Store Word
		andi	$s1, $a2, 0xFF	 # AND Immediate
		sw	$s2, 0x10+var_8($sp)  #	Store Word
		andi	$s2, $a3, 0xFF	 # AND Immediate
		li	$v1, 0		 # Load	Immediate

loc_8C007604:				 # CODE	XREF: sub_8C0075E4+34j
		lui	$t8, 0x8C01	 # Load	Upper Immediate
		addiu	$t8, 0x8940	 # Add Immediate Unsigned
		addu	$t9, $t8, $v1	 # Add Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slti	$t7, $v1, 0x80	 # Set on Less Than Immediate
		bnez	$t7, loc_8C007604  # Branch on Not Zero
		sb	$0, 0($t9)	 # Store Byte
		lui	$a3, 0x8C01	 # Load	Upper Immediate
		li	$a2, 0		 # Load	Immediate
		slt	$t7, $a2, $s0	 # Set on Less Than
		beqz	$t7, loc_8C0076C0  # Branch on Zero
		addiu	$a3, 0x8940	 # Add Immediate Unsigned

loc_8C007634:				 # CODE	XREF: sub_8C0075E4+D4j
		li	$v1, 0		 # Load	Immediate
		lbu	$a1, 0($a0)	 # Load	Byte Unsigned

loc_8C00763C:				 # CODE	XREF: sub_8C0075E4+94j
					 # sub_8C0075E4+C0j
		li	$t6, 7		 # Load	Immediate
		subu	$t9, $t6, $v1	 # Subtract Unsigned
		andi	$t9, 0xFF	 # AND Immediate
		srlv	$t5, $a1, $t9	 # Shift Right Logical Variable
		andi	$t4, $t5, 1	 # AND Immediate
		beqzl	$t4, loc_8C007688  # Branch on Zero Likely
		sll	$t5, $v1, 1	 # Shift Left Logical
		li	$t8, 0xE	 # Load	Immediate
		sll	$t2, $v1, 1	 # Shift Left Logical
		lhu	$t6, 0($a3)	 # Load	Halfword Unsigned
		subu	$t9, $t8, $t2	 # Subtract Unsigned
		sllv	$t7, $s1, $t9	 # Shift Left Logical Variable
		addiu	$v1, 1		 # Add Immediate Unsigned
		slti	$t8, $v1, 8	 # Set on Less Than Immediate
		or	$t6, $t7	 # OR
		bnez	$t8, loc_8C00763C  # Branch on Not Zero
		sh	$t6, 0($a3)	 # Store Halfword
		j	loc_8C0076B0	 # Jump
		addiu	$a0, 1		 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007688:				 # CODE	XREF: sub_8C0075E4+6Cj
		lhu	$t9, 0($a3)	 # Load	Halfword Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slti	$t8, $v1, 8	 # Set on Less Than Immediate
		li	$t3, 0xE	 # Load	Immediate
		subu	$t4, $t3, $t5	 # Subtract Unsigned
		sllv	$t2, $s2, $t4	 # Shift Left Logical Variable
		or	$t9, $t2	 # OR
		bnez	$t8, loc_8C00763C  # Branch on Not Zero
		sh	$t9, 0($a3)	 # Store Halfword
		addiu	$a0, 1		 # Add Immediate Unsigned

loc_8C0076B0:				 # CODE	XREF: sub_8C0075E4+9Cj
		addiu	$a2, 1		 # Add Immediate Unsigned
		slt	$t7, $a2, $s0	 # Set on Less Than
		bnez	$t7, loc_8C007634  # Branch on Not Zero
		addiu	$a3, 2		 # Add Immediate Unsigned

loc_8C0076C0:				 # CODE	XREF: sub_8C0075E4+48j
		lw	$s2, 0x10+var_8($sp)  #	Load Word
		lw	$s0, 0x10+var_10($sp)  # Load Word
		lw	$s1, 0x10+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x10	 # Add Immediate Unsigned
 # End of function sub_8C0075E4


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C0076D4:				 # CODE	XREF: sub_8C007408+78p
		andi	$a0, 0xFF	 # AND Immediate
		andi	$a1, 0xFF	 # AND Immediate
		li	$v1, 0		 # Load	Immediate

loc_8C0076E0:				 # CODE	XREF: sub_8C0076D4+20j
		lui	$t8, 0x8C01	 # Load	Upper Immediate
		addiu	$t8, 0x88C0	 # Add Immediate Unsigned
		addu	$t9, $t8, $v1	 # Add Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slti	$t7, $v1, 0x80	 # Set on Less Than Immediate
		bnez	$t7, loc_8C0076E0  # Branch on Not Zero
		sb	$0, 0($t9)	 # Store Byte
		lui	$a3, 0x8C01	 # Load	Upper Immediate
		mult	$a1, $a0	 # Multiply
		lui	$a1, 0x8C01	 # Load	Upper Immediate
		addiu	$a1, 0x8940	 # Add Immediate Unsigned
		beqz	$v1, locret_8C007770  #	Branch on Zero
		addiu	$a3, 0x88C0	 # Add Immediate Unsigned

loc_8C007714:				 # CODE	XREF: sub_8C0076D4+94j
		li	$a2, 0		 # Load	Immediate

loc_8C007718:				 # CODE	XREF: sub_8C0076D4+84j
		lbu	$t9, 0($a1)	 # Load	Byte Unsigned
		lhu	$t3, 0($a3)	 # Load	Halfword Unsigned
		li	$t6, 3		 # Load	Immediate
		subu	$t8, $t6, $a2	 # Subtract Unsigned
		sll	$t5, $t8, 1	 # Shift Left Logical
		addiu	$a2, 1		 # Add Immediate Unsigned
		srlv	$t9, $t5	 # Shift Right Logical Variable
		andi	$t9, 0xFF	 # AND Immediate
		andi	$t7, $t9, 3	 # AND Immediate
		sll	$t9, $t8, 2	 # Shift Left Logical
		sllv	$t4, $t7, $t9	 # Shift Left Logical Variable
		or	$t3, $t4	 # OR
		addiu	$t2, $t9, 2	 # Add Immediate Unsigned
		sllv	$t9, $t7, $t2	 # Shift Left Logical Variable
		or	$t8, $t3, $t9	 # OR
		slti	$t7, $a2, 4	 # Set on Less Than Immediate
		bnez	$t7, loc_8C007718  # Branch on Not Zero
		sh	$t8, 0($a3)	 # Store Halfword
		addiu	$a3, 2		 # Add Immediate Unsigned
		addiu	$v1, 0xFFFF	 # Add Immediate Unsigned
		bnez	$v1, loc_8C007714  # Branch on Not Zero
		addiu	$a1, 1		 # Add Immediate Unsigned

locret_8C007770:			 # CODE	XREF: sub_8C0076D4+38j
		jr	$ra		 # Jump	Register
		nop
 # End of function sub_8C0076D4

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007778:				 # CODE	XREF: sub_8C007408+6Cp
		andi	$a1, 0xFF	 # AND Immediate
		move	$a3, $a1
		beqz	$a1, locret_8C0077FC  #	Branch on Zero
		andi	$a0, 0xFF	 # AND Immediate
		subu	$t3, $a1, $a3	 # Subtract Unsigned

loc_8C00778C:				 # CODE	XREF: seg000:8C0077F4j
		addiu	$t9, $a3, 0xFFFF  # Add	Immediate Unsigned
		lui	$v1, 0x8C01	 # Load	Upper Immediate
		addiu	$v1, 0x8940	 # Add Immediate Unsigned
		mtlo	$v1		 # Move	To LO
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte 0x73  # s
		.byte 0x24  # $
		.byte 0x30  # 0
		.byte	 0  #  
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		addiu	$t7, $a1, 0xFFFF  # Add	Immediate Unsigned
		mult	$t7, $a0	 # Multiply
		mult	$t3, $a0	 # Multiply
		sll	$t9, $t2, 1	 # Shift Left Logical
		sll	$t5, $t6, 1	 # Shift Left Logical
		addu	$t4, $v1, $t5	 # Add Unsigned
		li	$v1, 0		 # Load	Immediate
		slt	$t2, $v1, $a0	 # Set on Less Than
		beqz	$t2, loc_8C0077F0  # Branch on Zero
		subu	$t9, $t4, $t9	 # Subtract Unsigned

loc_8C0077C8:				 # CODE	XREF: seg000:8C0077E8j
		addu	$t5, $a2, $v1	 # Add Unsigned
		lbu	$t4, 0($t5)	 # Load	Byte Unsigned
		addu	$t7, $t9, $a0	 # Add Unsigned
		addu	$t6, $t7, $v1	 # Add Unsigned
		addu	$t8, $t9, $v1	 # Add Unsigned
		addiu	$v1, 1		 # Add Immediate Unsigned
		slt	$t2, $v1, $a0	 # Set on Less Than
		sb	$t4, 0($t6)	 # Store Byte
		bnez	$t2, loc_8C0077C8  # Branch on Not Zero
		sb	$t4, 0($t8)	 # Store Byte

loc_8C0077F0:				 # CODE	XREF: seg000:8C0077C0j
		addiu	$a3, 0xFFFF	 # Add Immediate Unsigned
		bnezl	$a3, loc_8C00778C  # Branch on Not Zero	Likely
		subu	$t3, $a1, $a3	 # Subtract Unsigned

locret_8C0077FC:			 # CODE	XREF: seg000:8C007780j
		jr	$ra		 # Jump	Register
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007804:				 # CODE	XREF: sub_8C007900+30p
					 # sub_8C00798C+30p

var_20		= -0x20
var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_8		= -8
var_4		= -4
arg_13		=  0x13

		addiu	$sp, -0x30	 # Add Immediate Unsigned
s0, s1,	s2, s3,	s4, ra,	t0 auf den Stack
		sw	$s0, 0x30+var_18($sp)  # Store Word
		move	$s0, $a0
		addiu	$a0, 0x10	 # Add Immediate Unsigned
		sw	$s1, 0x30+var_14($sp)  # Store Word
		sw	$s2, 0x30+var_10($sp)  # Store Word
		sw	$s3, 0x30+var_C($sp)  #	Store Word
		sw	$s4, 0x30+var_8($sp)  #	Store Word
		sw	$ra, 0x30+var_4($sp)  #	Store Word
		lbu	$t0, 0x30+arg_13($sp)  # Load Byte Unsigned
s3 = a3
s2 = a2
a2 = a2+0xFFE0
s1 = a1
t0 auf den Stack(20)
Jump loc_8C006B78
		move	$s3, $a3
		move	$s2, $a2
		addiu	$a2, 0xFFE0	 # Add Immediate Unsigned
		move	$s1, $a1
		jal	loc_8C006B78	 # Jump	And Link
		sw	$t0, 0x30+var_20($sp)  # Store Word
t0 vom Stack holen
a0 = s0
a1 = s1+0x10
a2 = s2
a3 = s3	+ 0xFFE0
t0 auf den Stack(20)
Jump  loc_8C006B78
		lbu	$t0, 0x30+arg_13($sp)  # Load Byte Unsigned
		move	$a0, $s0
		addiu	$a1, $s1, 0x10	 # Add Immediate Unsigned
		move	$a2, $s2
		addiu	$a3, $s3, 0xFFE0  # Add	Immediate Unsigned
		jal	loc_8C006B78	 # Jump	And Link
		sw	$t0, 0x30+var_20($sp)  # Store Word
a2 = 0x8C0187E0
a0 = s0
a1 = s1
a3 vom Stack(13) holen
0 auf den Stack(20)
Jump  sub_8C0074E4

		lui	$s4, 0x8C01	 # Load	Upper Immediate
		addiu	$s4, 0x87E0	 # Add Immediate Unsigned
		move	$a2, $s4
		move	$a0, $s0
		move	$a1, $s1
		lbu	$a3, 0x30+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C0074E4	 # Jump	And Link
		sw	$0, 0x30+var_20($sp)  #	Store Word
a3 vom Stack(13) holen
0 auf den Stack(20)
a0 = s0
a2 = s4
a1 = s1+s3+ 0xFFF0
Jump  sub_8C007548
		lbu	$a3, 0x30+arg_13($sp)  # Load Byte Unsigned
		sw	$0, 0x30+var_20($sp)  #	Store Word
		addu	$t9, $s1, $s3	 # Add Unsigned
		addiu	$s3, $t9, 0xFFF0  # Add	Immediate Unsigned
		move	$a0, $s0
		move	$a2, $s4
		jal	sub_8C007548	 # Jump	And Link
		move	$a1, $s3
a0 = s0+s2+ 0xFFF0
a2 = 0x8C0187C0
a1 = s1
a3 vom Stack holen(13)
0 auf den Stack(20)
Jump  sub_8C0074E4
		addu	$t8, $s0, $s2	 # Add Unsigned
		addiu	$s0, $t8, 0xFFF0  # Add	Immediate Unsigned
		move	$a0, $s0
		lui	$s2, 0x8C01	 # Load	Upper Immediate
		addiu	$s2, 0x87C0	 # Add Immediate Unsigned
		move	$a2, $s2
		move	$a1, $s1
		lbu	$a3, 0x30+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C0074E4	 # Jump	And Link
		sw	$0, 0x30+var_20($sp)  #	Store Word
a0 =s0
a1 = s3
a2 = s2
a3 vom Stack(13) holen
0 auf den Stack(20)
Jump sub_8C007548
		move	$a0, $s0
		move	$a1, $s3
		move	$a2, $s2
		lbu	$a3, 0x30+arg_13($sp)  # Load Byte Unsigned
		jal	sub_8C007548	 # Jump	And Link
		sw	$0, 0x30+var_20($sp)  #	Store Word
s4,ra,s0,s1,s2,s3 vom Stack holen und 
Rcksprung
		lw	$s4, 0x30+var_8($sp)  #	Load Word
		lw	$ra, 0x30+var_4($sp)  #	Load Word
		lw	$s0, 0x30+var_18($sp)  # Load Word
		lw	$s1, 0x30+var_14($sp)  # Load Word
		lw	$s2, 0x30+var_10($sp)  # Load Word
		lw	$s3, 0x30+var_C($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x30	 # Add Immediate Unsigned
 # End of function sub_8C007804


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ

 # Funktion zum	Ausgeben von Text auf dem Bildschirm
 # a0 =	Zeiger auf den Text
 # a1 =

sub_8C007900:				 # CODE	XREF: sub_8C000D6C+D8p
					 # sub_8C000D6C+120p ...

var_18		= -0x18
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
ra, s1,	s0 auf den Stack
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s1, 0x28+var_C($sp)  #	Store Word
		sw	$s0, 0x28+var_10($sp)  # Store Word
s0 = a0
s1 = a1
Jump sub_8c007B9C
		move	$s0, $a0
		jal	sub_8C007B9C	 # Jump	And Link
		move	$s1, $a1
3 auf den Stack(18)
a0 = 0
a1 = 0x32
a2 = 0x1B8
a3 = 0x78
Jump sub_8C007804
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0		 # Load	Immediate
		li	$a1, 0x32	 # Load	Immediate
		li	$a2, 0x1B8	 # Load	Immediate
		jal	sub_8C007804	 # Jump	And Link
		li	$a3, 0x78	 # Load	Immediate
a2 = s0
3 auf den Stack(18)
a0 = 0x18
a1 = 0x46
a3 = 2
Jump  sub_8C007408
		move	$a2, $s0
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x18	 # Load	Immediate
		li	$a1, 0x46	 # Load	Immediate
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		li	$a3, 2		 # Load	Immediate
a2 = s1
3 auf den Stack(18)
a0 = 0x18
a1 = 0x74
a3 = 1
Jump sub_8C007408
		move	$a2, $s1
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x18	 # Load	Immediate
		li	$a1, 0x74	 # Load	Immediate
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		li	$a3, 1		 # Load	Immediate
Jump sub_8C007BE0
		jal	sub_8C007BE0	 # Jump	And Link
		nop
s1, ra,	s0 vom Stack holen und
Rcksprung
		lw	$s1, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C007900


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C00798C:				 # CODE	XREF: sub_8C000B8C+144p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s1, 0x28+var_C($sp)  #	Store Word
		sw	$s0, 0x28+var_10($sp)  # Store Word
		move	$s0, $a0
		jal	sub_8C007B9C	 # Jump	And Link
		andi	$s1, $a1, 0xFF	 # AND Immediate
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0		 # Load	Immediate
		li	$a1, 0x32	 # Load	Immediate
		li	$a2, 0x1B8	 # Load	Immediate
		jal	sub_8C007804	 # Jump	And Link
		li	$a3, 0x78	 # Load	Immediate
		move	$a2, $s0
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x18	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		li	$a3, 1		 # Load	Immediate
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_14($sp)  # Store Word
		li	$a0, 0x18	 # Load	Immediate
		li	$a1, 0x6E	 # Load	Immediate
		li	$a2, 0x188	 # Load	Immediate
		jal	loc_8C006B78	 # Jump	And Link
		li	$a3, 0x1E	 # Load	Immediate
		jal	sub_8C007A28	 # Jump	And Link
		move	$a0, $s1
		jal	sub_8C007BE0	 # Jump	And Link
		nop
		lw	$s1, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C00798C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007A28:				 # CODE	XREF: sub_8C000B8C+170p
					 # sub_8C00798C+78p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_C		= -0xC
var_5		= -5

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$s1, 0x28+var_C($sp)  #	Store Word
		sw	$s0, 0x28+var_10($sp)  # Store Word
		andi	$s0, $a0, 0xFF	 # AND Immediate
		slti	$t9, $s0, 0x65	 # Set on Less Than Immediate
		bnez	$t9, loc_8C007A48  # Branch on Not Zero
		sw	$ra, 0x28+var_5+1($sp)	# Store	Word
		li	$s0, 0x64	 # Load	Immediate

loc_8C007A48:				 # CODE	XREF: sub_8C007A28+14j
		li	$t7, 0x180	 # Load	Immediate
		mult	$s0, $t7	 # Multiply
		li	$t6, 0x64	 # Load	Immediate
		div	$t8, $t6	 # Divide
		li	$t0, 2		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_14($sp)  # Store Word
		li	$a0, 0x1C	 # Load	Immediate
		li	$a1, 0x74	 # Load	Immediate
		li	$a3, 0x12	 # Load	Immediate
		mflo	$a2		 # Move	From LO
		jal	loc_8C006B78	 # Jump	And Link
		move	$s1, $a2
		addiu	$a0, $s1, 0x1C	 # Add Immediate Unsigned
		li	$t5, 0x180	 # Load	Immediate
		subu	$a2, $t5, $s1	 # Subtract Unsigned
		li	$t0, 1		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_14($sp)  # Store Word
		li	$a1, 0x74	 # Load	Immediate
		jal	loc_8C006B78	 # Jump	And Link
		li	$a3, 0x12	 # Load	Immediate
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x160	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		li	$a2, 0x40	 # Load	Immediate
		jal	loc_8C006B78	 # Jump	And Link
		li	$a3, 0x20	 # Load	Immediate
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x190	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		lui	$a2, 0x8C00	 # Load	Upper Immediate
		addiu	$a2, 0x7B98	 # Add Immediate Unsigned
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		li	$a3, 1		 # Load	Immediate
		li	$t4, 0x64	 # Load	Immediate
		bnel	$s0, $t4, loc_8C007B18	# Branch on Not	Equal Likely
		slti	$t3, $s0, 0xA	 # Set on Less Than Immediate
		li	$t0, 3		 # Load	Immediate
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$a0, 0x160	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		lui	$a2, 0x8C00	 # Load	Upper Immediate
		addiu	$a2, 0x7B94	 # Add Immediate Unsigned
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		li	$a3, 1		 # Load	Immediate
		j	loc_8C007B54	 # Jump
		li	$t6, 0xA	 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007B18:				 # CODE	XREF: sub_8C007A28+C0j
		bnezl	$t3, loc_8C007B54  # Branch on Not Zero	Likely
		li	$t6, 0xA	 # Load	Immediate
		li	$t9, 0xA	 # Load	Immediate
		div	$s0, $t9	 # Divide
		li	$t0, 3		 # Load	Immediate
		li	$a0, 0x170	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		addiu	$a2, $sp, 0x23	 # Add Immediate Unsigned
		li	$a3, 1		 # Load	Immediate
		mflo	$t2		 # Move	From LO
		addiu	$t8, $t2, 0x30	 # Add Immediate Unsigned
		sb	$t8, 0x28+var_5($sp)  #	Store Byte
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		sw	$t0, 0x28+var_18($sp)  # Store Word
		li	$t6, 0xA	 # Load	Immediate

loc_8C007B54:				 # CODE	XREF: sub_8C007A28+E8j
					 # sub_8C007A28+F0j
		div	$s0, $t6	 # Divide
		li	$t0, 3		 # Load	Immediate
		li	$a0, 0x180	 # Load	Immediate
		li	$a1, 0x3C	 # Load	Immediate
		addiu	$a2, $sp, 0x28+var_5  #	Add Immediate Unsigned
		li	$a3, 1		 # Load	Immediate
		mfhi	$t7		 # Move	From HI
		addiu	$t5, $t7, 0x30	 # Add Immediate Unsigned
		sb	$t5, 0x28+var_5($sp)  #	Store Byte
		jal	sub_8C007408	 # In dieser Funktion wird die Adresse eines auszugebenden Zeichens berechnet
					 # In $a2 steht	der Zeiger aus das Zeichen (?)
		sw	$t0, 0x28+var_18($sp)  # Store Word
		lw	$s1, 0x28+var_C($sp)  #	Load Word
		lw	$ra, 0x28+var_5+1($sp)	# Load Word
		lw	$s0, 0x28+var_10($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C007A28

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		andi	$s0, $t1, 0x3000  # AND	Immediate
		addiu	$0, $t0, 0	 # Add Immediate Unsigned

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007B9C:				 # CODE	XREF: sub_8C007900+14p
					 # sub_8C00798C+14p

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
Rcksprungadresse auf den Stack
		sw	$ra, 0x18+var_4($sp)  #	Store Word
a0 = 0
a1 = 0xFF
Jump sub_8C0069A8
		li	$a0, 0		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
a0 = 1
a1 = 0xFF
Jump sub_8C0069A8
		li	$a0, 1		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
a0 = 2
a1 = 0xFF
Jump sub_8C0069A8
		li	$a0, 2		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
a0 = 3
a1 = 0xFF
Jump sub_8C0069A8
		li	$a0, 3		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
Rcksprungadresse vom Stack holen und
Rcksprung
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C007B9C


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007BE0:				 # CODE	XREF: sub_8C007240+58p
					 # sub_8C007900+70p ...

var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		li	$a0, 0		 # Load	Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		li	$a1, 0xFF	 # Load	Immediate
		li	$a0, 1		 # Load	Immediate
		lui	$a1, 0xC0C0	 # Load	Upper Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		ori	$a1, 0xC000	 # OR Immediate
		li	$a0, 2		 # Load	Immediate
		lui	$a1, 0xE10A	 # Load	Upper Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		ori	$a1, 0xA000	 # OR Immediate
		li	$a0, 3		 # Load	Immediate
		lui	$a1, 0x53AB	 # Load	Upper Immediate
		jal	sub_8C0069A8	 # ((gp-0x7F5c)+(a0 shl	2))+0x40 = a1
		ori	$a1, 0x5900	 # OR Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C007BE0


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007C30:				 # CODE	XREF: sub_8C007C68+20p

var_6		= -6
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sb	$a0, 0x18+var_6($sp)  #	Store Byte
		sb	$a1, 0x18+var_6+1($sp)	# Store	Byte
		li	$a0, 1		 # Load	Immediate

loc_8C007C44:				 # CODE	XREF: sub_8C007C30+24j
		li	$a1, 0x94	 # Load	Immediate
		addiu	$a2, $sp, 0x18+var_6  #	Add Immediate Unsigned
		jal	sub_8C0062E4	 # Jump	And Link
		li	$a3, 2		 # Load	Immediate
		bnezl	$v0, loc_8C007C44  # Branch on Not Zero	Likely
		li	$a0, 1		 # Load	Immediate
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C007C30


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007C68:				 # CODE	XREF: sub_8C007240+30p

var_8		= -8
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		sw	$s0, 0x18+var_8($sp)  #	Store Word
		li	$s0, 0		 # Load	Immediate
		lui	$t8, 0x8C01	 # Load	Upper Immediate

loc_8C007C7C:				 # CODE	XREF: sub_8C007C68+30j
		addiu	$t8, 0x8800	 # Add Immediate Unsigned
		addu	$t9, $t8, $s0	 # Add Unsigned
		lbu	$a1, 0($t9)	 # Load	Byte Unsigned
		jal	sub_8C007C30	 # Jump	And Link
		move	$a0, $s0
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t7, $s0, 7	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C007C7C  # Branch on Not Zero	Likely
		lui	$t8, 0x8C01	 # Load	Upper Immediate
		lw	$s0, 0x18+var_8($sp)  #	Load Word
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C007C68


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007CB0:				 # CODE	XREF: sub_8C007240+40p

var_8		= -8
var_6		= -6
var_5		= -5
var_4		= -4

		addiu	$sp, -0x18	 # Add Immediate Unsigned
		sw	$ra, 0x18+var_4($sp)  #	Store Word
		lui	$a0, 0xB300	 # Load	Upper Immediate
		ori	$a0, 0x1FDA	 # OR Immediate
		jal	sub_8C005004	 # Jump	And Link
		li	$a1, 6		 # Load	Immediate
		lui	$1, 0xB300	 # Load	Upper Immediate
		lhu	$t9, 0x1FD8($1)	 # Load	Halfword Unsigned
		beq	$v0, $t9, loc_8C007D34	# Branch on Equal
		move	$v1, $v0
		lui	$a0, 0xB300	 # Load	Upper Immediate
		ori	$a0, 0x3FDA	 # OR Immediate
		jal	sub_8C005004	 # Jump	And Link
		li	$a1, 6		 # Load	Immediate
		lui	$1, 0xB300	 # Load	Upper Immediate
		lhu	$t9, 0x3FD8($1)	 # Load	Halfword Unsigned
		beq	$v0, $t9, loc_8C007D10	# Branch on Equal
		move	$v1, $v0
		li	$a3, 0		 # Load	Immediate
		li	$t9, 2		 # Load	Immediate
		bgez	$t9, loc_8C007D50  # Branch on Greater Than or Equal to	Zero
		li	$v1, 0x26	 # Load	Immediate
		j	loc_8C007D90	 # Jump
		li	$t9, 2		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007D10:				 # CODE	XREF: sub_8C007CB0+40j
		lui	$1, 0xB300	 # Load	Upper Immediate
		lb	$t9, 0x3FDA($1)	 # Load	Byte
		lui	$1, 0xB300	 # Load	Upper Immediate
		lb	$v1, 0x3FDB($1)	 # Load	Byte
		lui	$1, 0xB300	 # Load	Upper Immediate
		bgez	$t9, loc_8C007D50  # Branch on Greater Than or Equal to	Zero
		lb	$a3, 0x3FDC($1)	 # Load	Byte
		j	loc_8C007D90	 # Jump
		li	$t9, 2		 # Load	Immediate
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007D34:				 # CODE	XREF: sub_8C007CB0+20j
		lui	$1, 0xB300	 # Load	Upper Immediate
		lb	$t9, 0x1FDA($1)	 # Load	Byte
		lui	$1, 0xB300	 # Load	Upper Immediate
		lb	$v1, 0x1FDB($1)	 # Load	Byte
		lui	$1, 0xB300	 # Load	Upper Immediate
		bltz	$t9, loc_8C007D8C  # Branch on Less Than Zero
		lb	$a3, 0x1FDC($1)	 # Load	Byte

loc_8C007D50:				 # CODE	XREF: sub_8C007CB0+50j
					 # sub_8C007CB0+74j
		slti	$t8, $t9, 5	 # Set on Less Than Immediate
		beqzl	$t8, loc_8C007D90  # Branch on Zero Likely
		li	$t9, 2		 # Load	Immediate
		slti	$t7, $v1, 0xD	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C007D90  # Branch on Not Zero	Likely
		li	$t9, 2		 # Load	Immediate
		slti	$t6, $v1, 0x46	 # Set on Less Than Immediate
		beqzl	$t6, loc_8C007D90  # Branch on Zero Likely
		li	$t9, 2		 # Load	Immediate
		slti	$t5, $a3, 0xFFFC  # Set	on Less	Than Immediate
		bnezl	$t5, loc_8C007D90  # Branch on Not Zero	Likely
		li	$t9, 2		 # Load	Immediate
		slti	$t4, $a3, 5	 # Set on Less Than Immediate
		bnezl	$t4, loc_8C007D9C  # Branch on Not Zero	Likely
		li	$t0, 0x8C	 # Load	Immediate

loc_8C007D8C:				 # CODE	XREF: sub_8C007CB0+98j
		li	$t9, 2		 # Load	Immediate

loc_8C007D90:				 # CODE	XREF: sub_8C007CB0+58j
					 # sub_8C007CB0+7Cj ...
		li	$v1, 0x26	 # Load	Immediate
		li	$a3, 0		 # Load	Immediate
		li	$t0, 0x8C	 # Load	Immediate

loc_8C007D9C:				 # CODE	XREF: sub_8C007CB0+D4j
		sb	$t0, 0x18+var_8($sp)  #	Store Byte
		li	$t0, 0x44	 # Load	Immediate
		sb	$t0, 0x18+var_8+1($sp)	# Store	Byte
		sltiu	$t2, $t9, 5	 # Set on Less Than Immediate Unsigned
		beqz	$t2, loc_8C007F3C  # Branch on Zero
		addiu	$t7, $sp, 0x18+var_8  #	Add Immediate Unsigned
		lui	$t8, 0x8C00	 # Load	Upper Immediate
		sll	$t9, 2		 # Shift Left Logical
		addiu	$t8, 0x7DD0	 # Add Immediate Unsigned
		addu	$t9, $t8, $t9	 # Add Unsigned
		lw	$t3, 0($t9)	 # Load	Word
		jr	$t3		 # Jump	Register
		nop
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		lw	$0, 0x7DE4($0)	 # Load	Word
		lw	$0, 0x7E40($0)	 # Load	Word
		lw	$0, 0x7E14($0)	 # Load	Word
		lw	$0, 0x7E9C($0)	 # Load	Word
		lw	$0, 0x7F14($0)	 # Load	Word
		li	$t0, 0x54	 # Load	Immediate
		sb	$t0, 1($t7)	 # Store Byte
		slti	$t7, $v1, 0x15	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C007F40  # Branch on Not Zero	Likely
		addu	$v1, $a3	 # Add Unsigned
		slti	$t6, $v1, 0x46	 # Set on Less Than Immediate
		beqzl	$t6, loc_8C007F40  # Branch on Zero Likely
		addu	$v1, $a3	 # Add Unsigned
		addiu	$t5, $v1, 0xFFEB  # Add	Immediate Unsigned
		sll	$t4, $t5, 3	 # Shift Left Logical
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t4, 0x1D7	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x4C	 # Load	Immediate
		slti	$t3, $v1, 0x15	 # Set on Less Than Immediate
		bnez	$t3, loc_8C007F3C  # Branch on Not Zero
		sb	$t0, 1($t7)	 # Store Byte
		slti	$t2, $v1, 0x46	 # Set on Less Than Immediate
		beqzl	$t2, loc_8C007F40  # Branch on Zero Likely
		addu	$v1, $a3	 # Add Unsigned
		addiu	$t9, $v1, 0xFFEB  # Add	Immediate Unsigned
		sll	$t8, $t9, 3	 # Shift Left Logical
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t8, 0x1D7	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x4C	 # Load	Immediate
		sb	$t0, 1($t7)	 # Store Byte
		slti	$t7, $v1, 0x1C	 # Set on Less Than Immediate
		bnezl	$t7, loc_8C007E74  # Branch on Not Zero	Likely
		slti	$t2, $v1, 0x24	 # Set on Less Than Immediate
		slti	$t6, $v1, 0x24	 # Set on Less Than Immediate
		beqzl	$t6, loc_8C007E74  # Branch on Zero Likely
		slti	$t2, $v1, 0x24	 # Set on Less Than Immediate
		addiu	$t5, $v1, 0xFFE4  # Add	Immediate Unsigned
		li	$t3, 7		 # Load	Immediate
		mult	$t5, $t3	 # Multiply
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t4, 0x20F	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007E74:				 # CODE	XREF: sub_8C007CB0+19Cj
					 # sub_8C007CB0+1A8j
		bnezl	$t2, loc_8C007F40  # Branch on Not Zero	Likely
		addu	$v1, $a3	 # Add Unsigned
		slti	$t9, $v1, 0x46	 # Set on Less Than Immediate
		beqzl	$t9, loc_8C007F40  # Branch on Zero Likely
		addu	$v1, $a3	 # Add Unsigned
		addiu	$t8, $v1, 0xFFDC  # Add	Immediate Unsigned
		li	$t6, 7		 # Load	Immediate
		mult	$t8, $t6	 # Multiply
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t7, 0x247	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x5C	 # Load	Immediate
		slti	$t5, $v1, 0xD	 # Set on Less Than Immediate
		bnez	$t5, loc_8C007EC8  # Branch on Not Zero
		sb	$t0, 1($t7)	 # Store Byte
		slti	$t4, $v1, 0x19	 # Set on Less Than Immediate
		beqzl	$t4, loc_8C007ECC  # Branch on Zero Likely
		slti	$t9, $v1, 0x19	 # Set on Less Than Immediate
		addiu	$t3, $v1, 0xFFF3  # Add	Immediate Unsigned
		sll	$t2, $t3, 3	 # Shift Left Logical
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t2, 0x1D7	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007EC8:				 # CODE	XREF: sub_8C007CB0+1F4j
		slti	$t9, $v1, 0x19	 # Set on Less Than Immediate

loc_8C007ECC:				 # CODE	XREF: sub_8C007CB0+200j
		bnezl	$t9, loc_8C007EF0  # Branch on Not Zero	Likely
		slti	$t5, $v1, 0x3A	 # Set on Less Than Immediate
		slti	$t8, $v1, 0x3A	 # Set on Less Than Immediate
		beqzl	$t8, loc_8C007EF0  # Branch on Zero Likely
		slti	$t5, $v1, 0x3A	 # Set on Less Than Immediate
		addiu	$t7, $v1, 0xFFE7  # Add	Immediate Unsigned
		sll	$t6, $t7, 3	 # Shift Left Logical
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t6, 0x25F	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_8C007EF0:				 # CODE	XREF: sub_8C007CB0+21Cj
					 # sub_8C007CB0+228j
		bnezl	$t5, loc_8C007F40  # Branch on Not Zero	Likely
		addu	$v1, $a3	 # Add Unsigned
		slti	$t4, $v1, 0x3F	 # Set on Less Than Immediate
		beqzl	$t4, loc_8C007F40  # Branch on Zero Likely
		addu	$v1, $a3	 # Add Unsigned
		addiu	$t3, $v1, 0xFFC6  # Add	Immediate Unsigned
		sll	$t2, $t3, 3	 # Shift Left Logical
		j	loc_8C007F3C	 # Jump
		addiu	$v1, $t2, 0x237	 # Add Immediate Unsigned
 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		li	$t0, 0x5C	 # Load	Immediate
		slti	$t9, $v1, 0x15	 # Set on Less Than Immediate
		bnez	$t9, loc_8C007F3C  # Branch on Not Zero
		sb	$t0, 1($t7)	 # Store Byte
		slti	$t8, $v1, 0x46	 # Set on Less Than Immediate
		beqzl	$t8, loc_8C007F40  # Branch on Zero Likely
		addu	$v1, $a3	 # Add Unsigned
		addiu	$t7, $v1, 0xFFEB  # Add	Immediate Unsigned
		sll	$t6, $t7, 3	 # Shift Left Logical
		addiu	$v1, $t6, 0x1D7	 # Add Immediate Unsigned

loc_8C007F3C:				 # CODE	XREF: sub_8C007CB0+FCj
					 # sub_8C007CB0+15Cj ...
		addu	$v1, $a3	 # Add Unsigned

loc_8C007F40:				 # CODE	XREF: sub_8C007CB0+140j
					 # sub_8C007CB0+14Cj ...
		andi	$t5, $v1, 0x3F0	 # AND Immediate
		srl	$t4, $t5, 4	 # Shift Right Logical
		sb	$t4, 0x18+var_6($sp)  #	Store Byte
		andi	$t3, $v1, 0xF	 # AND Immediate
		sll	$t2, $t3, 4	 # Shift Left Logical
		ori	$t9, $t2, 4	 # OR Immediate
		sb	$t9, 0x18+var_5($sp)  #	Store Byte

loc_8C007F5C:				 # CODE	XREF: sub_8C007CB0+2C0j
		li	$a0, 1		 # Load	Immediate
		li	$a1, 0xCA	 # Load	Immediate
		addiu	$a2, $sp, 0x18+var_8  #	Add Immediate Unsigned
		jal	sub_8C0062E4	 # Jump	And Link
		li	$a3, 4		 # Load	Immediate
		bnez	$v0, loc_8C007F5C  # Branch on Not Zero
		move	$v1, $v0
		lw	$ra, 0x18+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x18	 # Add Immediate Unsigned
 # End of function sub_8C007CB0

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		nop
		nop
		nop

 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C007F90:				 # CODE	XREF: sub_8C000A0C+8p

var_18		= -0x18
var_10		= -0x10
var_E		= -0xE
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s0, 0x28+var_18($sp)  # Store Word
		sb	$0, 0x28+var_10($sp)  #	Store Byte
		li	$t0, 0x67	 # Load	Immediate
		sb	$t0, 0x28+var_10+1($sp)	 # Store Byte
		move	$a1, $a0
		addiu	$a0, $sp, 0x28+var_E  #	Add Immediate Unsigned
		jal	sub_8C005060	 # Jump	And Link
		li	$a2, 4		 # Load	Immediate
		li	$s0, 0		 # Load	Immediate
		li	$a0, 1		 # Load	Immediate

loc_8C007FC0:				 # CODE	XREF: sub_8C007F90+58j
		li	$a1, 0x70	 # Load	Immediate
		addiu	$a2, $sp, 0x28+var_10  # Add Immediate Unsigned
		jal	sub_8C0062E4	 # Jump	And Link
		li	$a3, 6		 # Load	Immediate
		beqzl	$v0, loc_8C007FF4  # Branch on Zero Likely
		lw	$s0, 0x28+var_18($sp)  # Load Word
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 0xA	 # Load	Immediate
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t9, $s0, 3	 # Set on Less Than Immediate
		bnezl	$t9, loc_8C007FC0  # Branch on Not Zero	Likely
		li	$a0, 1		 # Load	Immediate
		lw	$s0, 0x28+var_18($sp)  # Load Word

loc_8C007FF4:				 # CODE	XREF: sub_8C007F90+40j
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C007F90


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C008000:				 # CODE	XREF: sub_8C000A50+98p

var_18		= -0x18
var_14		= -0x14
var_10		= -0x10
var_4		= -4

		addiu	$sp, -0x28	 # Add Immediate Unsigned
		sw	$s1, 0x28+var_14($sp)  # Store Word
		andi	$s1, $a2, 0xFF	 # AND Immediate
		move	$a2, $s1
		sw	$ra, 0x28+var_4($sp)  #	Store Word
		sw	$s0, 0x28+var_18($sp)  # Store Word
		sb	$a1, 0x28+var_10($sp)  # Store Byte
		move	$t9, $a0
		addiu	$a0, $sp, 0x28+var_10+1	 # Add Immediate Unsigned
		jal	sub_8C005060	 # Jump	And Link
		move	$a1, $t9
		li	$s0, 0		 # Load	Immediate
		addiu	$a3, $s1, 1	 # Add Immediate Unsigned

loc_8C008034:				 # CODE	XREF: sub_8C008000+5Cj
		li	$a0, 1		 # Load	Immediate
		li	$a1, 0x70	 # Load	Immediate
		jal	sub_8C0062E4	 # Jump	And Link
		addiu	$a2, $sp, 0x28+var_10  # Add Immediate Unsigned
		beqzl	$v0, loc_8C008068  # Branch on Zero Likely
		lw	$s1, 0x28+var_14($sp)  # Load Word
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 0xA	 # Load	Immediate
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t9, $s0, 3	 # Set on Less Than Immediate
		bnezl	$t9, loc_8C008034  # Branch on Not Zero	Likely
		addiu	$a3, $s1, 1	 # Add Immediate Unsigned
		lw	$s1, 0x28+var_14($sp)  # Load Word

loc_8C008068:				 # CODE	XREF: sub_8C008000+44j
		lw	$ra, 0x28+var_4($sp)  #	Load Word
		lw	$s0, 0x28+var_18($sp)  # Load Word
		jr	$ra		 # Jump	Register
		addiu	$sp, 0x28	 # Add Immediate Unsigned
 # End of function sub_8C008000


 # ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ S U B R O U T I N E ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ


sub_8C008078:				 # CODE	XREF: sub_8C000A28+8p

var_10		= -0x10
var_4		= -4

		addiu	$sp, -0x20	 # Add Immediate Unsigned
		sw	$ra, 0x20+var_4($sp)  #	Store Word
		sw	$s0, 0x20+var_10($sp)  # Store Word
		li	$s0, 0		 # Load	Immediate
		li	$a0, 1		 # Load	Immediate

loc_8C00808C:				 # CODE	XREF: sub_8C008078+3Cj
		li	$a1, 0x71	 # Load	Immediate
		addiu	$a2, $sp, 0x1B	 # Add Immediate Unsigned
		jal	sub_8C0064B8	 # Jump	And Link
		li	$a3, 1		 # Load	Immediate
		beqzl	$v0, loc_8C0080C0  # Branch on Zero Likely
		addiu	$t6, $sp, 0x1B	 # Add Immediate Unsigned
		jal	sub_8C0009A0	 # Jump	And Link
		li	$a0, 0xA	 # Load	Immediate
		addiu	$s0, 1		 # Add Immediate Unsigned
		slti	$t9, $s0, 3	 # Set on Less Than Immediate
		bnezl	$t9, loc_8C00808C  # Branch on Not Zero	Likely
		li	$a0, 1		 # Load	Immediate
		addiu	$t6, $sp, 0x1B	 # Add Immediate Unsigned

loc_8C0080C0:				 # CODE	XREF: sub_8C008078+24j
		lw	$s0, 0x20+var_10($sp)  # Load Word
		lw	$ra, 0x20+var_4($sp)  #	Load Word
		lui	$t7, 0xA000	 # Load	Upper Immediate
		or	$t8, $t7, $t6	 # OR
		lbu	$v1, 0($t8)	 # Load	Byte Unsigned
		addiu	$sp, 0x20	 # Add Immediate Unsigned
		jr	$ra		 # Jump	Register
		move	$v0, $v1
 # End of function sub_8C008078

 # ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x40  # @
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x80  # €
		.byte	 0  #  
		.byte	 0  #  
		.byte	 2  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 4  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xA  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xC  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xE  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x10  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x20  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x40  # @
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x80  # €
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xA0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xC0  # À
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 0  #  
		.byte	 1  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 2  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 3  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 4  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 5  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 7  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 9  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xA  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xB  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xC  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xD  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xE  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xF  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x10  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x20  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x40  # @
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x80  # €
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xA0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xC0  # À
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xE0  # à
		.byte	 0  #  
		.byte	 0  #  
		.byte	 1  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 2  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 3  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 4  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 5  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 7  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 9  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xA  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xB  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xC  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xD  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xE  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte  0xF  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x10  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x11  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x12  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x13  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x14  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x15  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x16  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x17  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x19  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1A  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1B  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1C  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1D  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1E  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1F  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x20  #  
		.byte	 0  #  
		.byte	 0  #  
byte_8C008210:	.byte 0x67		 # DATA	XREF: sub_8C000A50+94w
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xFF  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
Ab ca  hier ist	ein Zeichensatz	mit 90 Zeichen
von '!'	bis 'z'
jedes Zeichen besteht aus 16 Byte
In der Funktion	ab 8C008220 werden diese Zeichen zur Ausgabe verwendet.
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x3C  # <
		.byte 0x3C  # <
		.byte 0x3C  # <
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
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
		.byte	 0  #  
		.byte 0x36  # 6
		.byte 0x36  # 6
		.byte 0x7F  # 
		.byte 0x36  # 6
		.byte 0x36  # 6
		.byte 0x36  # 6
		.byte 0x7F  # 
		.byte 0x36  # 6
		.byte 0x36  # 6
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x3C  # <
		.byte 0x66  # f
		.byte 0x60  # `
		.byte 0x3C  # <
		.byte	 6  #  
		.byte 0x66  # f
		.byte 0x3C  # <
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x30  # 0
		.byte 0x7B  # {
		.byte 0x36  # 6
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x36  # 6
		.byte 0x6F  # o
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte 0x3B  # ;
		.byte 0x6E  # n
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3B  # ;
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
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
		.byte	 0  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x18  #  
		.byte  0xC  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x30  # 0
		.byte 0x18  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x66  # f
		.byte 0x3C  # <
		.byte 0xFF  #  
		.byte 0x3C  # <
		.byte 0x66  # f
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
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0xFF  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
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
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x30  # 0
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
		.byte 0x7F  # 
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
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 1  #  
		.byte	 3  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte 0x40  # @
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x67  # g
		.byte 0x6F  # o
		.byte 0x7B  # {
		.byte 0x73  # s
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x38  # 8
		.byte 0x78  # x
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte	 3  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte	 3  #  
		.byte	 3  #  
		.byte 0x1E  #  
		.byte	 3  #  
		.byte	 3  #  
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte  0xE  #  
		.byte 0x1E  #  
		.byte 0x36  # 6
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x7F  # 
		.byte	 6  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7E  # ~
		.byte	 3  #  
		.byte	 3  #  
		.byte	 3  #  
		.byte 0x7E  # ~
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1E  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7E  # ~
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte	 3  #  
		.byte	 3  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3F  # ?
		.byte	 3  #  
		.byte	 3  #  
		.byte	 6  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte 0x30  # 0
		.byte 0x18  #  
		.byte  0xC  #  
		.byte	 6  #  
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
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte 0x30  # 0
		.byte 0x18  #  
		.byte  0xC  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte	 3  #  
		.byte  0xE  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x6F  # o
		.byte 0x6F  # o
		.byte 0x6E  # n
		.byte 0x6E  # n
		.byte 0x60  # `
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 8  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7F  # 
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7E  # ~
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7E  # ~
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7E  # ~
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1E  #  
		.byte 0x33  # 3
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x33  # 3
		.byte 0x1E  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7C  # |
		.byte 0x66  # f
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x66  # f
		.byte 0x7C  # |
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7C  # |
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7C  # |
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1E  #  
		.byte 0x33  # 3
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x6F  # o
		.byte 0x63  # c
		.byte 0x33  # 3
		.byte 0x1D  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7F  # 
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3C  # <
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte 0x7C  # |
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x66  # f
		.byte 0x6C  # l
		.byte 0x78  # x
		.byte 0x6C  # l
		.byte 0x66  # f
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x77  # w
		.byte 0x7F  # 
		.byte 0x7F  # 
		.byte 0x6B  # k
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x73  # s
		.byte 0x7B  # {
		.byte 0x7F  # 
		.byte 0x6F  # o
		.byte 0x67  # g
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7E  # ~
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7E  # ~
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte 0x3E  # >
		.byte	 3  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7E  # ~
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x7E  # ~
		.byte 0x78  # x
		.byte 0x6C  # l
		.byte 0x66  # f
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x60  # `
		.byte 0x30  # 0
		.byte 0x1C  #  
		.byte	 6  #  
		.byte	 3  #  
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0xFF  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte	 8  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x6B  # k
		.byte 0x6B  # k
		.byte 0x7F  # 
		.byte 0x7F  # 
		.byte 0x36  # 6
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3C  # <
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte	 3  #  
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3C  # <
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x40  # @
		.byte 0x60  # `
		.byte 0x30  # 0
		.byte 0x18  #  
		.byte  0xC  #  
		.byte	 6  #  
		.byte	 3  #  
		.byte	 1  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3C  # <
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte  0xC  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 8  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
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
		.byte 0xFF  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte  0xC  #  
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
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3C  # <
		.byte	 6  #  
		.byte 0x3E  # >
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7C  # |
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x7C  # |
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
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte 0x3E  # >
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
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
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x7F  # 
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x1E  #  
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x7C  # |
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
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
		.byte 0x3C  # <
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
		.byte	 6  #  
		.byte	 6  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x7C  # |
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte 0x38  # 8
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte  0xE  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x66  # f
		.byte 0x6C  # l
		.byte 0x78  # x
		.byte 0x78  # x
		.byte 0x6C  # l
		.byte 0x66  # f
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x38  # 8
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
		.byte 0x18  #  
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
		.byte 0x76  # v
		.byte 0x7F  # 
		.byte 0x6B  # k
		.byte 0x6B  # k
		.byte 0x6B  # k
		.byte 0x63  # c
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
		.byte 0x7C  # |
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
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
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x3E  # >
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
		.byte 0x7C  # |
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x7C  # |
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x3E  # >
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
		.byte	 6  #  
		.byte	 6  #  
		.byte	 6  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x6E  # n
		.byte 0x78  # x
		.byte 0x70  # p
		.byte 0x60  # `
		.byte 0x60  # `
		.byte 0x60  # `
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
		.byte 0x3E  # >
		.byte 0x63  # c
		.byte 0x38  # 8
		.byte  0xE  #  
		.byte 0x63  # c
		.byte 0x3E  # >
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x7E  # ~
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x30  # 0
		.byte 0x1E  #  
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
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
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
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
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
		.byte 0x63  # c
		.byte 0x63  # c
		.byte 0x6B  # k
		.byte 0x6B  # k
		.byte 0x7F  # 
		.byte 0x36  # 6
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
		.byte 0x63  # c
		.byte 0x36  # 6
		.byte 0x1C  #  
		.byte 0x1C  #  
		.byte 0x36  # 6
		.byte 0x63  # c
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
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x66  # f
		.byte 0x3E  # >
		.byte	 6  #  
		.byte	 6  #  
		.byte 0x3C  # <
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte	 6  #  
		.byte  0xC  #  
		.byte 0x18  #  
		.byte 0x30  # 0
		.byte 0x7F  # 
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  
Ab hier	sind 2 Viertelbogenartige Zeichen gesepeichert
Die Zeichen sind 16 Pixel breit	und 16 Pixel hoch ( 32 Byte )
Die Zeichen werden in der Funktion ab Adresse 8C007804 benutzt
		.byte 0xF0  # ğ
		.byte	 0  #  
		.byte 0xFE  # ş
		.byte	 0  #  
		.byte 0xFF  #  
		.byte 0x80  # €
		.byte 0xFF  #  
		.byte 0xC0  # À
		.byte 0xFF  #  
		.byte 0xE0  # à
		.byte 0xFF  #  
		.byte 0xF0  # ğ
		.byte 0xFF  #  
		.byte 0xF8  # ø
		.byte 0xFF  #  
		.byte 0xFC  # ü
		.byte 0xFF  #  
		.byte 0xFC  # ü
		.byte 0xFF  #  
		.byte 0xFE  # ş
		.byte 0xFF  #  
		.byte 0xFE  # ş
		.byte 0xFF  #  
		.byte 0xFE  # ş
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte	 0  #  
		.byte  0xF  #  
		.byte	 0  #  
		.byte 0x7F  # 
		.byte	 1  #  
		.byte 0xFF  #  
		.byte	 3  #  
		.byte 0xFF  #  
		.byte	 7  #  
		.byte 0xFF  #  
		.byte  0xF  #  
		.byte 0xFF  #  
		.byte 0x1F  #  
		.byte 0xFF  #  
		.byte 0x3F  # ?
		.byte 0xFF  #  
		.byte 0x3F  # ?
		.byte 0xFF  #  
		.byte 0x7F  # 
		.byte 0xFF  #  
		.byte 0x7F  # 
		.byte 0xFF  #  
		.byte 0x7F  # 
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
		.byte 0xFF  #  
Hier sind die Zeichen zu Ende
		.byte	 0  #  
		.byte	 0  #  
		.byte 0x11  #  
		.byte 0x84  # „
		.byte 0x18  #  
		.byte 0xF3  # ó
		.byte  0xE  #  
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
		.byte	 0  #  
		.byte 0x80  # €
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
		.byte	 0  #  
		.byte	 0  #  
		.byte	 0  #  

		 # end 
