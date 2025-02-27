Sound_D8_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_D8_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM3, Sound_D8_FM3,	0x00, 0x05

/* FM3 Data*/
Sound_D8_FM3:
	smpsSetvoice        0x00
	smpsModSet          0x01, 0x01, 0x01, 0x83
	.byte	nFs2, 0x16

Sound_D8_Loop00:
	.byte	smpsNoAttack, nFs2, 0x16
	smpsContinuousLoop  Sound_D8_Loop00
	smpsStop

Sound_D8_Voices:
/*	Voice 0x00*/
/*	0x82*/
/*	0x1F, 0x18, 0x14, 0x1F, 	0x0D, 0x1F, 0x12, 0x0C, 	0x00, 0x00, 0x00, 0x00*/
/*	0x02, 0x02, 0x02, 0x02, 	0x2F, 0x2F, 0xFF, 0x3F, 	0x22, 0x16, 0x11, 0x82*/
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x02
	smpsVcDetune        0x01, 0x01, 0x01, 0x01
	smpsVcCoarseFreq    0x0F, 0x04, 0x08, 0x0F
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x0C, 0x12, 0x1F, 0x0D
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x02, 0x02, 0x02, 0x02
	smpsVcDecayLevel    0x03, 0x0F, 0x02, 0x02
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x02, 0x11, 0x16, 0x22

