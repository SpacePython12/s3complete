Snd_Continue_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x58

	smpsHeaderDAC       Snd_Continue_DAC
	smpsHeaderFM        Snd_Continue_FM1,	0x18, 0x12
	smpsHeaderFM        Snd_Continue_FM2,	0x18, 0x10
	smpsHeaderFM        Snd_Continue_FM3,	0x0C, 0x14
	smpsHeaderFM        Snd_Continue_FM4,	0x0C, 0x0E
	smpsHeaderFM        Snd_Continue_FM5,	0x0C, 0x0E
	smpsHeaderPSG       Snd_Continue_PSG1,	0xF4, 0x04, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Continue_PSG2,	0xF4, 0x04, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Continue_PSG3,	0x00, 0x03, 0x00, sTone_0C

/*  Unreachable */
	smpsStop
	smpsStop

/*  DAC Data */
Snd_Continue_DAC:
	.byte	dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, dSnareS3, nRst, 0x08, dSnareS3, 0x02, dSnareS3
	.byte	dSnareS3, 0x04, dSnareS3, dSnareS3

Snd_Continue_Jump00:
	.byte	dKickS3, nRst, dKickS3, dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst
	.byte	dKickS3, nRst, 0x08, dKickS3, 0x04, dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3
	.byte	dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, 0x08, dKickS3, 0x04
	.byte	nRst, dKickS3, dSnareS3, nRst, dKickS3, nRst, 0x08, dKickS3, 0x04, dSnareS3, nRst, 0x08
	.byte	dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3
	.byte	nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, dKickS3, nRst, 0x08, dKickS3
	.byte	0x04, dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, 0x08, dKickS3
	.byte	0x04, nRst, dKickS3, dSnareS3, nRst, 0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst
	.byte	0x08, dKickS3, 0x04, nRst, dKickS3, dSnareS3, nRst, dSnareS3, nRst, 0x08, dSnareS3, 0x02
	.byte	dSnareS3, dSnareS3, 0x04, dSnareS3, dSnareS3
	smpsJump            Snd_Continue_Jump00
	
/*  Unreachable */
	.byte	nRst, 0x7F, nRst, nRst, nRst, 0x53
	smpsStop

/*  FM1 Data */
Snd_Continue_FM1:
	smpsSetvoice        0x03
	smpsAlterNote       0xFE
	smpsModSet          0x0F, 0x01, 0x06, 0x06
	smpsAlterNote       0x01
	smpsPan             panRight, 0x00
	smpsCall            Snd_Continue_Call00

Snd_Continue_Call00:
	.byte	nRst, 0x08, nEb4, 0x04, nE4, 0x08, nC4, 0x04, nD4, 0x08, nC4, 0x04
	.byte	nA3, 0x08, nC4, 0x04

Snd_Continue_Jump04:
	.byte	nRst, 0x14, nBb3, 0x02, nC4, 0x0E, nA3, 0x04, nRst, 0x08, nG3, 0x0C
	.byte	nA3, 0x08, nEb3, 0x02, nE3, nG3, 0x08, nA3, 0x04, nRst, 0x20, nBb3
	.byte	0x02, nC4, 0x0E, nA3, 0x04, nRst, 0x08, nEb3, 0x0C, nD3, 0x08, nC3
	.byte	0x04, nRst, 0x24, nA2, 0x0C, nC3, nD3, 0x08, nEb3, 0x0C, nD3, 0x04
	.byte	nEb3, 0x08, nD3, 0x04, nEb3, 0x08, nD3, 0x04, nC3, 0x08, nRst, 0x0C
	.byte	nEb4, 0x04, nE4, 0x08, nC4, 0x04, nD4, 0x08, nC4, 0x04, nRst, 0x08
	.byte	nEb4, 0x04, nRst, 0x08, nEb4, 0x04, nE4, 0x08, nC4, 0x04, nD4, 0x08
	.byte	nC4, 0x04, nA3, 0x08, nC4, 0x04
	smpsJump            Snd_Continue_Jump04

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_Continue_FM2:
	smpsSetvoice        0x14
	smpsAlterNote       0x00
	smpsModSet          0x02, 0x01, 0x01, 0x02
	.byte	nF1, 0x0B, nRst, 0x01, nFs1, 0x07, nRst, 0x01, nG1, 0x03, nRst, 0x09
	.byte	nG0, 0x03, nRst, 0x01, nG0, 0x0B, nRst, 0x01

