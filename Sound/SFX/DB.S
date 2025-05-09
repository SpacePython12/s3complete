Sound_DB_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_DB_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_DB_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_DB_PSG3:
	smpsPSGform         0xE7
	.byte	nA6, 0x05

Sound_DB_Loop00:
	.byte	smpsNoAttack, nMaxPSG2, 0x16
	smpsContinuousLoop  Sound_DB_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_DB_Voices:
