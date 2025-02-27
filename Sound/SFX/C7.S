Sound_C7_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_C7_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM3, Sound_C7_FM3,	0x07, 0x04

/* FM3 Data*/
Sound_C7_FM3:
	smpsSetvoice        0x00

Sound_C7_Loop00:
	.byte	nEb3, 0x07, 0x07, 0x07
	smpsContinuousLoop  Sound_C7_Loop00
	.byte	nB2, 0x08
	smpsStop

Sound_C7_Voices:
/*	Voice 0x00*/
/*	0x33*/
/*	0x10, 0x70, 0x3C, 0x3A, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x17, 0x1F, 0x1F, 0x17*/
/*	0x00, 0x00, 0x00, 0x00, 	0xFF, 0x08, 0x0F, 0xFF, 	0x33, 0x1B, 0x33, 0x80*/
	smpsVcAlgorithm     0x03
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x07, 0x01
	smpsVcCoarseFreq    0x0A, 0x0C, 0x00, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x17, 0x1F, 0x1F, 0x17
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x00, 0x00, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x08, 0x0F
	smpsVcTotalLevel    0x00, 0x33, 0x1B, 0x33

