Sound_6B_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_6B_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG2, Sound_6B_PSG2,	0x0C, 0x00

/* PSG2 Data*/
Sound_6B_PSG2:
	smpsModSet          0x01, 0x01, 0xE6, 0x35
	.byte	nCs1, 0x06
	smpsStop

/* Song seems to not use any FM voices*/
Sound_6B_Voices:
