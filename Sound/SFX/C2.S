Sound_C2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_C2_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x01

	smpsHeaderSFXChannel cPSG3, Sound_C2_PSG3,	0x00, 0x00

/* PSG3 Data*/
Sound_C2_PSG3:
	smpsPSGform         0xE7
	.byte	nCs4

Sound_C2_Loop00:
	.byte	0x04, 0x04, 0x04, 0x04, 0x03, 0x03
	smpsContinuousLoop  Sound_C2_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_C2_Voices:
