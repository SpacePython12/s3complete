Snd_Results_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x25

	smpsHeaderDAC       Snd_Results_DAC
	smpsHeaderFM        Snd_Results_FM1,	0x0C, 0x12
	smpsHeaderFM        Snd_Results_FM2,	0x0C, 0x16
	smpsHeaderFM        Snd_Results_FM3,	0x0C, 0x16
	smpsHeaderFM        Snd_Results_FM4,	0x0C, 0x16
	smpsHeaderFM        Snd_Results_FM5,	0x0C, 0x1A
	smpsHeaderPSG       Snd_Results_PSG1,	0x00, 0x03, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Results_PSG2,	0x00, 0x03, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Results_PSG3,	0x00, 0x05, 0x00, sTone_0C

/*  Unreachable */
	smpsStop
	smpsStop

/*  DAC Data */
Snd_Results_DAC:
	.byte	dSnareS3, 0x06, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dKickS3
	.byte	dSnareS3, dKickS3, dKickS3, dSnareS3, dKickS3, 0x01, nRst, dKickS3, dKickS3, nRst, dKickS3, dHighTom
	.byte	0x06, dMidTomS3, dLowTomS3, dHighTom, dMidTomS3, dLowTomS3, dHighTom, dMidTomS3, dLowTomS3, dSnareS3
	smpsStop

/*  FM1 Data */
Snd_Results_FM1:
	smpsSetvoice        0x15
	.byte	nG0, 0x05, nRst, 0x01, nG1, 0x05, nRst, 0x01, nG0, 0x05, nRst, 0x01
	.byte	nD1, 0x05, nRst, 0x07, nG1, 0x05, nRst, 0x01, nG0, 0x05, nRst, 0x07
	.byte	nA0, 0x05, nRst, 0x01, nA1, 0x05, nRst, 0x01, nA0, 0x05, nRst, 0x01
	.byte	nE1, 0x05, nRst, 0x07, nA1, 0x05, nRst, 0x01, nA0, 0x05, nRst, 0x07
	.byte	nD1, 0x05, nRst, 0x01, nD2, 0x05, nRst, 0x01, nD1, 0x05, nRst, 0x01
	.byte	nE1, 0x05, nRst, 0x01, nE2, 0x05, nRst, 0x01, nE1, 0x05, nRst, 0x01
	.byte	nG1, 0x05, nRst, 0x01, nG2, 0x05, nRst, 0x01, nG1, 0x05, nRst, 0x01
	.byte	nA1, 0x5F, nRst, 0x01
	smpsStop

/*  FM2 Data */
Snd_Results_FM2:
	smpsAlterNote       0x03
	smpsSetvoice        0x08

Snd_Results_Jump00:
	.byte	nD3, 0x06, nD3, nD3, nD3, 0x07, nRst, 0x05, nD3, 0x07, nRst, 0x05
	.byte	nE3, 0x05, nRst, 0x07, nE3, 0x05, nRst, 0x07, nE3, 0x07, nRst, 0x05
	.byte	nE3, 0x11, nRst, 0x01, nG3, 0x05, nRst, 0x0D, nA3, 0x05, nRst, 0x0D
	.byte	nC4, 0x11, nRst, 0x01, nD4, 0x5F, nRst, 0x01
	smpsStop

/*  FM3 Data */
Snd_Results_FM3:
	smpsAlterNote       0xFF
	smpsSetvoice        0x01
	.byte	nC3, 0x06, nC3, nC3, nB2, nRst, nB2, nRst, nD3, nRst, 0x06, nD3
	.byte	0x06, nRst, 0x06, nCs3, 0x06, nRst, nCs3, 0x11, nRst, 0x01, nE3, 0x05
	.byte	nRst, 0x0D, nFs3, 0x05, nRst, 0x0D, nA3, 0x11, nRst, 0x01, nB3, 0x5F
	.byte	nRst, 0x01
	smpsStop

/*  FM4 Data */
Snd_Results_FM4:
	smpsAlterNote       0x01
	smpsSetvoice        0x01

Snd_Results_Jump01:
	.byte	nG2, 0x06, nG2, nG2, nG2, nRst, nG2, nRst, nA2, nRst, nA2, 0x03
	.byte	nRst, 0x09, nA2, 0x05, nRst, 0x07, nA2, 0x11, nRst, 0x01, nC3, 0x05
	.byte	nRst, 0x0D, nD3, 0x05, nRst, 0x0D, nF3, 0x11, nRst, 0x01, nG3, 0x5F
	.byte	nRst, 0x01
	smpsStop

/*  FM5 Data */
Snd_Results_FM5:
	smpsAlterNote       0xFD
	smpsPSGvoice        sTone_03
	.byte	nRst, 0x01
	smpsSetvoice        0x01
	smpsJump            Snd_Results_Jump00

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_Results_PSG1:
	smpsAlterNote       0x01
	smpsPSGvoice        sTone_03
	smpsJump            Snd_Results_Jump00

/*  Unreachable */
	smpsSetvoice        sTone_01
	.byte	nD3, 0x06, nD3, nD3, nD3, 0x05, nRst, 0x07, nD3, 0x05, nRst, 0x07
	.byte	nE3, 0x03, nRst, 0x09, nE3, 0x03, nRst, 0x09, nE3, 0x05, nRst, 0x07
	.byte	nE3, 0x11, nRst, 0x01, nG3, 0x05, nRst, 0x0D, nA3, 0x05, nRst, 0x0D
	.byte	nC4, 0x11, nRst, 0x01, nD4, 0x5F, nRst, 0x01
	smpsStop

/*  PSG2 Data */
Snd_Results_PSG2:
	smpsAlterNote       0xFF
	smpsSetvoice        sTone_01
	smpsPSGvoice        sTone_03
	smpsJump            Snd_Results_Jump01

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_Results_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         0xE7
	.byte	nMaxPSG2, 0x06, nMaxPSG2, nMaxPSG2, nMaxPSG2, 0x05, nRst, 0x07, nMaxPSG2, 0x05, nRst, 0x07
	.byte	nMaxPSG2, 0x03, nRst, 0x09, nMaxPSG2, 0x03, nRst, 0x09, nMaxPSG2, 0x05, nRst, 0x07
	.byte	nMaxPSG2, 0x11, nRst, 0x01, nMaxPSG2, 0x05, nRst, 0x0D, nMaxPSG2, 0x05, nRst, 0x0D
	.byte	nMaxPSG2, 0x11, nRst, 0x01, nMaxPSG2, 0x5F, nRst, 0x01
	smpsStop

