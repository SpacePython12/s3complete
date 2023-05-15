Sound_7F_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_7F_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_7F_PSG3,	0xE5, 0x01

/* PSG3 Data*/
Sound_7F_PSG3:
	smpsPSGform         0xE7
	.byte	nF5, 0x05
	smpsModSet          0x02, 0x03, 0xF5, 0x0A
	.byte	nEb6, 0x06, nE6, 0x05, nB4, 0x03, nE6, 0x05, nB4, 0x03
	smpsStop

/* Song seems to not use any FM voices*/
Sound_7F_Voices:
