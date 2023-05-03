Sound_5B_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_5B_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG2, Sound_5B_PSG2,	0x00, 0x00

/*  PSG2 Data */
Sound_5B_PSG2:
	.byte	nA5, 0x02
	smpsStop

/*  Song seems to not use any FM voices */
Sound_5B_Voices:
