Sound_36_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_36_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cPSG2, Sound_36_PSG2,	0x00, 0x00
	smpsHeaderSFXChannel cPSG1, Sound_36_PSG1,	0xFE, 0x00

/* PSG1 Data*/
Sound_36_PSG1:
	.byte	nRst, 0x01

/* PSG2 Data*/
Sound_36_PSG2:
	smpsPSGvoice        sTone_0D
	.byte	nBb3, 0x01, nRst, nBb3, nRst, 0x03

Sound_36_Loop00:
	.byte	nBb3, 0x01, nRst, 0x01
	smpsLoop            0x00, 0x0B, Sound_36_Loop00
	smpsStop

/* Song seems to not use any FM voices*/
Sound_36_Voices:
