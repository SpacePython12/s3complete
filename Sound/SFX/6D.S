Sound_6D_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_6D_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_6D_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_6D_PSG3:
	smpsPSGvoice        sTone_0D
	smpsPSGform         0xE7
	.byte	nA5, 0x03, nRst, 0x03, nA5, 0x01, smpsNoAttack

Sound_6D_Loop00:
	.byte	0x01
	smpsPSGAlterVol     0x01
	.byte	smpsNoAttack
	smpsLoop            0x00, 0x15, Sound_6D_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_6D_Voices:
