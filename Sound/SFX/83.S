Sound_83_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_83_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x03

	smpsHeaderSFXChannel cFM5, Sound_83_FM5,	0x00, 0x03
	smpsHeaderSFXChannel cFM4, Sound_83_FM4,	0xDF, 0x00
	smpsHeaderSFXChannel cPSG3, Sound_83_PSG3,	0x20, 0x00

/* FM5 Data*/
Sound_83_FM5:
	.byte	nRst, 0x03

/* FM4 Data*/
Sound_83_FM4:
	smpsSetvoice        0x00
	smpsModSet          0x03, 0x01, 0x36, 0x06
	.byte	nD0, 0x22
	smpsStop

/* PSG3 Data*/
Sound_83_PSG3:
	smpsPSGform         0xE7
	smpsModSet          0x02, 0x01, 0x09, 0x28

Sound_83_Loop00:
	.byte	nC4, 0x0F
	smpsPSGAlterVol     0x0B
	smpsLoop            0x00, 0x03, Sound_83_Loop00
	smpsStop

Sound_83_Voices:
/*	Voice 0x00*/
/*	0x31*/
/*	0x4B, 0xF2, 0x00, 0x04, 	0x0F, 0x0F, 0x1F, 0x1F, 	0x0B, 0x03, 0x07, 0x0A*/
/*	0x10, 0x0B, 0x16, 0x0A, 	0xFF, 0x0F, 0xFF, 0x0F, 	0x50, 0x07, 0x10, 0x80*/
	smpsVcAlgorithm     0x01
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x0F, 0x04
	smpsVcCoarseFreq    0x04, 0x00, 0x02, 0x0B
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x0F, 0x0F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0A, 0x07, 0x03, 0x0B
	smpsVcDecayRate2    0x0A, 0x16, 0x0B, 0x10
	smpsVcDecayLevel    0x00, 0x0F, 0x00, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x10, 0x07, 0x50

