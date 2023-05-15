Sound_9A_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_9A_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_9A_PSG3,	0xFF, 0x00

/* PSG3 Data*/
Sound_9A_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_15
	smpsModSet          0x01, 0x01, 0xDD, 0x02
	.byte	nE5, 0x04

Sound_9A_Loop00:
	.byte	nG6, 0x01
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x0C, Sound_9A_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_9A_Voices:
