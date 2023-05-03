		.word word_ABE2C-Map_SStageSonic
		.word word_ABE2E-Map_SStageSonic
		.word word_ABE3C-Map_SStageSonic
		.word word_ABE4A-Map_SStageSonic
		.word word_ABE5E-Map_SStageSonic
		.word word_ABE72-Map_SStageSonic
		.word word_ABE86-Map_SStageSonic
		.word word_ABE9A-Map_SStageSonic
		.word word_ABEAE-Map_SStageSonic
		.word word_ABEC2-Map_SStageSonic
		.word word_ABECA-Map_SStageSonic
		.word word_ABED2-Map_SStageSonic
PLC_SStageSonic:.word word_ABE2C-PLC_SStageSonic
		.word word_ABEDA-PLC_SStageSonic
		.word word_ABEE0-PLC_SStageSonic
		.word word_ABEE6-PLC_SStageSonic
		.word word_ABEEE-PLC_SStageSonic
		.word word_ABEF6-PLC_SStageSonic
		.word word_ABEFE-PLC_SStageSonic
		.word word_ABF06-PLC_SStageSonic
		.word word_ABF0E-PLC_SStageSonic
		.word word_ABF16-PLC_SStageSonic
		.word word_ABF1A-PLC_SStageSonic
		.word word_ABF1E-PLC_SStageSonic
word_ABE2C:	.word 0
word_ABE2E:	.word 2
		.byte  0xDD,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xFD,   8,	  0, 0x10, 0xFF, 0xF2
word_ABE3C:	.word 2
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,   9,	  0, 0x10, 0xFF, 0xF1
word_ABE4A:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  0, 0x10, 0xFF, 0xF2
		.byte  0xFD,   5,	  0, 0x13, 0xFF, 0xF2
word_ABE5E:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  0, 0x10, 0xFF, 0xF2
		.byte  0xFD,   5,	  0, 0x13, 0xFF, 0xF2
word_ABE72:	.word 3
		.byte  0xD5,  0xF,	  0,   0, 0xFF, 0xEE
		.byte  0xF5,   8,	  0, 0x10, 0xFF, 0xF6
		.byte  0xFD,   1,	  0, 0x13, 0xFF, 0xF6
word_ABE86:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xEF
		.byte  0xF5,   8,	  8, 0x10, 0xFF, 0xF7
		.byte  0xFD,   5,	  8, 0x13, 0xFF, 0xFF
word_ABE9A:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xEF
		.byte  0xF5,   8,	  8, 0x10, 0xFF, 0xF7
		.byte  0xFD,   5,	  8, 0x13, 0xFF, 0xFF
word_ABEAE:	.word 3
		.byte  0xD5,  0xF,	  8,   0, 0xFF, 0xF0
		.byte  0xF5,   8,	  8, 0x10, 0xFF, 0xF0
		.byte  0xFD,   1,	  8, 0x13,   0,	 0
word_ABEC2:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_ABECA:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_ABED2:	.word 1
		.byte  0xDA,  0xF,	  0,   0, 0xFF, 0xF0
word_ABEDA:	.word 2
		.word 0xF000
		.word 0x2010
word_ABEE0:	.word 2
		.word 0xF013
		.word 0x5023
word_ABEE6:	.word 3
		.word 0xF029
		.word 0x2039
		.word 0x303C
word_ABEEE:	.word 3
		.word 0xF040
		.word 0x2050
		.word 0x3053
word_ABEF6:	.word 3
		.word 0xF057
		.word 0x2067
		.word 0x106A
word_ABEFE:	.word 3
		.word 0xF029
		.word 0x2039
		.word 0x303C
word_ABF06:	.word 3
		.word 0xF040
		.word 0x2050
		.word 0x3053
word_ABF0E:	.word 3
		.word 0xF057
		.word 0x2067
		.word 0x106A
word_ABF16:	.word 1
		.word 0xF06C
word_ABF1A:	.word 1
		.word 0xF07C
word_ABF1E:	.word 1
		.word 0xF08C