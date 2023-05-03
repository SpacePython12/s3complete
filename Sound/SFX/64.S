Sound_64_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_64_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_64_PSG3,	0x00, 0x00

/*  PSG3 Data */
Sound_64_PSG3:
	smpsModSet          0x01, 0x01, 0xF0, 0x08
	smpsPSGform         0xE7
	.byte	nEb5, 0x04, nCs6, 0x04

Sound_64_Loop00:
	.byte	nEb5, 0x01
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x06, Sound_64_Loop00
	smpsStop

/*  Song seems to not use any FM voices */
Sound_64_Voices:
