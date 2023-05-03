		.word word_192F2-Map_SuperSonic_Stars
		.word word_192F4-Map_SuperSonic_Stars
		.word word_192FC-Map_SuperSonic_Stars
		.word word_19316-Map_SuperSonic_Stars
		.word word_192FC-Map_SuperSonic_Stars
		.word word_192F4-Map_SuperSonic_Stars
Map_SuperSonic_Stars2:
		.word word_19330-Map_SuperSonic_Stars2
		.word word_19338-Map_SuperSonic_Stars2
		.word word_19330-Map_SuperSonic_Stars2
		.word word_19340-Map_SuperSonic_Stars2
word_192F2:	.word 0
word_192F4:	.word 1
		.byte  0xF8,   5,   0,   0, 0xFF, 0xF8
word_192FC:	.word 4
		.byte  0xF0,   5,   0,   4, 0xFF, 0xF0
		.byte  0xF0,   5,   8,   4,   0,   0
		.byte    0,   5, 0x10,   4, 0xFF, 0xF0
		.byte    0,   5, 0x18,   4,   0,   0
word_19316:	.word 4
		.byte  0xE8,  0xA,   0,   8, 0xFF, 0xE8
		.byte  0xE8,  0xA,   8,   8,   0,   0
		.byte    0,  0xA, 0x10,   8, 0xFF, 0xE8
		.byte    0,  0xA, 0x18,   8,   0,   0
word_19330:	.word 1
		.byte  0xFC,   0,   0, 0x11, 0xFF, 0xFC
word_19338:	.word 1
		.byte  0xF8,   5,   0, 0x12, 0xFF, 0xF8
word_19340:	.word 1
		.byte  0xF8,   5,   0, 0x16, 0xFF, 0xF8
