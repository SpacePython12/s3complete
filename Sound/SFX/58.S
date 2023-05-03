Sound_58_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_58_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_58_PSG3,	0x1D, 0x00

/*  PSG3 Data */
Sound_58_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_0F
	.byte	nB3, 0x02, nRst, 0x03, nD4, 0x04
	smpsPSGAlterVol     0x02
	.byte	nD3, 0x04
	smpsStop

/*  Song seems to not use any FM voices */
Sound_58_Voices:
