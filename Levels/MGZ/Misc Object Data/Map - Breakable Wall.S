Map_21FF18:	.word Frame_21FF20-Map_21FF18 /* ...*/
		.word Frame_21FF5E-Map_21FF18
		.word Frame_21FF20-Map_21FF18
		.word Frame_21FF5E-Map_21FF18
Frame_21FF20:	.word 0xA
		.byte 0xD8, 0xD,  0,0x66,0xFF,0xE0
		.byte 0xD8, 0xD,  8,0x66,  0,  0
		.byte 0xE8, 0xD,  0,0x66,0xFF,0xE0
		.byte 0xE8, 0xD,  8,0x66,  0,  0
		.byte 0xF8, 0xD,  0,0x66,0xFF,0xE0
		.byte 0xF8, 0xD,  8,0x66,  0,  0
		.byte   8, 0xD,  0,0x66,0xFF,0xE0
		.byte   8, 0xD,  8,0x66,  0,  0
		.byte 0x18, 0xD,  0,0x6E,0xFF,0xE0
		.byte 0x18, 0xD,  8,0x6E,  0,  0
Frame_21FF5E:	.word 0x14
		.byte 0xD8,  5,  0,0x66,0xFF,0xE0
		.byte 0xD8,  5,  0,0x6A,0xFF,0xF0
		.byte 0xD8,  5,  8,0x6A,  0,  0
		.byte 0xD8,  5,  8,0x66,  0,0x10
		.byte 0xE8,  5,  0,0x66,0xFF,0xE0
		.byte 0xE8,  5,  0,0x6A,0xFF,0xF0
		.byte 0xE8,  5,  8,0x6A,  0,  0
		.byte 0xE8,  5,  8,0x66,  0,0x10
		.byte 0xF8,  5,  0,0x66,0xFF,0xE0
		.byte 0xF8,  5,  0,0x6A,0xFF,0xF0
		.byte 0xF8,  5,  8,0x6A,  0,  0
		.byte 0xF8,  5,  8,0x66,  0,0x10
		.byte   8,  5,  0,0x66,0xFF,0xE0
		.byte   8,  5,  0,0x6A,0xFF,0xF0
		.byte   8,  5,  8,0x6A,  0,  0
		.byte   8,  5,  8,0x66,  0,0x10
		.byte 0x18,  5,  0,0x6E,0xFF,0xE0
		.byte 0x18,  5,  0,0x72,0xFF,0xF0
		.byte 0x18,  5,  8,0x72,  0,  0
		.byte 0x18,  5,  8,0x6E,  0,0x10
