Vectors:	
    .long	0xFFFFFE, 	EntryPoint,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	H_int_jump,	ErrorTrap,	V_int_jump,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
	.long	ErrorTrap,	ErrorTrap,	ErrorTrap,	ErrorTrap
Header:		
    .ascii "SEGA GENESIS    "
Copyright:	
    .ascii "(C)SEGA 1994.JUN"
Domestic_Name:	
    .ascii "SONIC THE HEDGEHOG             3 COMPLETE       "
Overseas_Name:	
    .ascii "SONIC THE HEDGEHOG             3 COMPLETE       "
Serial_Number:	
    .ascii "GM MK-1563 -00"
Checksum:	
    .word 0xDFB3
Input:		
    .ascii "J               "
ROMStartLoc:	
    .long 0x000000
ROMEndLoc:	
    .long 0x3FFFFF
RAMStartLoc:	
    .long (0xFF0000)
RAMEndLoc:	
    .long (0xFFFFFF)
CartRAM_Info:	.ascii "RA"
CartRAM_Type:	.word 0xF820
CartRAMStartLoc:	.long 0x200001
CartRAMEndLoc:	.long 0x2003FF
Modem_Info:	.ascii "  "
		.ascii "          "
Unknown_Header:	.word  0
		.ascii  "      "
		.word  0,  0
		.long  0xFFFFFF /*  0	;CHECKLATER (ROM Bank Info) */
		.ascii  "        "
KiS2ROM_Info:	.ascii  "RO"
KiS2ROM_Type:	.word 0x2020
KiS2ROMStartLoc:	.byte 0x30, 0x00, 0x00
KiS2ROMEndLoc:		.byte 0x33, 0xFF, 0xFF
KiS2ROMStartLoc2:	.byte 0x30, 0x00, 0x00
KiS2ROMEndLoc2:		.byte 0x33, 0xFF, 0xFF
Country_Code:	.ascii "JUE             "
