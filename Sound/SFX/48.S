Sound_48_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_48_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_48_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_48_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_0D
	.byte	nFs4, 0x04

Sound_48_Loop00:
	.byte	smpsNoAttack, 0x0F
	smpsPSGAlterVol     0x01
	smpsLoop            0x00, 0x04, Sound_48_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_48_Voices:
