Sound_89_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_89_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG2, Sound_89_PSG2,	0xFB, 0x02

/* PSG2 Data*/
Sound_89_PSG2:
	.byte	nD4, 0x05
	smpsStop

/* Song seems to not use any FM voices*/
Sound_89_Voices:
