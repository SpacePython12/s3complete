Sound_B9_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_33_34_B9_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cFM4, Sound_B9_FM4,	0x00, 0x05
	smpsHeaderSFXChannel cFM5, Sound_B9_FM5,	0x00, 0x08

/* FM4 Data*/
Sound_B9_FM4:
	smpsSetvoice        0x00
	.byte	nA5, 0x02, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x3A
	smpsStop

/* FM5 Data*/
Sound_B9_FM5:
	smpsSetvoice        0x00
	.byte	nRst, 0x02, nG5, 0x02, 0x05, 0x15, 0x02, 0x05, 0x32
	smpsStop
