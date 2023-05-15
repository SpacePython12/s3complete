Sound_7E_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_7E_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_7E_PSG3,	0x00, 0x03

/* PSG3 Data*/
Sound_7E_PSG3:
	smpsPSGform         0xE7
	smpsModSet          0x01, 0x01, 0x01, 0x01
	.byte	nMaxPSG2, 0x09
	smpsPSGAlterVol     0x04
	.byte	nG6, 0x06
	smpsStop

/* Song seems to not use any FM voices*/
Sound_7E_Voices:
