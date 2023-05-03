Sound_8D_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_8D_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_8D_PSG3,	0x1F, 0x05

/*  PSG3 Data */
Sound_8D_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_16
	smpsModSet          0x01, 0x01, 0xF0, 0x17
	.byte	nD4, 0x03, 0x03, 0x03, 0x03, 0x04
	smpsStop

/*  Song seems to not use any FM voices */
Sound_8D_Voices:
