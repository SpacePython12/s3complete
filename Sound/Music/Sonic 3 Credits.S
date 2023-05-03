s3p38_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p38_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x30

	smpsHeaderDAC       s3p38_DAC
	smpsHeaderFM        s3p38_FM1,	0x00, 0x15
	smpsHeaderFM        s3p38_FM2,	0x0C, 0x0E
	smpsHeaderFM        s3p38_FM3,	0x00, 0x0D
	smpsHeaderFM        s3p38_FM4,	0x0C, 0x1E
	smpsHeaderFM        s3p38_FM5,	0x00, 0x1A
	smpsHeaderPSG       s3p38_PSG1,	0xF4, 0x05, 0x00, 0x00
	smpsHeaderPSG       s3p38_PSG2,	0xF4, 0x05, 0x00, 0x00
	smpsHeaderPSG       s3p38_PSG3,	0x23, 0x04, 0x00, 0x00

/*  FM1 Data */
s3p38_FM1:
	smpsModSet          0x01, 0x01, 0x01, 0x04

s3p38_Jump01:
	smpsSetvoice        0x00
	.byte	nRst, 0x24, nAb4, 0x06, nG4, nAb4, 0x0C, nC4, 0x06, nC4, nG4, nAb4
	.byte	0x2A, nBb4, 0x18, nBb3, 0x30, nRst, 0x24, nEb4, 0x06, nB3, nFs4, 0x0C
	.byte	nEb4, 0x06, nEb4, nFs4, nB4, 0x2A, nCs5, 0x0C, nF4, nAb4, 0x30, nRst
	.byte	0x24, nAb4, 0x06, nG4, nAb4, 0x0C, nC4, 0x06, nC4, nG4, nAb4, 0x2A
	.byte	nBb4, 0x0C, nRst, nBb3, 0x30, nRst, 0x24, nEb4, 0x06, nB3, nFs4, 0x0C
	.byte	nF4, 0x06, nCs4, nAb4, nCs5, 0x12, nRst, 0x18, nEb5, nAb4, 0x30
	smpsFMAlterVol      0xFE
	smpsPan             panCenter, 0x00
	.byte	nRst, 0x36
	smpsSetvoice        0x01
	.byte	nF3, 0x06, nCs3, nEb3, nF3, nG3, nAb3, nBb3, nC4, 0x3C, nC4, 0x0C
	.byte	nCs4, nEb4, nEb4, 0x24, nD4, 0x24, nBb3, 0x12, nRst, 0x06, nBb3, 0x24
	.byte	nAb3, 0x24, nG3, 0x18, nBb3, 0x1E, nRst, 0x06, nAb3, 0x1E, nRst, 0x06
	.byte	nEb3, 0x12, nRst, 0x06, nC4, 0x30, nRst, 0x0C, nC4, nCs4, nEb4, nEb4
	.byte	0x24, nD4, 0x24, nBb3, 0x12, nRst, 0x06, nBb3, 0x24, nAb3, 0x24, nG3
	.byte	0x12, nRst, 0x06, nBb3, 0x1E, nRst, 0x06, nAb3, 0x36, nRst, 0x06
	smpsChangeTransposition 0x0C
	smpsSetvoice        0x03
	.byte	nFs3, 0x30, nBb3, 0x30, nC4, 0x30, nFs4, 0x30, nAb4, 0x30, nEb4, 0x18
	.byte	nC4, 0x18, nD4, 0x12, nEb4, 0x12, nD4, 0x0C, nBb3, 0x2A, nRst, 0x06
	.byte	nFs3, 0x30, nBb3, 0x30, nC4, 0x30, nFs4, 0x2A, nRst, 0x06, nAb4, 0x2A
	.byte	nRst, 0x06, nEb5, 0x2A, nRst, 0x06, nD5, 0x12, nEb5, 0x12, nF5, 0x06
	.byte	nRst, 0x06, nBb4, 0x2A, nRst, 0x06
	smpsChangeTransposition 0xF4
	smpsFMAlterVol      0x02

s3p38_Loop04:
	smpsSetvoice        0x06
	smpsFMAlterVol      0xFD
	.byte	nRst, 0x0C, nCs5, 0x06, nCs5, nRst, nCs5, 0x0C, nCs5, 0x06, nCs5, nC5
	.byte	nC5, nRst, 0x2A, nCs5, 0x06, nCs5, nRst, nCs5, 0x0C, nCs5, 0x06, nCs5
	.byte	nFs4, nAb4, nC5, nEb5, nRst, 0x12, nRst, 0x0C, nCs5, 0x06, nCs5, nRst
	.byte	nCs5, 0x0C, nCs5, 0x06, nCs5, nC5, nC5, nRst, 0x12, nEb5, 0x06, nCs5
	.byte	nRst, nCs5, 0x12, nC5, 0x06, nRst, 0x42
	smpsFMAlterVol      0x03
	smpsLoop            0x00, 0x02, s3p38_Loop04
	smpsJump            s3p38_Jump01

/*  FM2 Data */
s3p38_FM2:
	smpsPan             panCenter, 0x00
	smpsSetvoice        0x04

s3p38_Loop01:
	.byte	nAb1, 0x06, nRst, nAb1, nRst, 0x4E
	smpsLoop            0x00, 0x09, s3p38_Loop01

s3p38_Loop02:
	.byte	nAb1, 0x06, nRst, nAb1, nRst, nAb1, 0x06, nF1, nEb1, nAb1, nRst, 0x30
	.byte	nAb1, 0x06, nRst, 0x12, nAb1, 0x06, nRst, 0x42, nEb2, 0x06, nRst, nEb2
	.byte	nRst, nEb2, nC2, nBb1, nEb2, nRst, 0x18, nC2, 0x0C, nCs2, 0x06, nC2
	.byte	nAb1, nRst, nAb1, nRst, nAb1, nF1, nEb1, nAb1, nRst, nC1, 0x12, nCs1
	.byte	0x06, nRst, nEb1, nRst
	smpsLoop            0x00, 0x02, s3p38_Loop02

s3p38_Loop03:
	.byte	nFs2, 0x06, nFs2, nF2, nEb2, nCs2, nC2, nFs1, nRst, 0x1E, nFs3, 0x06
	.byte	nRst, 0x1E, nFs2, 0x06, nFs2, nF2, nEb2, nCs2, nC2, nAb1, nFs1, nFs2
	.byte	nRst, 0x1E, nF2, 0x06, nF2, nC3, nF2, nAb2, nC3, nF3, nRst, 0x1E
	.byte	nF2, 0x06, nRst, 0x1E, nBb2, 0x06, nBb2, nAb2, nG2, nF2, nEb2, nD2
	.byte	nBb1, nBb2, nRst, 0x1E
	smpsLoop            0x00, 0x02, s3p38_Loop03
	.byte	nRst, 0x0C, nFs1, 0x06, nFs1, nRst, nFs1, 0x0C, nFs1, 0x06, nFs1, nFs1
	.byte	nFs1, nRst, 0x2A, nFs1, 0x06, nFs1, nRst, nFs1, 0x0C, nFs1, 0x06, nFs1
	.byte	nRst, 0x12, nFs1, 0x06, nRst, nC2, nEb2, nRst, 0x0C, nFs1, 0x06, nFs1
	.byte	nRst, nFs1, 0x0C, nFs1, 0x06, nFs1, nFs1, nFs1, nRst, 0x12, nAb1, 0x06
	.byte	nAb1, nRst, nAb1, nRst, 0x0C, nAb1, 0x06, nRst, 0x2A, nAb1, 0x06, nCs1
	.byte	nEb1, nF1, nRst, 0x0C, nFs1, 0x06, nFs1, nRst, nFs1, 0x0C, nFs1, 0x06
	.byte	nFs1, nFs1, nFs1, nRst, 0x2A, nFs1, 0x06, nFs1, nRst, nFs1, 0x0C, nFs1
	.byte	0x06, nFs1, nRst, 0x12, nFs1, 0x06, nRst, nC2, nEb2, nRst, 0x0C, nFs1
	.byte	0x06, nFs1, nRst, nFs1, 0x0C, nFs1, 0x06, nFs1, nFs1, nFs1, nRst, 0x12
	.byte	nAb1, 0x06, nAb1, nRst, nAb1, nAb1, nRst, nAb1, nRst, 0x2A, nAb1, 0x06
	.byte	nEb1, nC2, 0x0C
	smpsJump            s3p38_Loop01

/*  FM3 Data */
s3p38_FM3:
	smpsPan             panRight, 0x00
	smpsSetvoice        0x02
	.byte	nAb2, 0x06, nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3
	.byte	nAb3, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nBb3, nF3, nRst
	.byte	nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst, nAb2, nRst, nB2, nRst, nB2
	.byte	nRst, nFs3, nB3, nRst, nB2, nRst, nB2, nFs3, nB3, nB2, nRst, nB2
	.byte	nRst, nCs3, nRst, nCs3, nRst, nAb3, nCs3, nRst, nCs4, 0x0C, nC4, 0x06
	.byte	nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3, nAb3
	.byte	nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nAb2, nRst
	.byte	nAb2, nRst, nBb3, nF3, nRst, nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst
	.byte	nAb2, nRst, nB2, nRst, nB2, nRst, nFs3, nB3, nRst, nCs4, 0x0C, nC4
	.byte	0x06, nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3
	.byte	nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nAb2
	.byte	nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2
	.byte	nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst
	.byte	nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nBb2, nRst, nBb2, nRst, nBb3
	.byte	nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3, nBb2, nRst, nBb2, nRst, nBb2
	.byte	nRst, nBb2, nRst, nEb3, nG3, nRst, nBb2, nRst, nBb2, nEb3, nG3, nBb2
	.byte	nRst, nBb2, nRst, nAb2, nRst, nAb2, nRst, nC3, nEb3, nRst, nCs4, 0x0C
	.byte	nC4, 0x06, nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst
	.byte	nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst
	.byte	nBb2, nRst, nBb2, nRst, nBb3, nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3
	.byte	nBb2, nRst, nBb2, nRst, nBb2, nRst, nBb2, nRst, nEb3, nG3, nRst, nBb2
	.byte	nRst, nBb2, nEb3, nG3, nBb2, nRst, nBb2, 0x0C, nAb2, 0x06, nRst, nAb2
	.byte	nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2
	.byte	0x0C
	smpsSetvoice        0x01
	smpsPan             panLeft, 0x00
	smpsFMAlterVol      0x04
	smpsChangeTransposition 0x0C
	.byte	nFs2, 0x06, nBb2, nC3, nCs3, nFs3, nBb3, nC4, nCs4, nFs4, nBb4, nC5
	.byte	nCs5, nFs5, nCs5, nBb4, nFs4, nG4, nEb4, nC4, nAb3, nG3, nEb3, nC3
	.byte	nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4, nAb4, nF4, nEb4, nC4
	.byte	nBb3, nAb3, nF3, nEb3, nC3, nBb2, nAb2, nF2, nEb2, nC2, nBb1, nF1
	.byte	nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3, nD3, nBb2, nA2, nF2
	.byte	nD2, nBb1, nA1, nF1, nD1, nFs2, nBb2, nC3, nCs3, nFs3, nBb3, nC4
	.byte	nCs4, nFs4, nBb4, nC5, nCs5, nFs5, nCs5, nBb4, nFs4, nG4, nEb4, nC4
	.byte	nAb3, nG3, nEb3, nC3, nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4
	.byte	nAb4, nF4, nEb4, nC4, nBb3, nAb3, nF3, nEb3, nC3, nBb2, nAb2, nF2
	.byte	nEb2, nC2, nBb1, nF1, nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3
	.byte	nD3, nBb2, nA2, nF2, nD2, nBb1, nA1, nF1, nD1
	smpsSetvoice        0x01
	smpsPan             panLeft, 0x00
	.byte	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	.byte	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	.byte	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	.byte	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	.byte	nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3, nC4, nC4
	.byte	nEb4, nEb4, nAb3, nAb3, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	.byte	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	.byte	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	.byte	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	.byte	nC4, nC4, nCs4, nCs4, nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4
	.byte	nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3
	smpsChangeTransposition 0xF4
	smpsFMAlterVol      0xFC
	smpsJump            s3p38_FM3

/*  FM4 Data */
s3p38_FM4:
	smpsModSet          0x01, 0x01, 0x01, 0x02
	smpsModSet          0x07, 0x01, 0x01, 0x05
	smpsPan             panLeft, 0x00
	smpsSetvoice        0x03
	.byte	nEb4, 0x60, nF4, 0x60, nFs4, 0x60, nAb4, 0x60, nEb4, 0x60, nF4, 0x60
	.byte	nFs4, 0x30, nAb4, nEb4, 0x60, smpsNoAttack, 0x60
	smpsSetvoice        0x01
	.byte	nEb4, 0x06, nRst, nEb4, nRst, 0x0C, nEb4, nEb4, 0x36, nF4, 0x06, nRst
	.byte	0x12, nF4, 0x48, nG4, 0x06, nRst, nG4, nRst, 0x0C, nG4, nG4, 0x36
	.byte	nEb4, 0x60, nEb4, 0x06, nRst, nEb4, nRst, 0x0C, nEb4, nEb4, 0x36, nF4
	.byte	0x06, nRst, 0x12, nF4, 0x48, nG4, 0x06, nRst, nG4, nRst, 0x0C, nG4
	.byte	nG4, 0x36, nEb4, 0x60
	smpsFMAlterVol      0xFD
	smpsSetvoice        0x05
	.byte	nFs3, 0x30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, 0x18, nF3, nD4, nF3
	.byte	0x0C, nF3, nFs3, 0x30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, 0x18, nF3
	.byte	nD4, nF3, 0x0C, nF3
	smpsFMAlterVol      0x03
	.byte	nRst, 0x60, nRst, nRst, nRst
	smpsSetvoice        0x01
	smpsPan             panRight, 0x00
	smpsFMAlterVol      0x04
	.byte	nBb3, 0x06, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	.byte	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	.byte	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	.byte	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nC5
	.byte	nC5, nEb4, nEb4, nAb4, nAb4, nC5, nC5, nEb4, nEb4, nAb4, nAb4, nC5
	.byte	nC5, nEb4, nEb4, nAb4, nAb4
	smpsFMAlterVol      0xFC
	smpsJump            s3p38_FM4

/*  FM5 Data */
s3p38_FM5:
	smpsModSet          0x01, 0x01, 0x01, 0x06
	.byte	nRst, 0x08
	smpsDetune          0x01
	smpsJump            s3p38_Jump01

/*  PSG1 Data */
s3p38_PSG1:
	smpsModSet          0x03, 0x01, 0x01, 0x04
	smpsPSGvoice        sTone_11
	.byte	nC4, 0x60, nD4, 0x60, nEb4, 0x60, nF4, 0x60, nC4, 0x60, nD4, 0x60
	.byte	nEb4, 0x30, nF4, nC4, 0x60, smpsNoAttack, 0x60

s3p38_Loop06:
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     0xFD
	.byte	nC4, 0x06, nRst, nC4, nRst, 0x0C, nC4, nC4, 0x36, nD4, 0x06, nRst
	.byte	0x12, nD4, 0x48, nEb4, 0x06, nRst, nEb4, nRst, 0x0C, nEb4, nEb4, 0x36
	.byte	nC4, 0x60
	smpsPSGAlterVol     0x03
	smpsLoop            0x00, 0x02, s3p38_Loop06
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     0xFE
	.byte	nCs4, 0x30, nFs4, nEb4, nC5, nC4, nAb4, nEb4, 0x18, nD4, nBb4, nBb3
	.byte	0x0C, nC4, nCs4, 0x30, nFs4, nEb4, nC5, nC4, nAb4, nEb4, 0x18, nD4
	.byte	nBb4, nBb3, 0x0C, nC4
	smpsPSGvoice        sTone_12
	.byte	nRst, 0x0C, nBb3, 0x06, nBb3, nRst, nBb3, 0x0C, nBb3, 0x06, nBb3, nC4
	.byte	nC4, nRst, 0x1E, nRst, 0x0C, nBb3, 0x06, nBb3, nRst, nBb3, 0x0C, nBb3
	.byte	0x06, nCs4, nRst, 0x12, nC4, 0x06, nRst, 0x1E, nBb3, 0x06, nBb3, nRst
	.byte	nBb3, 0x0C, nBb3, 0x06, nBb3, nC4, nC4, nRst, 0x12, nCs4, 0x06, nCs4
	.byte	nRst, nCs4, nCs4, 0x0C, nEb4, 0x06, nRst, 0x42, nRst, 0x0C, nBb3, 0x06
	.byte	nBb3, nRst, nBb3, 0x0C, nBb3, 0x06, nBb3, nC4, nC4, nRst, 0x2A, nBb3
	.byte	0x06, nBb3, nRst, nBb3, 0x0C, nBb3, 0x06, nCs4, nRst, 0x12, nC4, 0x06
	.byte	nRst, 0x1E, nBb3, 0x06, nBb3, nRst, nBb3, 0x0C, nBb3, 0x06, nBb3, nC4
	.byte	nC4, nRst, 0x12, nCs4, 0x06, nCs4, nRst, nCs4, 0x12, nEb4, 0x06, nRst
	.byte	0x42
	smpsPSGAlterVol     0x02
	smpsJump            s3p38_PSG1

/*  PSG2 Data */
s3p38_PSG2:
	smpsPSGvoice        sTone_11
	.byte	nAb3, 0x60, nBb3, nB3, nCs4, nAb3, nBb3, nB3, 0x30, nCs4, nAb3, 0x60
	.byte	smpsNoAttack, 0x60

s3p38_Loop05:
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     0xFD
	.byte	nAb3, 0x06, nRst, nAb3, nRst, 0x0C, nAb3, nAb3, 0x36, nBb3, 0x06, nRst
	.byte	0x12, nBb3, 0x48, nBb3, 0x06, nRst, nBb3, nRst, 0x0C, nBb3, nBb3, 0x36
	.byte	nAb3, 0x60
	smpsPSGAlterVol     0x03
	smpsLoop            0x00, 0x02, s3p38_Loop05
	smpsPSGAlterVol     0xFE
	smpsPSGvoice        sTone_1D
	.byte	nFs3, 0x30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, 0x18, nF3, nD4, nF3
	.byte	0x0C, nF3, nFs3, 0x30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, 0x18, nF3
	.byte	nD4, nF3, 0x0C, nF3
	smpsPSGvoice        sTone_12
	.byte	nRst, nFs3, 0x06, nFs3, nRst, nFs3, 0x0C, nFs3, 0x06, nFs3, nAb3, nAb3
	.byte	nRst, 0x1E, nRst, 0x0C, nFs3, 0x06, nFs3, nRst, nFs3, 0x0C, nFs3, 0x06
	.byte	nAb3, nRst, 0x12, nAb3, 0x06, nRst, 0x12, nRst, 0x0C, nFs3, 0x06, nFs3
	.byte	nRst, nFs3, 0x0C, nFs3, 0x06, nFs3, nAb3, nAb3, nRst, 0x12, nBb3, 0x06
	.byte	nBb3, nRst, nBb3, nBb3, 0x0C, nC4, 0x06, nRst, 0x42, nRst, 0x0C, nFs3
	.byte	0x06, nFs3, nRst, nFs3, 0x0C, nFs3, 0x06, nFs3, nAb3, nAb3, nRst, 0x2A
	.byte	nFs3, 0x06, nFs3, nRst, nFs3, 0x0C, nFs3, 0x06, nAb3, nRst, 0x12, nAb3
	.byte	0x06, nRst, 0x1E, nFs3, 0x06, nFs3, nRst, nFs3, 0x0C, nFs3, 0x06, nFs3
	.byte	nAb3, nAb3, nRst, 0x12, nBb3, 0x06, nBb3, nRst, nBb3, 0x12, nC4, 0x06
	.byte	nRst, 0x42
	smpsPSGAlterVol     0x02
	smpsJump            s3p38_PSG2

/*  PSG3 Data */
s3p38_PSG3:
	smpsPSGform         0xE7
	smpsCall            s3p38_Call00
	smpsCall            s3p38_Call01
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	0x0C
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x0C, (nMaxPSG2-0x23)&0xFF, 0x36
	smpsCall            s3p38_Call02
	smpsCall            s3p38_Call02
	smpsCall            s3p38_Call03
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	0x0C
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	0x0C
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x18, 0x18
	smpsCall            s3p38_Call00
	smpsCall            s3p38_Call01
	smpsJump            s3p38_PSG3

s3p38_Call00:
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	0x0C
	smpsLoop            0x00, 0x10, s3p38_Call00
	smpsReturn

s3p38_Call01:
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF
	smpsLoop            0x00, 0x10, s3p38_Call01
	smpsReturn

s3p38_Call02:
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, nRst, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x0C
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, nRst, (nMaxPSG2-0x23)&0xFF, nRst
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x0C
	smpsPSGvoice        sTone_0F
	.byte	0x06, 0x06
	smpsLoop            0x00, 0x04, s3p38_Call02
	smpsReturn

