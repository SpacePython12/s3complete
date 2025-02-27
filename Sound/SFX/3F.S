Sound_3F_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_3F_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_3E_3F_40_41_FM5,	0xF6, 0x0A

Sound_3F_Voices:
/*	Voice 0x00*/
/*	0x05*/
/*	0x11, 0x02, 0x23, 0x31, 	0x0B, 0x0C, 0x0E, 0x1C, 	0x0A, 0x00, 0x04, 0x00*/
/*	0x08, 0x06, 0x09, 0x0B, 	0xFF, 0x0F, 0xBF, 0x0F, 	0x09, 0x80, 0x80, 0x80*/
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x02, 0x00, 0x01
	smpsVcCoarseFreq    0x01, 0x03, 0x02, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1C, 0x0E, 0x0C, 0x0B
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x04, 0x00, 0x0A
	smpsVcDecayRate2    0x0B, 0x09, 0x06, 0x08
	smpsVcDecayLevel    0x00, 0x0B, 0x00, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x09

