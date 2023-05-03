Sound_B8_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_B8_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG2, Sound_B8_PSG2,	0x00, 0x00

/*  PSG2 Data */
Sound_B8_PSG2:
	smpsPSGvoice        sTone_03

Sound_B8_Loop00:
	.byte	nD5, 0x04, nE5, nFs5
	smpsPSGAlterVol     0x01
	smpsAlterPitch      0xFF
	smpsLoop            0x00, 0x05, Sound_B8_Loop00

Sound_B8_Loop01:
	.byte	nD5, 0x04, nE5, nFs5
	smpsPSGAlterVol     0x01
	smpsAlterPitch      0x01
	smpsLoop            0x00, 0x07, Sound_B8_Loop01
	smpsStop

/*  Song seems to not use any FM voices */
Sound_B8_Voices:
