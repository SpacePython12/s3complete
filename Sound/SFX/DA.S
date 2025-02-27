Sound_DA_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_DA_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM3, Sound_DA_FM3,	0x03, 0x00

/* FM3 Data*/
Sound_DA_FM3:
	smpsSetvoice        0x00
	smpsModSet          0x03, 0x01, 0xFD, 0x02

Sound_DA_Loop00:
	.byte	nE1, 0x16, smpsNoAttack
	smpsContinuousLoop  Sound_DA_Loop00
	.byte	0x01
	smpsStop

Sound_DA_Voices:
/*	Voice 0x00*/
/*	0xFA*/
/*	0x21, 0x47, 0x20, 0x30, 	0x04, 0x08, 0x07, 0x12, 	0x06, 0x0E, 0x09, 0x02*/
/*	0x00, 0x10, 0x01, 0x01, 	0x00, 0x00, 0x00, 0xFE, 	0x37, 0x4C, 0x00, 0x80*/
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x03
	smpsVcDetune        0x03, 0x02, 0x04, 0x02
	smpsVcCoarseFreq    0x00, 0x00, 0x07, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x12, 0x07, 0x08, 0x04
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x02, 0x09, 0x0E, 0x06
	smpsVcDecayRate2    0x01, 0x01, 0x10, 0x00
	smpsVcDecayLevel    0x0F, 0x00, 0x00, 0x00
	smpsVcReleaseRate   0x0E, 0x00, 0x00, 0x00
	smpsVcTotalLevel    0x00, 0x00, 0x4C, 0x37

