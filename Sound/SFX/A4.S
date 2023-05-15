Sound_A4_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sound_A4_Voices
	smpsHeaderTempoSFX  0x01
	smpsHeaderChanSFX   0x02

	smpsHeaderSFXChannel cPSG1, Sound_A4_PSG1,	0x0F, 0x03
	smpsHeaderSFXChannel cPSG2, Sound_A4_PSG2,	0x11, 0x04

/* PSG1 Data*/
Sound_A4_PSG1:
	.byte	nRst, 0x03

/* PSG2 Data*/
Sound_A4_PSG2:
	.byte	nRst, 0x03
	smpsPSGvoice        sTone_16
	smpsModSet          0x03, 0x01, 0xED, 0x10
	.byte	nD0, 0x07
	smpsAlterPitch      0x01
	smpsLoop            0x00, 0x10, Sound_A4_PSG2
	.byte	nRst, 0x03, nEb0, 0x05, nRst, 0x03, nEb0, 0x05
	smpsStop

/* Song seems to not use any FM voices*/
Sound_A4_Voices:
