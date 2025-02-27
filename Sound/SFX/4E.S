Sound_4E_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_4E_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cPSG3, Sound_4E_PSG3,	0x00, 0x00
	smpsHeaderSFXChannel cFM5, Sound_4E_FM5,	0x00, 0x10

/* PSG3 Data*/
Sound_4E_PSG3:
	smpsPSGform         0xE7
	.byte	nMaxPSG1, 0x06

Sound_4E_Loop00:
	.byte	nEb6, 0x06
	smpsAlterPitch      0xFE
	smpsLoop            0x00, 0x08, Sound_4E_Loop00

Sound_4E_Loop01:
	.byte	nEb6
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x0E, Sound_4E_Loop01
	smpsStop

/* FM5 Data*/
Sound_4E_FM5:
	smpsSetvoice        0x00
	.byte	nC2, 0x68
	smpsStop

Sound_4E_Voices:
/*	Voice 0x00*/
/*	0x3D*/
/*	0x00, 0x10, 0x20, 0x00, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x09, 0x00, 0x00, 0x00*/
/*	0x00, 0x0C, 0x0A, 0x0A, 	0xFF, 0x0F, 0x0F, 0x0F, 	0x06, 0x80, 0x80, 0x80*/
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x02, 0x01, 0x00
	smpsVcCoarseFreq    0x00, 0x00, 0x00, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x09
	smpsVcDecayRate2    0x0A, 0x0A, 0x0C, 0x00
	smpsVcDecayLevel    0x00, 0x00, 0x00, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x06

