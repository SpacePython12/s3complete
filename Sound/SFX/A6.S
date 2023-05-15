Sound_A6_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_A6_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_A6_PSG3,	0x02, 0x00

/* PSG3 Data*/
Sound_A6_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_1D
	smpsModSet          0x01, 0x01, 0xE0, 0xCA
	.byte	nF4, 0x03, nFs4, 0x0D
	smpsStop

/* Song seems to not use any FM voices*/
Sound_A6_Voices:
