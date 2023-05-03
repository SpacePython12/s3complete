Sound_47_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_47_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_47_PSG3,	0x00, 0x00

/*  PSG3 Data */
Sound_47_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_0D
	.byte	nMaxPSG2, 0x02, smpsNoAttack, nMaxPSG1, smpsNoAttack, nA6, smpsNoAttack, nAb6

Sound_47_Loop00:
	.byte	smpsNoAttack, nG6
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x0A, Sound_47_Loop00
	smpsStop

/*  Song seems to not use any FM voices */
Sound_47_Voices:
