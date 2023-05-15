Sound_43_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_43_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_43_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_43_PSG3:
	smpsPSGform         0xE7
	.byte	nD3, 0x15, smpsNoAttack

Sound_43_Loop00:
	.byte	0x02
	smpsPSGAlterVol     0x01
	.byte	smpsNoAttack
	smpsLoop            0x00, 0x10, Sound_43_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_43_Voices:
