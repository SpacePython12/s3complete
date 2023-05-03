Sound_97_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_97_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_97_PSG3,	0x14, 0x02

/*  PSG3 Data */
Sound_97_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_11
	.byte	nCs6, 0x04, (nMaxPSG2-0x14)&0xFF, 0x7F
	smpsStop

/*  Song seems to not use any FM voices */
Sound_97_Voices:
