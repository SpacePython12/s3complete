Sound_52_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_52_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_52_PSG3,	0x00, 0x03

/* PSG3 Data*/
Sound_52_PSG3:
	smpsModSet          0x01, 0x01, 0xF0, 0x08
	smpsPSGform         0xE7
	.byte	nE5, 0x07

Sound_52_Loop00:
	.byte	nG6, 0x01
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x0C, Sound_52_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_52_Voices:
