		.word word_AD332-Map_SStageKnuckles
		.word word_AD3BA-Map_SStageKnuckles
		.word word_AD370-Map_SStageKnuckles
		.word word_AD35C-Map_SStageKnuckles
		.word word_AD348-Map_SStageKnuckles
		.word word_AD334-Map_SStageKnuckles
		.word word_AD37E-Map_SStageKnuckles
		.word word_AD392-Map_SStageKnuckles
		.word word_AD3A6-Map_SStageKnuckles
		.word word_AD3CE-Map_SStageKnuckles
		.word word_AD3D6-Map_SStageKnuckles
		.word word_AD3DE-Map_SStageKnuckles
PLC_SStageKnuckles:.word word_AD332-PLC_SStageKnuckles
		.word word_AD41C-PLC_SStageKnuckles
		.word word_AD3FE-PLC_SStageKnuckles
		.word word_AD3F6-PLC_SStageKnuckles
		.word word_AD3EE-PLC_SStageKnuckles
		.word word_AD3E6-PLC_SStageKnuckles
		.word word_AD404-PLC_SStageKnuckles
		.word word_AD40C-PLC_SStageKnuckles
		.word word_AD414-PLC_SStageKnuckles
		.word word_AD424-PLC_SStageKnuckles
		.word word_AD428-PLC_SStageKnuckles
		.word word_AD42C-PLC_SStageKnuckles
word_AD332:	.word 0
word_AD334:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  0, 0x10, 0xFF, 0xF8
		.byte  0xFD,   0,	  0, 0x13, 0xFF, 0xF8
word_AD348:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  0, 0x10, 0xFF, 0xF8
		.byte  0xFD,   5,	  0, 0x13, 0xFF, 0xF0
word_AD35C:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,  0xC,	  0, 0x10, 0xFF, 0xF0
		.byte  0xFD,   4,	  0, 0x14, 0xFF, 0xF0
word_AD370:	.word 2
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,  0xD,	  0, 0x10, 0xFF, 0xF0
word_AD37E:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xF0
		.byte  0xF5,  0xC,	  8, 0x10, 0xFF, 0xF0
		.byte  0xFD,   4,	  8, 0x14,   0,	 0
word_AD392:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  8, 0x10, 0xFF, 0xF0
		.byte  0xFD,   5,	  8, 0x13,   0,	 0
word_AD3A6:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  8, 0x10, 0xFF, 0xF0
		.byte  0xFD,   0,	  8, 0x13,   0,	 0
word_AD3BA:	.word 3
		.byte  0xD9,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF9,  0xC,	  0, 0x10, 0xFF, 0xF0
		.byte	1,   4,	  0, 0x14, 0xFF, 0xF8
word_AD3CE:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_AD3D6:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_AD3DE:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_AD3E6:	.word 3
		.word 0xF000
		.word 0x2010
		.word 0x13
word_AD3EE:	.word 3
		.word 0xF014
		.word 0x2024
		.word 0x3027
word_AD3F6:	.word 3
		.word 0xF02B
		.word 0x303B
		.word 0x103F
word_AD3FE:	.word 2
		.word 0xF041
		.word 0x7051
word_AD404:	.word 3
		.word 0xF02B
		.word 0x303B
		.word 0x103F
word_AD40C:	.word 3
		.word 0xF014
		.word 0x2024
		.word 0x3027
word_AD414:	.word 3
		.word 0xF000
		.word 0x2010
		.word 0x13
word_AD41C:	.word 3
		.word 0xF059
		.word 0x3069
		.word 0x106D
word_AD424:	.word 1
		.word 0xF06F
word_AD428:	.word 1
		.word 0xF07F
word_AD42C:	.word 1
		.word 0xF08F