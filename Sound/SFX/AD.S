Sound_AD_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_A7_AD_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM4, Sound_AD_FM4,	0x17, 0x0C

/* FM4 Data*/
Sound_AD_FM4:
	smpsSetvoice        0x00
	.byte	nB4, 0x48
	smpsStop
