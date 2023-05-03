Sound_42_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_42_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_42_PSG3,	0x10, 0x00

/*  PSG3 Data */
Sound_42_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_17
	.byte	nCs6, 0x04
	smpsModSet          0x02, 0x01, 0x06, 0x07
	.byte	nE5, 0x10
	smpsStop

/*  Song seems to not use any FM voices */
Sound_42_Voices:
