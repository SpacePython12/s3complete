		.word	word_49C10-Map_PachinkoTriangleBumper
		.word word_49C12-Map_PachinkoTriangleBumper
		.word word_49C44-Map_PachinkoTriangleBumper
word_49C10:	.word 0			/* DATA XREF: ROM:00049C0Ao*/
word_49C12:	.word 8			/* DATA XREF: ROM:00049C0Ao*/
		.byte  0xC6,   6,	  0,   0,   0,	 3
		.byte  0xDE,   9,	  0,   6, 0xFF, 0xFB
		.byte  0xEE,   6,	  0,  0xC, 0xFF, 0xF3
		.byte	6,  0xB,	  0, 0x12, 0xFF, 0xEB
		.byte  0xEE,   3,	  0, 0x1E,   0,	0xB
		.byte   0xE,   2,	  0, 0x22,   0,	0xB
		.byte  0x26,   9,	  0, 0x25, 0xFF, 0xFB
		.byte  0x36,   0,	  0, 0x2B,   0,	0xB
word_49C44:	.word 4			/* DATA XREF: ROM:00049C0Ao*/
		.byte  0xE4,   5,	  0, 0x2C, 0xFF, 0xFE
		.byte  0xF4,  0xB,	  0, 0x30, 0xFF, 0xF6
		.byte  0x14,   9,	  0, 0x3C, 0xFF, 0xF6
		.byte  0x24,   4,	  0, 0x42, 0xFF, 0xFE
