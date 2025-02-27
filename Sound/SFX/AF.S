Sound_AF_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_AF_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_AF_FM5,	0x00, 0x02

/* FM5 Data*/
Sound_AF_FM5:
	smpsSetvoice        0x00
	smpsModSet          0x01, 0x01, 0x50, 0x02
	.byte	nEb6, 0x65
	smpsStop

Sound_AF_Voices:
/*	Voice 0x00*/
/*	0x20*/
/*	0x36, 0x35, 0x30, 0x31, 	0x41, 0x49, 0x3B, 0x4B, 	0x09, 0x06, 0x09, 0x08*/
/*	0x01, 0x03, 0x02, 0xA9, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x29, 0x27, 0x23, 0x80*/
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x04
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x03, 0x03
	smpsVcCoarseFreq    0x01, 0x00, 0x05, 0x06
	smpsVcRateScale     0x01, 0x00, 0x01, 0x01
	smpsVcAttackRate    0x0B, 0x3B, 0x09, 0x01
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x08, 0x09, 0x06, 0x09
	smpsVcDecayRate2    0xA9, 0x02, 0x03, 0x01
	smpsVcDecayLevel    0x00, 0x00, 0x00, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x23, 0x27, 0x29

