Sound_6A_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_6A_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_6A_FM5,	0xF2, 0x04

/* FM5 Data*/
Sound_6A_FM5:
	smpsSetvoice        0x00
	.byte	nCs3

Sound_6A_Loop00:
	.byte	0x02, smpsNoAttack, nB2, 0x01, smpsNoAttack
	smpsAlterPitch      0x02
	smpsLoop            0x00, 0x26, Sound_6A_Loop00
	.byte	0x01
	smpsStop

Sound_6A_Voices:
/*	Voice 0x00*/
/*	0x3B*/
/*	0x3C, 0x39, 0x30, 0x31, 	0xDF, 0x1F, 0x1F, 0xDF, 	0x04, 0x05, 0x04, 0x01*/
/*	0x04, 0x04, 0x04, 0x02, 	0xFF, 0x0F, 0x1F, 0xAF, 	0x29, 0x20, 0x0F, 0x80*/
	smpsVcAlgorithm     0x03
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x03, 0x03
	smpsVcCoarseFreq    0x01, 0x00, 0x09, 0x0C
	smpsVcRateScale     0x03, 0x00, 0x00, 0x03
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x04, 0x05, 0x04
	smpsVcDecayRate2    0x02, 0x04, 0x04, 0x04
	smpsVcDecayLevel    0x0A, 0x01, 0x00, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x0F, 0x20, 0x29

