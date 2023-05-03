Sound_57_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_39_57_6C_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cPSG3, Sound_57_PSG3,	0x00, 0x00
	smpsHeaderSFXChannel cFM5, Sound_39_57_6C_FM5,	0x00, 0x00

/*  PSG3 Data */
Sound_57_PSG3:
	smpsPSGform         0xE7
	.byte	nB4, 0x0B

Sound_57_Loop00:
	.byte	nAb6
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x0A, Sound_57_Loop00
	.byte	0x10
	smpsStop