Snd_Continue_Jump03:
	.byte	nC1, 0x0B, nRst, 0x01, nE1, 0x0B, nRst, 0x01, nF1, 0x0B, nRst, 0x01
	.byte	nFs1, 0x07, nRst, 0x01, nG1, 0x03, nRst, 0x09, nG1, 0x03, nRst, 0x01
	.byte	nC1, 0x0B, nRst, 0x01, nE1, 0x0B, nRst, 0x01, nC1, 0x0B, nRst, 0x01
	.byte	nA0, 0x0B, nRst, 0x01, nC1, 0x0B, nRst, 0x01, nD1, 0x0B, nRst, 0x01
	.byte	nEb1, 0x07, nRst, 0x01, nE1, 0x03, nRst, 0x09, nE1, 0x03, nRst, 0x01
	.byte	nA0, 0x0B, nRst, 0x01, nC1, 0x0B, nRst, 0x01, nA0, 0x0B, nRst, 0x01
	.byte	nF0, 0x0B, nRst, 0x01, nA0, 0x0B, nRst, 0x01, nC1, 0x0B, nRst, 0x01
	.byte	nD1, 0x07, nRst, 0x01, nEb1, 0x03, nRst, 0x09, nEb1, 0x03, nRst, 0x01
	.byte	nC1, 0x0B, nRst, 0x01, nA0, 0x0B, nRst, 0x01, nF0, 0x0B, nRst, 0x01
	.byte	nD1, 0x07, nRst, 0x01, nD1, 0x03, nRst, 0x01, nD1, 0x0B, nRst, 0x01
	.byte	nE1, 0x07, nRst, 0x01, nE1, 0x03, nRst, 0x01, nE1, 0x0B, nRst, 0x01
	.byte	nF1, 0x0B, nRst, 0x01, nFs1, 0x07, nRst, 0x01, nG1, 0x03, nRst, 0x09
	.byte	nG0, 0x03, nRst, 0x01, nG0, 0x0B, nRst, 0x01
	smpsJump            Snd_Continue_Jump03
	
/*  Unreachable */
	.byte	nRst, 0x7F, nRst, nRst, nRst, nRst, nRst, 0x41
	smpsStop

/*  FM3 Data */
Snd_Continue_FM3:
	smpsSetvoice        0x08
	smpsAlterNote       0x01
	smpsModSet          0x0F, 0x01, 0x06, 0x06
	smpsAlterNote       0xFF
	smpsPan             panLeft, 0x00
	.byte	nRst, 0x01
	smpsCall            Snd_Continue_Call00
	smpsStop

/*  FM4 Data */
Snd_Continue_FM4:
	smpsSetvoice        0x06
	smpsAlterNote       0x01
	smpsModSet          0x0A, 0x01, 0x03, 0x06
	.byte	nRst, 0x2C, nG3, 0x03, nRst, 0x01

Snd_Continue_Jump02:
	.byte	nRst, 0x08, nG3, 0x0A, nF3, 0x01, nE3, nD3, nC3, nBb2, nA2, nG2
	.byte	nF2, nE2, nD2, nRst, 0x38, nG3, 0x08, nE3, 0x03, nRst, 0x09, nE3
	.byte	0x0A, nD3, 0x01, nC3, nBb2, nA2, nG2, nF2, nE2, nD2, nC2, nBb1
	.byte	nRst, 0x38, nE3, 0x08, nC3, 0x03, nRst, 0x09, nC3, 0x0A, nBb2, 0x01
	.byte	nA2, nG2, nF2, nE2, nD2, nC2, nBb1, nA1, nG1, nRst, 0x38, nA3
	.byte	0x0C, nF3, 0x18, nG3, nA3, 0x0C, nA3, 0x08, nB3, 0x04, nRst, 0x14
	.byte	nG3, 0x04
	smpsJump            Snd_Continue_Jump02

/*  Unreachable */
	.byte	nRst, 0x7F, nRst, nRst, 0x5C
	smpsStop

/*  FM5 Data */
Snd_Continue_FM5:
	smpsSetvoice        0x06
	smpsAlterNote       0xFF
	smpsModSet          0x0A, 0x01, 0x03, 0x06
	.byte	nRst, 0x2C, nC4, 0x03, nRst, 0x01

Snd_Continue_Jump01:
	.byte	nRst, 0x08, nC4, 0x0A, nBb3, 0x01, nA3, nG3, nF3, nE3, nD3, nC3
	.byte	nBb2, nA2, nG2, nRst, 0x38, nC4, 0x08, nA3, 0x03, nRst, 0x09, nA3
	.byte	0x0A, nG3, 0x01, nF3, nE3, nD3, nC3, nBb2, nA2, nG2, nF2, nE2
	.byte	nRst, 0x38, nA3, 0x08, nF3, 0x03, nRst, 0x09, nF3, 0x0A, nEb3, 0x01
	.byte	nD3, nC3, nBb2, nA2, nG2, nF2, nEb2, nD2, nC2, nRst, 0x38, nC4
	.byte	0x0C, nA3, 0x18, nB3, nC4, 0x0C, nC4, 0x08, nD4, 0x04, nRst, 0x14
	.byte	nC4, 0x04
	smpsJump            Snd_Continue_Jump01

/*  Unreachable */
	.byte	nRst, 0x7F, nRst, nRst, 0x5C
	smpsStop

/*  PSG1 Data */
Snd_Continue_PSG1:
	smpsPSGvoice        sTone_04
	.byte	nRst, 0x30

Snd_Continue_Jump07:
	.byte	nRst, 0x08, nC4, 0x02, nRst, nC5, nRst, 0x06, nC4, 0x02, nRst, nC5
	.byte	nRst, 0x0A, nC4, 0x02, nRst, 0x06, nC5, 0x02, nRst, 0x16, nC4, 0x02
	.byte	nRst, nC5, nRst, 0x12, nC5, 0x02, nRst, 0x0A, nA3, 0x02, nRst, nA4
	.byte	nRst, 0x06, nA3, 0x02, nRst, nA4, nRst, 0x0A, nA3, 0x02, nRst, 0x06
	.byte	nA4, 0x02, nRst, 0x0A, nEb4, 0x02, nRst, nE4, nRst, 0x06, nG4, 0x02
	.byte	nRst, nA4, nRst, 0x06, nE4, 0x02, nRst, 0x0A, nE4, 0x02, nRst, 0x0A
	.byte	nF3, 0x02, nRst, nF4, nRst, 0x06, nF3, 0x02, nRst, nF4, nRst, 0x0A
	.byte	nF3, 0x02, nRst, 0x06, nF4, 0x02, nRst, 0x16, nF3, 0x02, nRst, nF4
	.byte	nRst, 0x12, nF4, 0x02, nRst, 0x0E, nF4, 0x02, nRst, 0x06, nE4, 0x02
	.byte	nRst, 0x1A, nF4, 0x02, nRst, 0x0A, nFs4, 0x02, nRst, 0x06, nG4, 0x02
	.byte	nRst, 0x1A
	smpsJump            Snd_Continue_Jump07

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_Continue_PSG2:
	smpsPSGvoice        sTone_04
	.byte	nRst, 0x30

Snd_Continue_Jump06:
	.byte	nRst, 0x08, nE3, 0x02, nRst, nE4, nRst, 0x06, nE3, 0x02, nRst, nE4
	.byte	nRst, 0x0A, nE3, 0x02, nRst, 0x06, nE4, 0x02, nRst, 0x16, nE3, 0x02
	.byte	nRst, nE4, nRst, 0x12, nE4, 0x02, nRst, 0x0A, nC3, 0x02, nRst, nC4
	.byte	nRst, 0x06, nC3, 0x02, nRst, nC4, nRst, 0x0A, nC3, 0x02, nRst, 0x06
	.byte	nC4, 0x02, nRst, 0x0A, nC3, 0x02, nRst, nC4, nRst, 0x06, nC3, 0x02
	.byte	nRst, nC4, nRst, 0x0A, nC3, 0x02, nRst, 0x06, nC4, 0x02, nRst, 0x0A
	.byte	nA2, 0x02, nRst, nA3, nRst, 0x06, nA2, 0x02, nRst, nA3, nRst, 0x0A
	.byte	nA2, 0x02, nRst, 0x06, nA3, 0x02, nRst, 0x16, nA2, 0x02, nRst, nA3
	.byte	nRst, 0x12, nA3, 0x02, nRst, 0x0E, nA3, 0x02, nRst, 0x06, nG3, 0x02
	.byte	nRst, 0x1A, nA3, 0x02, nRst, 0x0A, nBb3, 0x02, nRst, 0x06, nB3, 0x02
	.byte	nRst, 0x1A
	smpsJump            Snd_Continue_Jump06

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_Continue_PSG3:
	smpsPSGform         0xE7

Snd_Continue_Jump05:
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x10
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x08
	smpsPSGvoice        sTone_04
	.byte	nMaxPSG2, 0x18
	smpsJump            Snd_Continue_Jump05

/*  Unreachable */
	smpsStop
	smpsStop

