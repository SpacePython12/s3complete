Sound_3D_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_3D_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cFM5, Sound_3D_FM5,	0x00, 0x00
	smpsHeaderSFXChannel cPSG3, Sound_3D_PSG3,	0x0C, 0x02

/* FM5 Data*/
Sound_3D_FM5:
	smpsModSet          0x03, 0x01, 0x72, 0x0B
	smpsSetvoice        0x00
	.byte	nA4, 0x16
	smpsStop

/* PSG3 Data*/
Sound_3D_PSG3:
	smpsPSGvoice        sTone_0E
	smpsPSGform         0xE7
	.byte	nB3, 0x1B
	smpsStop

Sound_3D_Voices:
/*	Voice 0x00*/
/*	0x3C*/
/*	0x0F, 0x01, 0x03, 0x01, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x19, 0x12, 0x19, 0x0E*/
/*	0x05, 0x12, 0x00, 0x0F, 	0x0F, 0x7F, 0xFF, 0xFF, 	0x00, 0x80, 0x00, 0x80*/
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x03, 0x01, 0x0F
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0E, 0x19, 0x12, 0x19
	smpsVcDecayRate2    0x0F, 0x00, 0x12, 0x05
	smpsVcDecayLevel    0x0F, 0x0F, 0x07, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x00

