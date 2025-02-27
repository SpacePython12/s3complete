Sound_50_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_50_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_50_FM5,	0xE4, 0x05

/* FM5 Data*/
Sound_50_FM5:
	smpsSetvoice        0x00
	.byte	nB3, 0x02, smpsNoAttack, nC4, smpsNoAttack, nCs4, smpsNoAttack, nD4, 0x30

Sound_50_Loop00:
	.byte	smpsNoAttack, 0x01
	smpsFMAlterVol      0x01
	smpsLoop            0x00, 0x0A, Sound_50_Loop00
	smpsStop

Sound_50_Voices:
/*	Voice 0x00*/
/*	0x3C*/
/*	0x03, 0x01, 0x12, 0x01, 	0x1F, 0x11, 0x1F, 0x11, 	0x00, 0x0D, 0x00, 0x00*/
/*	0x00, 0x08, 0x00, 0x00, 	0x0F, 0x3F, 0x0F, 0x0F, 	0x00, 0x8A, 0x05, 0x80*/
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x01, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x02, 0x01, 0x03
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x11, 0x1F, 0x11, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x0D, 0x00
	smpsVcDecayRate2    0x00, 0x00, 0x08, 0x00
	smpsVcDecayLevel    0x00, 0x00, 0x03, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x05, 0x0A, 0x00

