Sound_CF_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_CF_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_CE_CF_PSG3,	0xE1, 0x00

/*  Song seems to not use any FM voices */
Sound_CF_Voices:
