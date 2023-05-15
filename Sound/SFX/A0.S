Sound_A0_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_A0_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_A0_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_A0_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_1D
	smpsModSet          0x01, 0x01, 0xFE, 0x53
	.byte	nAb6, 0x06, nEb5, 0x38
	smpsStop

/* Song seems to not use any FM voices*/
Sound_A0_Voices:
