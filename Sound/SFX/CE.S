Sound_CE_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_CE_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_CE_CF_PSG3,	0xE1, 0x05

/*  PSG3 Data */
Sound_CE_CF_PSG3:
	smpsPSGform         0xE7
	smpsModSet          0x0F, 0x01, 0xFF, 0x47
	smpsPSGvoice        0x00

Sound_CE_CF_Loop00:
	.byte	nA7, 0x16, smpsNoAttack
	smpsContinuousLoop  Sound_CE_CF_Loop00
	.byte	0x01
	smpsStop

/*  Song seems to not use any FM voices */
Sound_CE_Voices:
