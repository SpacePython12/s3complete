Sound_D0_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_D0_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM3, Sound_D0_FM3,	0xF3, 0x07

/* FM3 Data*/
Sound_D0_FM3:
	smpsSetvoice        0x00
	smpsModSet          0x01, 0x01, 0x03, 0xCA
	.byte	nCs3, 0x61
	smpsModSet          0x01, 0x01, 0xDF, 0x05

Sound_D0_Loop00:
	.byte	smpsNoAttack, 0x16
	smpsContinuousLoop  Sound_D0_Loop00
	smpsStop

Sound_D0_Voices:
/*	Voice 0x00*/
/*	0x35*/
/*	0x06, 0x07, 0x03, 0x05, 	0x11, 0x07, 0x0B, 0xEE, 	0x0C, 0x15, 0x03, 0x06*/
/*	0x0C, 0x00, 0x00, 0x00, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x2E, 0x8D, 0x80, 0x80*/
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x05, 0x03, 0x07, 0x06
	smpsVcRateScale     0x03, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x2E, 0x0B, 0x07, 0x11
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x06, 0x03, 0x15, 0x0C
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x0C
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x01
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x0D, 0x2E

