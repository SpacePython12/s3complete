Sound_4B_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_4B_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cFM5, Sound_4B_FM5,	0x00, 0x06
	smpsHeaderSFXChannel cPSG3, Sound_4B_PSG3,	0x00, 0x00

/* FM5 Data*/
Sound_4B_FM5:
	smpsSetvoice        0x00
	.byte	nEb5, 0x06, smpsNoAttack, nG6, 0x05

Sound_4B_Loop00:
	.byte	smpsNoAttack
	smpsFMAlterVol      0x02
	.byte	0x05
	smpsLoop            0x00, 0x0A, Sound_4B_Loop00
	smpsStop

/* PSG3 Data*/
Sound_4B_PSG3:
	smpsPSGform         0xE7
	.byte	nBb5, 0x10

Sound_4B_Loop01:
	.byte	smpsNoAttack
	smpsPSGAlterVol     0x01
	smpsAlterPitch      0xFF
	.byte	0x05
	smpsLoop            0x00, 0x0A, Sound_4B_Loop01
	smpsStop

Sound_4B_Voices:
/*	Voice 0x00*/
/*	0x00*/
/*	0x10, 0x0F, 0x10, 0x0F, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x00, 0x00, 0x00, 0x00*/
/*	0x00, 0x00, 0x00, 0x04, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x00, 0x00, 0x00, 0x80*/
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x01, 0x00, 0x01
	smpsVcCoarseFreq    0x0F, 0x00, 0x0F, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x04, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x00, 0x00, 0x00, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x00

