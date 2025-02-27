Sound_80_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_80_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_80_FM5,	0x00, 0x00

/* FM5 Data*/
Sound_80_FM5:
	smpsSetvoice        0x00
	smpsModSet          0x01, 0x01, 0x69, 0x70
	.byte	nB5, 0x06, nD6, 0x07
	smpsStop

Sound_80_Voices:
/*	Voice 0x00*/
/*	0x43*/
/*	0x38, 0x4F, 0xF7, 0x44, 	0x9F, 0x1F, 0x1F, 0x1F, 	0x0B, 0x09, 0x08, 0x0B*/
/*	0x0A, 0x12, 0x04, 0x0C, 	0x10, 0x01, 0x14, 0x19, 	0x2D, 0x80, 0x08, 0x80*/
	smpsVcAlgorithm     0x03
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x01
	smpsVcDetune        0x04, 0x0F, 0x04, 0x03
	smpsVcCoarseFreq    0x04, 0x07, 0x0F, 0x08
	smpsVcRateScale     0x00, 0x00, 0x00, 0x02
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0B, 0x08, 0x09, 0x0B
	smpsVcDecayRate2    0x0C, 0x04, 0x12, 0x0A
	smpsVcDecayLevel    0x01, 0x01, 0x00, 0x01
	smpsVcReleaseRate   0x09, 0x04, 0x01, 0x00
	smpsVcTotalLevel    0x00, 0x08, 0x80, 0x2D

