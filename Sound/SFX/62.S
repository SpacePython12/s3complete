Sound_62_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_62_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG1, Sound_62_PSG1,	0x00, 0x00

/* PSG1 Data*/
Sound_62_PSG1:
	smpsPSGvoice        sTone_0D
	.byte	nF2, 0x05
	smpsModSet          0x02, 0x01, 0xF8, 0x65
	.byte	nBb2, 0x15
	smpsStop

/* Song seems to not use any FM voices*/
Sound_62_Voices:
