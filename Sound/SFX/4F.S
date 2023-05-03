Sound_4F_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_4F_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_4F_PSG3,	0x00, 0x03

/*  PSG3 Data */
Sound_4F_PSG3:
	smpsPSGform         0xE7
	.byte	nG3, 0x10
	smpsStop

/*  Song seems to not use any FM voices */
Sound_4F_Voices:
