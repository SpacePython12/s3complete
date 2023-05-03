Sound_56_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_4C_56_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_56_FM5,	0xEE, 0x00

/*  FM5 Data */
Sound_56_FM5:
	smpsSetvoice        0x00
	.byte	nB2, 0x06, nEb3
	smpsStop
