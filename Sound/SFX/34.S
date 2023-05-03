Sound_34_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_33_34_B9_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cFM5, Sound_34_FM5,	0x00, 0x05

/*  FM5 Data */
Sound_34_FM5:
	smpsSetvoice        0x00
	smpsPan             panLeft, 0x00
	smpsJump            Sound_34_Jump00
