Sound_BF_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_BF_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM3, Sound_BF_FM3,	0x02, 0x00

/* FM3 Data*/
Sound_BF_FM3:
	smpsSetvoice        0x00
	smpsModSet          0x01, 0x01, 0x7F, 0x24

Sound_BF_Loop00:
	.byte	nB1, 0x16, smpsNoAttack
	smpsContinuousLoop  Sound_BF_Loop00
	.byte	0x01
	smpsStop

Sound_BF_Voices:
/*	Voice 0x00*/
/*	0x04*/
/*	0x00, 0x10, 0x22, 0x30, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x00, 0x00, 0x00, 0x00*/
/*	0x00, 0x00, 0x00, 0x00, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x19, 0x88, 0x30, 0x80*/
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x02, 0x01, 0x00
	smpsVcCoarseFreq    0x00, 0x02, 0x00, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x00, 0x00, 0x00, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x30, 0x08, 0x19

