Sound_3A_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_3A_71_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_3A_71_FM5,	0x0C, 0x00

/* FM5 Data*/
Sound_3A_71_FM5:
	smpsSetvoice        0x00
	.byte	nBb2, 0x05, smpsNoAttack, nB2, 0x26
	smpsStop

Sound_3A_71_Voices:
/*	Voice 0x00*/
/*	0x30*/
/*	0x30, 0x30, 0x30, 0x30, 	0x9E, 0xA8, 0xAC, 0xDC, 	0x0E, 0x0A, 0x04, 0x05*/
/*	0x08, 0x08, 0x08, 0x08, 	0xBF, 0xBF, 0xBF, 0xBF, 	0x04, 0x2C, 0x14, 0x80*/
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x03, 0x03
	smpsVcCoarseFreq    0x00, 0x00, 0x00, 0x00
	smpsVcRateScale     0x03, 0x02, 0x02, 0x02
	smpsVcAttackRate    0x1C, 0x2C, 0x28, 0x1E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x05, 0x04, 0x0A, 0x0E
	smpsVcDecayRate2    0x08, 0x08, 0x08, 0x08
	smpsVcDecayLevel    0x0B, 0x0B, 0x0B, 0x0B
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x14, 0x2C, 0x04

