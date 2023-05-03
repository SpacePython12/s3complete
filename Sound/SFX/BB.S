Sound_BB_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_BA_BB_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM4, Sound_BB_FM4,	0xFA, 0x0B

/*  FM4 Data */
Sound_BB_FM4:
	smpsSetvoice        0x00
	.byte	nE2, 0x08, 0x08
	smpsStop