s3p38_Call03:
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x0C
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06, (nMaxPSG2-0x23)&0xFF
	smpsPSGvoice        sTone_12
	.byte	(nMaxPSG2-0x23)&0xFF, 0x06
	smpsPSGvoice        sTone_0F
	.byte	(nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF, (nMaxPSG2-0x23)&0xFF
	smpsLoop            0x00, 0x07, s3p38_Call03
	smpsReturn

/*  DAC Data */
s3p38_DAC:
	.byte	dCrashCymbal, 0x60, dCrashCymbal, 0x48, dElectricMidTom, 0x02, dElectricFloorTom, 0x16, dCrashCymbal, 0x48, dSnareS3, 0x03
	.byte	dSnareS3, 0x15, dCrashCymbal, 0x18, dElectricHighTom, dKickS3, dElectricFloorTom, dCrashCymbal, 0x18, dKickS3, nRst, dKickS3
	.byte	nRst, dKickS3, nRst, dKickS3, dKickS3, 0x18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	.byte	dKickS3, dKickS3, 0x0C, dSnareS3, 0x06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dHighTom
	.byte	dHighTom, dHighTom, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3

s3p38_Loop00:
	.byte	dCrashCymbal, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, 0x1E, dSnareS3, 0x18
	.byte	dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06, dKickS3, nRst, dKickS3, nRst, dSnareS3, 0x18
	.byte	dKickS3, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, 0x1E, dSnareS3, 0x18
	.byte	dKickS3, 0x18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            0x00, 0x02, s3p38_Loop00
	.byte	dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06, dKickS3, 0x18, dCrashCymbal, dKickS3, dSnareS3, 0x12
	.byte	dKickS3, 0x06, dKickS3, 0x18, dSnareS3, 0x03, dSnareS3, 0x15, dKickS3, 0x18, dSnareS3, 0x12
	.byte	dKickS3, 0x06, dKickS3, 0x18, dSnareS3, dKickS3, 0x18, dSnareS3, dKickS3, dSnareS3, dKickS3, 0x18
	.byte	dSnareS3, 0x12, dKickS3, 0x06, dKickS3, 0x18, dCrashCymbal, dKickS3, dSnareS3, 0x12, dKickS3, 0x06
	.byte	dKickS3, 0x18, dSnareS3, 0x03, dSnareS3, 0x15, dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06
	.byte	dKickS3, 0x0C, dKickS3, dClapS3, 0x18, dTightSnare, 0x06, dTightSnare, nRst, nRst, dMidpitchSnare, dMidpitchSnare
	.byte	nRst, nRst, dLooseSnare, dLooseSnare, nRst, nRst, dLooserSnare, dLooserSnare, dKickS3, dKickS3, dCrashCymbal, 0x60
	.byte	nRst, 0x60, nRst, 0x60, nRst, 0x60, nRst, 0x06, nRst, dSnareS3, dSnareS3, nRst
	.byte	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, 0x24, dSnareS3, 0x06, dSnareS3
	.byte	nRst, dSnareS3, nRst, dSnareS3, dCrashCymbal, 0x18, dCrashCymbal, nRst, 0x06, nRst, dSnareS3, dSnareS3
	.byte	nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, nRst, dSnareS3, dSnareS3
	.byte	nRst, dSnareS3, nRst, nRst, dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3
	.byte	dLowTomS3, dLowTomS3, dFloorTomS3, dFloorTomS3

s3p38_Jump00:
	.byte	dCrashCymbal, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, 0x1E, dSnareS3, 0x18
	.byte	dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06, dKickS3, nRst, dKickS3, nRst, dSnareS3, 0x18
	.byte	dKickS3, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, 0x1E, dSnareS3, 0x18
	.byte	dKickS3, 0x18, dSnareS3, dKickS3, dSnareS3, dCrashCymbal, 0x18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	.byte	dKickS3, dSnareS3, dKickS3, 0x18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	.byte	0x0C, dSnareS3, 0x06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dHighTom, 0x04, 0x04
	.byte	0x04, dHighTom, 0x06, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dCrashCymbal, 0x06, nRst, dKickS3, nRst
	.byte	dSnareS3, dKickS3, nRst, dKickS3, 0x1E, dSnareS3, 0x18, dKickS3, 0x18, dSnareS3, dKickS3, 0x0C
	.byte	dKickS3, dSnareS3, nRst, dKickS3, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3
	.byte	0x1E, dSnareS3, 0x18, dKickS3, 0x18, dSnareS3, dKickS3, dSnareS3, dMuffledSnare, 0x06, nRst, dTightSnare
	.byte	nRst, dMidpitchSnare, dMidpitchSnare, nRst, dLooseSnare, nRst, dLooseSnare, dLooserSnare, dLooserSnare, dCrashCymbal, 0x18, dKickS3
	.byte	0x18, dSnareS3, dKickS3, dSnareS3, dKickS3, 0x06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst
	.byte	dKickS3, 0x1E, dSnareS3, 0x18, dKickS3, 0x18, dSnareS3, dKickS3, dSnareS3, dKickS3, 0x18, dSnareS3
	.byte	0x12, dKickS3, 0x06, dKickS3, 0x18, dCrashCymbal, dKickS3, dSnareS3, 0x12, dKickS3, 0x06, dKickS3
	.byte	0x18, dSnareS3, 0x03, dSnareS3, 0x15, dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06, dKickS3
	.byte	0x18, dClapS3, dKickS3, 0x18, dClapS3, dKickS3, dClapS3, dKickS3, 0x18, dSnareS3, 0x12, dKickS3
	.byte	0x06, dKickS3, 0x18, dCrashCymbal, dKickS3, dSnareS3, 0x12, dKickS3, 0x06, dKickS3, 0x18, dSnareS3
	.byte	0x03, dSnareS3, 0x15, dKickS3, 0x18, dSnareS3, 0x12, dKickS3, 0x06, dKickS3, 0x0C, dKickS3
	.byte	dClapS3, 0x18, dTightSnare, 0x06, dTightSnare, nRst, nRst, dMidpitchSnare, dMidpitchSnare, nRst, nRst, dLooseSnare
	.byte	dLooseSnare, nRst, nRst, dLooserSnare, dLooserSnare, dKickS3, dKickS3, dCrashCymbal, 0x60, nRst, 0x60, nRst
	.byte	0x60, nRst, 0x60, nRst, 0x06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dSnareS3
	.byte	dSnareS3, dSnareS3, dSnareS3, nRst, nRst, 0x24, dSnareS3, 0x06, dSnareS3, nRst, dSnareS3, nRst
	.byte	dSnareS3, dCrashCymbal, 0x18, dCrashCymbal, nRst, 0x06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst
	.byte	dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst
	.byte	nRst, dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dFloorTomS3
	.byte	dFloorTomS3
	smpsJump            s3p38_Jump00

s3p38_Voices:
/* 	Voice 0x00 */
/* 	0x3E */
/* 	0x07, 0x04, 0x61, 0x21, 	0x1F, 0x1F, 0x1C, 0x1C, 	0x0A, 0x0C, 0x04, 0x04 */
/* 	0x07, 0x0D, 0x08, 0x02, 	0x1D, 0x1F, 0x1E, 0x1E, 	0x26, 0x84, 0x84, 0x84 */
	smpsVcAlgorithm     0x06
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x02, 0x06, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x04, 0x07
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1C, 0x1C, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x04, 0x04, 0x0C, 0x0A
	smpsVcDecayRate2    0x02, 0x08, 0x0D, 0x07
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x01
	smpsVcReleaseRate   0x0E, 0x0E, 0x0F, 0x0D
	smpsVcTotalLevel    0x84, 0x84, 0x84, 0x26

/* 	Voice 0x01 */
/* 	0x16 */
/* 	0x79, 0x71, 0x32, 0x33, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0A, 0x08, 0x0C, 0x0A */
/* 	0x07, 0x0A, 0x07, 0x05, 	0x2F, 0xAF, 0xAF, 0x5F, 	0x24, 0x80, 0x82, 0x80 */
	smpsVcAlgorithm     0x06
	smpsVcFeedback      0x02
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x07, 0x07
	smpsVcCoarseFreq    0x03, 0x02, 0x01, 0x09
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0A, 0x0C, 0x08, 0x0A
	smpsVcDecayRate2    0x05, 0x07, 0x0A, 0x07
	smpsVcDecayLevel    0x05, 0x0A, 0x0A, 0x02
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x80, 0x82, 0x80, 0x24

/* 	Voice 0x02 */
/* 	0x3A */
/* 	0x75, 0x0F, 0x61, 0x31, 	0x58, 0x1A, 0x1C, 0x98, 	0x0A, 0x10, 0x10, 0x0B */
/* 	0x00, 0x00, 0x00, 0x00, 	0x5F, 0xBF, 0x3F, 0xFF, 	0x1B, 0x1E, 0x20, 0x80 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x06, 0x00, 0x07
	smpsVcCoarseFreq    0x01, 0x01, 0x0F, 0x05
	smpsVcRateScale     0x02, 0x00, 0x00, 0x01
	smpsVcAttackRate    0x18, 0x1C, 0x1A, 0x18
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0B, 0x10, 0x10, 0x0A
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x03, 0x0B, 0x05
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x80, 0x20, 0x1E, 0x1B

/* 	Voice 0x03 */
/* 	0x3D */
/* 	0x01, 0x02, 0x02, 0x02, 	0x1F, 0x08, 0x8A, 0x0A, 	0x08, 0x08, 0x08, 0x08 */
/* 	0x00, 0x01, 0x00, 0x00, 	0x0F, 0x1F, 0x1F, 0x1F, 	0x1F, 0x88, 0x88, 0x87 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x02, 0x02, 0x02, 0x01
	smpsVcRateScale     0x00, 0x02, 0x00, 0x00
	smpsVcAttackRate    0x0A, 0x0A, 0x08, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x08, 0x08, 0x08, 0x08
	smpsVcDecayRate2    0x00, 0x00, 0x01, 0x00
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x87, 0x88, 0x88, 0x1F

/* 	Voice 0x04 */
/* 	0x28 */
/* 	0x39, 0x35, 0x30, 0x31, 	0xDF, 0xDF, 0x9F, 0x9F, 	0x0C, 0x07, 0x0A, 0x0A */
/* 	0x07, 0x07, 0x07, 0x09, 	0x2F, 0x1F, 0x1F, 0xFF, 	0x17, 0x32, 0x14, 0x80 */
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x03, 0x03, 0x03
	smpsVcCoarseFreq    0x01, 0x00, 0x05, 0x09
	smpsVcRateScale     0x02, 0x02, 0x03, 0x03
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0A, 0x0A, 0x07, 0x0C
	smpsVcDecayRate2    0x09, 0x07, 0x07, 0x07
	smpsVcDecayLevel    0x0F, 0x01, 0x01, 0x02
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x80, 0x14, 0x32, 0x17

/* 	Voice 0x05 */
/* 	0x03 */
/* 	0x00, 0xD7, 0x33, 0x02, 	0x5F, 0x9F, 0x5F, 0x1F, 	0x13, 0x0F, 0x0A, 0x0A */
/* 	0x10, 0x0F, 0x02, 0x09, 	0x35, 0x15, 0x25, 0x1A, 	0x13, 0x16, 0x15, 0x80 */
	smpsVcAlgorithm     0x03
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x03, 0x0D, 0x00
	smpsVcCoarseFreq    0x02, 0x03, 0x07, 0x00
	smpsVcRateScale     0x00, 0x01, 0x02, 0x01
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0A, 0x0A, 0x0F, 0x13
	smpsVcDecayRate2    0x09, 0x02, 0x0F, 0x10
	smpsVcDecayLevel    0x01, 0x02, 0x01, 0x03
	smpsVcReleaseRate   0x0A, 0x05, 0x05, 0x05
	smpsVcTotalLevel    0x80, 0x15, 0x16, 0x13

/* 	Voice 0x06 */
/* 	0x3A */
/* 	0x01, 0x07, 0x01, 0x01, 	0x8E, 0x8E, 0x8D, 0x53, 	0x0E, 0x0E, 0x0E, 0x03 */
/* 	0x00, 0x00, 0x00, 0x07, 	0x1F, 0xFF, 0x1F, 0x0F, 	0x18, 0x28, 0x27, 0x80 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x07, 0x01
	smpsVcRateScale     0x01, 0x02, 0x02, 0x02
	smpsVcAttackRate    0x13, 0x0D, 0x0E, 0x0E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x03, 0x0E, 0x0E, 0x0E
	smpsVcDecayRate2    0x07, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x00, 0x01, 0x0F, 0x01
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x80, 0x27, 0x28, 0x18

