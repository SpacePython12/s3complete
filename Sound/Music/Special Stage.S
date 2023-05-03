Snd_SpecialS_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SpecialS_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x25

	smpsHeaderDAC       Snd_SpecialS_DAC
	smpsHeaderFM        Snd_SpecialS_FM1,	0x00, 0x17
	smpsHeaderFM        Snd_SpecialS_FM2,	0x00, 0x0F
	smpsHeaderFM        Snd_SpecialS_FM3,	0x00, 0x17
	smpsHeaderFM        Snd_SpecialS_FM4,	0x00, 0x17
	smpsHeaderFM        Snd_SpecialS_FM5,	0x00, 0x1F
	smpsHeaderPSG       Snd_SpecialS_PSG1,	0x0C, 0x05, 0x00, sTone_0C
	smpsHeaderPSG       Snd_SpecialS_PSG2,	0x0C, 0x05, 0x00, sTone_0C
	smpsHeaderPSG       Snd_SpecialS_PSG3,	0x00, 0x04, 0x00, sTone_02

/*  FM1 Data */
Snd_SpecialS_FM1:
	smpsSetvoice        0x01
	.byte	nE5, 0x06, nRst, 0x0C, nE4, 0x06, nB3, nRst, nE4, nRst, nFs4, nRst
	.byte	nAb4, nRst, nB4, nRst, nD5, nRst, nE5, nE5, nRst, nE5, nE5, nRst
	.byte	nE5, nE5, nRst, nD5, nRst, nD5, nD5, 0x0C, nE5, nRst, 0x60

Snd_SpecialS_Jump03:
	smpsSetvoice        0x03
	smpsModSet          0x14, 0x01, 0x06, 0x06
	smpsCall            Snd_SpecialS_Call00
	smpsCall            Snd_SpecialS_Call01
	smpsCall            Snd_SpecialS_Call02
	.byte	nE6
	smpsFMAlterVol      0x06
	smpsSetvoice        0x04
	.byte	nA6, 0x66, nA5, 0x06, nA6, nA5, nA6, 0x0C
	smpsCall            Snd_SpecialS_Call03
	.byte	nEb4
	smpsFMAlterVol      0xFA
	smpsJump            Snd_SpecialS_Jump03

/*  Unreachable */
	smpsStop

Snd_SpecialS_Call00:
	.byte	nA5, 0x0C, nE5, 0x06, nA5, nRst, nB5, nRst, nC6, 0x02, smpsNoAttack, nCs6
	.byte	smpsNoAttack, nD6, 0x08, nCs6, 0x06, nB5, nRst, nA5, 0x0C, nB5, nA5, 0x0C
	.byte	nE5, 0x06, nA5, nRst, nB5, nRst, nC6, 0x02, smpsNoAttack, nCs6, smpsNoAttack, nD6
	.byte	0x08, nCs6, 0x06, nB5, nRst, nA5, 0x18
	smpsLoop            0x00, 0x02, Snd_SpecialS_Call00
	.byte	nFs5, 0x12, nAb5, nA5, 0x0C, nBb5, 0x03, smpsNoAttack, nB5, 0x09, nA5, 0x06
	.byte	nAb5, nRst, nFs5, 0x12, nE5, 0x12, nB5, nA5, 0x24, nE5, 0x18, nFs5
	.byte	0x12, nAb5, nA5, 0x0C, nAb5, 0x12, nA5, nB5, 0x0C, nCs6, 0x18, nB5
	.byte	nCs6, nE6
	smpsReturn

Snd_SpecialS_Call01:
	.byte	nFs6, 0x12, nFs6, nE6, 0x0C, nFs6, 0x12, nFs6, nE6, 0x06, nFs6, nA6
	.byte	0x12, nAb6, nE6, 0x0C, nCs6, 0x24, nD6, 0x06, nE6, nFs6, 0x12, nFs6
	.byte	nE6, 0x0C, nFs6, 0x12, nFs6, nE6, 0x06, nFs6, nA6, 0x12, nAb6, nCs7
	.byte	0x3C, nFs6, 0x12, nFs6, nE6, 0x0C, nFs6, 0x12, nFs6, nE6, 0x06, nFs6
	.byte	nA6, 0x12, nAb6, nE6, 0x0C, nCs6, 0x24, nD6, 0x06, nE6, nFs6, 0x12
	.byte	nFs6, nE6, 0x0C, nFs6, 0x12, nFs6, nE6, 0x06, nFs6, nA6, 0x12, nAb6
	.byte	nCs7, 0x24, nAb6, 0x18, nFs6, 0x24, 0x06, nAb6, nA6, 0x12, nAb6, nE6
	.byte	0x0C, nA6, 0x60
	smpsReturn

Snd_SpecialS_Call02:
	.byte	nFs6, 0x24, 0x06, 0x06, 0x12, nE6, nD6, 0x0C, nE6, 0x60, nD6, 0x24
	.byte	0x06, 0x06, 0x12, nCs6, nB5, 0x0C, nCs6, 0x48, nB5, 0x18, nA5, 0x24
	.byte	0x06, 0x06, 0x12, nB5, nCs6, 0x0C

Snd_SpecialS_Loop22:
	.byte	nA5, 0x30, 0x12, nB5, nCs6, 0x0C
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop22
	.byte	nCs6, 0x18, nB5, nCs6
	smpsReturn

Snd_SpecialS_Call03:
	.byte	nG6, 0x06, nE6, nD6, 0x0C, nD6, 0x02, nE6, 0x04, nD6, 0x0C, nE6
	.byte	nD6, nD5, 0x06, nB4, nA4, nG4, nE4, nD4, nE4, nG4, nE4, nG4
	.byte	nA4, nB4, nA4, nB4, nD5, nD5, 0x03, nE5, 0x09, nD5, 0x0C, nB4
	.byte	0x06, nA4, nB4, nD5, nE5, nD5, nE5, nFs5, nG5, nA5, nB5, nCs6
	.byte	nD6, nCs6, nB5, nG6, nFs6, nE6, nFs6, nE6, nD6, nFs6, nE6, nD6
	.byte	nCs6, 0x04, nD6, nCs6, nB5, 0x06, nA5, nFs5, nE5, nD5, nCs5, 0x04
	.byte	nD5, 0x06, nCs5, 0x08, nB4, 0x06, nA4, nG4, 0x0C, nA4, 0x06, nG4
	.byte	0x0C, nFs4, nE4, nFs4, 0x06, nD4, nE4, nFs4, nG4, nA4, nB4, nG4
	.byte	nA4, nCs5, nD5, nE5, nFs5, nG5, nFs5, nG5, 0x03, nA5, 0x09, nG5
	.byte	0x06, nE5, 0x0C, nD5, 0x06, nRst, nE5, nRst, nD5, nA4, nG4, smpsNoAttack
	.byte	0x0C, nFs4, 0x03, nF4, nE4
	smpsReturn

/*  FM2 Data */
Snd_SpecialS_FM2:
	smpsSetvoice        0x00
	.byte	nRst, 0x12, nA2, 0x06, nE2, nRst, nA2, nRst, nB2, nRst, nCs3, nRst
	.byte	nE2, nRst, nFs2, nRst, nA2, nA2, nE3, nA3, nA3, nRst, nA3, nA3
	.byte	nRst, nG3, nRst, nG3, nG2, nD3, nG3, 0x0C, nRst, 0x60

Snd_SpecialS_Loop0D:
	.byte	nA2, 0x12, nE3, nA2, 0x0C, nG2, 0x12, nD3, nG2, 0x0C
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop0D

Snd_SpecialS_Loop0E:
	.byte	nFs2, 0x12, nCs3, nFs2, 0x0C, nB2, 0x12, nFs2, nB2, 0x0C, nE2, 0x12
	.byte	nB2, nE2, 0x0C, nA2, 0x12, nE3, nA2, 0x0C
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop0E

Snd_SpecialS_Loop0F:
	.byte	nD2, 0x12, nA2, nD3, 0x0C, nD2, 0x12, nA2, nD2, 0x0C, nA2, 0x12
	.byte	nA2, 0x06, nRst, 0x0C, nE2, nA2, 0x18, nE2
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop0F
	.byte	nD2, 0x12, nA2, nD2, 0x0C, nE2, 0x12, nAb2, nB2, 0x0C, nA2, 0x06
	.byte	nA2, nE3, nA3, nA3, nRst, nA3, nA3, nRst, nG3, nRst, nG3, nG2
	.byte	nD3, nG3, 0x0C

Snd_SpecialS_Loop10:
	.byte	nD2, 0x12, nA2, 0x06, nRst, 0x0C, nD3, 0x3C, nA2, 0x12, nA2, 0x06
	.byte	nRst, 0x0C, nA2, 0x3C
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop10
	.byte	nFs2, 0x12, nA2, 0x06, nRst, 0x0C, nCs3, 0x3C, nF2, 0x12, nA2, 0x06
	.byte	nRst, 0x0C, nCs3, 0x3C, nE2, 0x12, nA2, 0x06, nRst, 0x0C, nCs3, 0x3C
	.byte	nA2, 0x18, nAb2, nFs2, nE2

Snd_SpecialS_Loop11:
	.byte	nA2, 0x12, nE3, nA2, 0x0C, nG2, 0x12, nD3, nG2, 0x0C
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop11
	.byte	nA2, 0x12, nE3, nA2, 0x0C, nG2, 0x06, 0x0C, nG3, 0x12, nA3, 0x0C
	smpsJump            Snd_SpecialS_Loop0D

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_SpecialS_FM3:
	smpsSetvoice        0x01
	smpsPan             panRight, 0x00
	.byte	nA4, 0x06, nRst, 0x0C, nA3, 0x06, nE3, nRst, nA3, nRst, nB3, nRst
	.byte	nCs4, nRst, nE4, nRst, nG4, nRst, nA4, nA4, nRst, nA4, nA4, nRst
	.byte	nA4, nA4, nRst, nG4, nRst, nG4, nG4, 0x0C, nA4, nRst, 0x60

Snd_SpecialS_Jump02:
	smpsSetvoice        0x02

Snd_SpecialS_Loop09:
	.byte	nCs4, 0x0C, nA3, 0x06, nE3, nRst, nA3, nRst, nB3, 0x0C, nG3, 0x06
	.byte	nG3, nG3, 0x0C, nD3, 0x06, nB3, nB3
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop09

Snd_SpecialS_Loop0A:
	.byte	nA3, 0x0C, nFs3, 0x06, nA3, nRst, nFs3, nRst, nB3, 0x0C, nD3, 0x06
	.byte	nD3, nFs3, 0x0C, nD3, 0x06, nFs3, nB3, nE3, 0x0C, nB2, 0x06, nB2
	.byte	nRst, nE3, nRst, nA3, 0x0C, nE3, 0x06, nE3, nA3, 0x0C, nA2, 0x06
	.byte	nE3, nCs3
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop0A

Snd_SpecialS_Loop0B:
	.byte	nA3, 0x12, 0x06, nRst, 0x18
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop0B
	.byte	nCs4, 0x12, 0x06, nRst, 0x0C, nA3, 0x3C
	smpsLoop            0x01, 0x04, Snd_SpecialS_Loop0B
	.byte	nA3, 0x30, nB3, 0x12, nB3, nB3, 0x0C
	smpsSetvoice        0x01
	.byte	nA4, 0x06, nA4, nRst, nA4, nA4, nRst, nA4, nA4, nRst, nG4, nRst
	.byte	nG4, nG4, 0x0C, nA4
	smpsSetvoice        0x02
	.byte	nA3, 0x60, nA3, nA3, nA3, nFs3, nF3, nE3, nA3, 0x18, nAb3, nFs3
	.byte	nE3

Snd_SpecialS_Loop0C:
	.byte	nCs4, 0x0C, nA3, 0x06, nE3, nRst, nA3, nRst, nB3, 0x0C, nG3, 0x06
	.byte	nG3, nG3, 0x0C, nD3, 0x06, nB3, nB3
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop0C
	smpsSetvoice        0x01
	smpsFMAlterVol      0x08
	.byte	nE4, 0x12
	smpsFMAlterVol      0xFC
	.byte	nA4
	smpsFMAlterVol      0xFC
	.byte	nA4
	smpsFMAlterVol      0xFB
	.byte	nG4, 0x0C, 0x12, nA4, 0x0C
	smpsFMAlterVol      0x05
	smpsJump            Snd_SpecialS_Jump02

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_SpecialS_FM4:
	smpsSetvoice        0x01
	smpsPan             panLeft, 0x00
	.byte	nA5, 0x06, nRst, 0x0C, nA4, 0x06, nE4, nRst, nA4, nRst, nB4, nRst
	.byte	nCs5, nRst, nE5, nRst, nG5, nRst, nA5, nA5, nRst, nA5, nA5, nRst
	.byte	nA5, nA5, nRst, nG5, nRst, nG5, nG5, 0x0C, nA5, nRst, 0x60

Snd_SpecialS_Jump01:
	smpsSetvoice        0x02

Snd_SpecialS_Loop05:
	.byte	nE4, 0x0C, nA4, 0x06, nCs4, nRst, nE4, nRst, nD4, 0x12, nB3, 0x06
	.byte	nD4, 0x0C, nG3, 0x06, nG4, nD4
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop05

Snd_SpecialS_Loop06:
	.byte	nCs4, 0x0C, nFs4, 0x06, nCs4, nRst, nCs4, nRst, nD4, 0x0C, nFs3, 0x06
	.byte	nB3, nD4, 0x0C, nFs3, 0x06, nB3, nD4, nB3, 0x0C, nE3, 0x06, nAb3
	.byte	nRst, nB3, nRst, nCs4, 0x0C, nA3, 0x06, nB3, nCs4, 0x0C, nE3, 0x06
	.byte	nA3, nCs4
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop06

Snd_SpecialS_Loop07:
	.byte	nFs4, 0x12, nFs4, 0x06, nRst, 0x18
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop07
	.byte	nA4, 0x12, nA4, 0x06, nRst, 0x0C, nE4, 0x3C
	smpsLoop            0x01, 0x04, Snd_SpecialS_Loop07
	.byte	nFs4, 0x30, nAb4, 0x12, nAb4, nAb4, 0x0C
	smpsSetvoice        0x01
	.byte	nA5, 0x06, nA5, nRst, nA5, nA5, nRst, nA5, nA5, nRst, nG5, nRst
	.byte	nG5, nG5, 0x0C, nA5
	smpsSetvoice        0x02
	.byte	nFs4, 0x60, nE4, nD4, nCs4, nCs4, nCs4, nCs4, nCs4, 0x18, nB3, nA3
	.byte	nAb3

Snd_SpecialS_Loop08:
	.byte	nE4, 0x0C, nA4, 0x06, nCs4, nRst, nE4, nRst, nD4, 0x12, nB3, 0x06
	.byte	nD4, 0x0C, nG3, 0x06, nG4, nD4
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop08
	smpsSetvoice        0x01
	smpsFMAlterVol      0x08
	.byte	nA4, 0x12
	smpsFMAlterVol      0xFC
	.byte	nCs5
	smpsFMAlterVol      0xFC
	.byte	nE5
	smpsFMAlterVol      0xFB
	.byte	nG5, 0x0C, 0x12, nA5, 0x0C
	smpsFMAlterVol      0x05
	smpsJump            Snd_SpecialS_Jump01

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_SpecialS_FM5:
	smpsSetvoice        0x02
	.byte	nA5, 0x06, nRst, 0x0C, nA4, 0x06, nE4, nRst, nA4, nRst, nB4, nRst
	.byte	nCs5, nRst, nE5, nRst, nG5, nRst, nA5, nA5, nRst, nA5, nA5, nRst
	.byte	nA5, nA5, nRst, nG5, nRst, nG5, nG5, 0x0C, nA5, nRst, 0x60
	smpsAlterNote       0xF8

Snd_SpecialS_Jump00:
	smpsSetvoice        0x03
	smpsModSet          0x14, 0x01, 0x06, 0x06
	.byte	nRst, 0x12
	smpsCall            Snd_SpecialS_Call00
	smpsCall            Snd_SpecialS_Call01
	smpsCall            Snd_SpecialS_Call02
	.byte	nE6, 0x06
	smpsSetvoice        0x04
	smpsFMAlterVol      0xFB
	.byte	nE6, 0x66, nRst, 0x06, nE6, nRst, nE6, 0x0C
	smpsFMAlterVol      0x0A
	.byte	nRst, 0x03
	smpsCall            Snd_SpecialS_Call03
	smpsFMAlterVol      0xFB
	smpsJump            Snd_SpecialS_Jump00

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_SpecialS_PSG1:
	.byte	nRst, 0x12, nA2, 0x06, nE2, nRst, nA2, nRst, nB2, nRst, nCs3, nRst
	.byte	nE3, nRst, nG3, nRst, nA3, nA3, nRst, nA3, nA3, nRst, nA3, nA3
	.byte	nRst, nG3, nRst, nG3, nG3, 0x0C, nA3, nRst, 0x60

Snd_SpecialS_Loop1E:
	.byte	nE2, 0x0C, nA2, 0x06, nCs2, nRst, nE2, nRst, nD2, 0x12, nB1, 0x06
	.byte	nD2, 0x0C, nG1, 0x06, nG2, nD2
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop1E

Snd_SpecialS_Loop1F:
	.byte	nCs2, 0x0C, nFs2, 0x06, nCs2, nRst, nCs2, nRst, nD2, 0x0C, nFs1, 0x06
	.byte	nB1, nD2, 0x0C, nFs1, 0x06, nB1, nD2, nB1, 0x0C, nE1, 0x06, nAb1
	.byte	nRst, nB1, nRst, nCs2, 0x0C, nA1, 0x06, nB1, nCs2, 0x0C, nE1, 0x06
	.byte	nA1, nCs2
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop1F
	smpsPSGvoice        sTone_09

Snd_SpecialS_Loop20:
	.byte	nFs2, 0x60, nE2, nFs2, nA2
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop20
	.byte	nFs2, 0x30, nAb2, 0x12, nAb2, nAb2, 0x0C
	smpsPSGvoice        sTone_0C
	.byte	nA3, 0x06, nA3, nRst, nA3, nA3, nRst, nA3, nA3, nRst, nG3, nRst
	.byte	nG3, nG3, 0x0C, nA3
	smpsPSGvoice        sTone_09
	smpsCall            Snd_SpecialS_Call04
	.byte	nG1, nAb1, nA1, nBb1, nB1, nC2
	smpsPSGAlterVol     0x02
	smpsPSGvoice        sTone_0C

Snd_SpecialS_Loop21:
	.byte	nE2, 0x0C, nA2, 0x06, nCs2, nRst, nE2, nRst, nD2, 0x12, nB1, 0x06
	.byte	nD2, 0x0C, nG1, 0x06, nG2, nD2
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop21
	.byte	nE2, 0x0C, nA2, 0x06, nCs2, nRst, nE2, nRst, nD2, 0x0C, nG2, 0x0C
	.byte	0x12, nA2, 0x0C
	smpsJump            Snd_SpecialS_Loop1E

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_SpecialS_PSG2:
	.byte	nRst, 0x12, nA1, 0x06, nE1, nRst, nA1, nRst, nB1, nRst, nCs2, nRst
	.byte	nE2, nRst, nG2, nRst, nE2, nE2, nRst, nE2, nE2, nRst, nE2, nE2
	.byte	nRst, nD2, nRst, nD2, nD2, 0x0C, nE2, nRst, 0x60

Snd_SpecialS_Loop1A:
	.byte	nCs2, 0x0C, nA1, 0x06, nE1, nRst, nA1, nRst, nB1, 0x0C, nG1, 0x06
	.byte	nG1, nG1, 0x0C, nD1, 0x06, nB1, nB1
	smpsLoop            0x00, 0x04, Snd_SpecialS_Loop1A

Snd_SpecialS_Loop1B:
	.byte	nA1, 0x0C, nFs1, 0x06, nA1, nRst, nFs1, nRst, nB1, 0x0C, nD1, 0x06
	.byte	nD1, nFs1, 0x0C, nD1, 0x06, nFs1, nB1, nE1, 0x0C, nB0, 0x06, nB0
	.byte	nRst, nE1, nRst, nA1, 0x0C, nE1, 0x06, nE1, nA1, 0x0C, nA0, 0x06
	.byte	nE1, nCs1
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop1B
	smpsPSGvoice        sTone_09

Snd_SpecialS_Loop1C:
	.byte	nD2, 0x60, nCs2, nD2, nE2
	smpsLoop            0x00, 0x02, Snd_SpecialS_Loop1C
	.byte	nD2, 0x30, nE2, 0x12, nE2, nE2, 0x0C
	smpsPSGvoice        sTone_0C
	.byte	nE2, 0x06, nE2, nRst, nE2, nE2, nRst, nE2, nE2, nRst, nD2, nRst
	.byte	nD2, nD2, 0x0C, nE2
	smpsPSGvoice        sTone_09
	smpsAlterNote       0xFE
	smpsPSGAlterVol     0x02
	.byte	nRst, 0x12
	smpsCall            Snd_SpecialS_Call04
	smpsPSGvoice        sTone_0C

Snd_SpecialS_Loop1D:
	.byte	nCs2, 0x0C, nA1, 0x06, nE1, nRst, nA1, nRst, nB1, 0x0C, nG1, 0x06
	.byte	nG1, nG1, 0x0C, nD1, 0x06, nB1, nB1
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop1D
	.byte	nCs2, 0x0C, nA1, 0x06, nE1, nRst, nA1, nRst, nB1, 0x0C, nD2, 0x0C
	.byte	0x12, nCs2, 0x0C
	smpsJump            Snd_SpecialS_Loop1A

/*  Unreachable */
	smpsStop

Snd_SpecialS_Call04:
	.byte	nD2, 0x24, 0x06, 0x06, 0x12, nCs2, nB1, 0x0C, nCs2, 0x60, nA1, 0x24
	.byte	0x06, 0x06, 0x12, 0x12, nE1, 0x0C, nA1, 0x48, nAb1, 0x18, nFs1, 0x24
	.byte	0x06, 0x06, 0x12, nAb1, nA1, 0x0C, nF1, 0x30, 0x12, nAb1, nA1, 0x0C
	.byte	nE1, 0x30, 0x12, nAb1, nA1, 0x0C, nA1, 0x18, nAb1
	smpsPSGAlterVol     0xFE
	.byte	nA0, 0x03, nBb0, nB0, nC1, nCs1, nD1, nEb1, nE1, nF1, nFs1
	smpsReturn

/*  PSG3 Data */
Snd_SpecialS_PSG3:
	smpsPSGform         0xE7
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, 0x06, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x0C

Snd_SpecialS_Loop12:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, 0x06
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop12

Snd_SpecialS_Loop13:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop13
	.byte	nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2

Snd_SpecialS_Loop14:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop14
	.byte	nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2
	smpsLoop            0x01, 0x04, Snd_SpecialS_Loop14

Snd_SpecialS_Loop15:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x0F, Snd_SpecialS_Loop15
	.byte	nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2

Snd_SpecialS_Loop16:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, 0x06, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2, 0x0C
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, 0x06, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x10, Snd_SpecialS_Loop16

Snd_SpecialS_Loop17:
	.byte	nMaxPSG2, 0x06, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop17
	.byte	nMaxPSG2, 0x06, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2
	smpsPSGvoice        sTone_02
	smpsLoop            0x01, 0x02, Snd_SpecialS_Loop17

Snd_SpecialS_Loop18:
	.byte	nMaxPSG2, 0x06, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x20, Snd_SpecialS_Loop18

Snd_SpecialS_Loop19:
	smpsPSGvoice        sTone_02
	.byte	nMaxPSG2, nMaxPSG2
	smpsPSGAlterVol     0xFC
	.byte	nMaxPSG2
	smpsPSGAlterVol     0x04
	.byte	nMaxPSG2
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop19
	.byte	nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_01
	.byte	nMaxPSG2
	smpsLoop            0x01, 0x08, Snd_SpecialS_Loop19
	smpsJump            Snd_SpecialS_Loop14

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_SpecialS_DAC:
	.byte	dQuickLooseSnare, 0x06, dKickS3, 0x0C, dQuickLooseSnare, 0x06, dKickS3, 0x0C, dKickS3, dKickS3, dKickS3, dQuickLooseSnare
	.byte	dKickS3, dQuickLooseSnare, 0x06, dQuickLooseSnare, 0x0C, dQuickLooseSnare, 0x06, dKickS3, 0x0C, dQuickLooseSnare, 0x06, dQuickLooseSnare
	.byte	0x0C, dKickS3, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dQuickLooseSnare, 0x06, dQuickLooseSnare, dKickS3, 0x06, dElectricHighTom
	.byte	0x03, dElectricHighTom, dElectricHighTom, 0x06, dElectricHighTom, dElectricMidTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dElectricLowTom, dKickS3
	.byte	dKickS3, dQuickLooseSnare, dKickS3, 0x12

Snd_SpecialS_Loop00:
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, dKickS3, 0x0C, dKickS3, dKickS3, 0x12, dQuickLooseSnare, 0x06
	.byte	dKickS3, 0x12
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop00
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, dKickS3, 0x0C, dKickS3, dKickS3, 0x12, dQuickLooseSnare, 0x0C
	.byte	dQuickLooseSnare, 0x06, dQuickLooseSnare

Snd_SpecialS_Loop01:
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dKickS3, 0x06, dQuickLooseSnare, 0x12, dKickS3, 0x0C
	.byte	dQuickLooseSnare, dKickS3, 0x06, dKickS3
	smpsLoop            0x00, 0x03, Snd_SpecialS_Loop01
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dKickS3, dQuickLooseSnare, dKickS3, dQuickLooseSnare, dKickS3

Snd_SpecialS_Loop02:
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dKickS3
	smpsLoop            0x00, 0x10, Snd_SpecialS_Loop02
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dKickS3, 0x12, dKickS3, dQuickLooseSnare, 0x06, dKickS3
	.byte	0x12, dQuickLooseSnare, 0x06, dQuickLooseSnare, 0x0C, dQuickLooseSnare, 0x06, dKickS3, 0x0C, dQuickLooseSnare, 0x06, dQuickLooseSnare
	.byte	0x0C, dKickS3, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dQuickLooseSnare, 0x06, dQuickLooseSnare, 0x06

Snd_SpecialS_Loop03:
	.byte	dKickS3, 0x12, dKickS3, dKickS3, 0x24, dQuickLooseSnare, 0x18
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop03
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, 0x0C, dKickS3, 0x1E, dKickS3, 0x06, dQuickLooseSnare, dQuickLooseSnare
	.byte	dQuickLooseSnare, dQuickLooseSnare

Snd_SpecialS_Loop04:
	.byte	dKickS3, 0x12, dKickS3, 0x06, dQuickLooseSnare, dKickS3, 0x0C, dKickS3, dKickS3, 0x12, dQuickLooseSnare, 0x06
	.byte	dKickS3, 0x12
	smpsLoop            0x00, 0x07, Snd_SpecialS_Loop04
	.byte	dKickS3, 0x06, dKickS3, dQuickLooseSnare, dKickS3, dKickS3, dQuickLooseSnare, 0x0C, dQuickLooseSnare, 0x06, dKickS3, dElectricHighTom
	.byte	0x03, dElectricHighTom, dElectricHighTom, 0x06, dElectricHighTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom
	smpsJump            Snd_SpecialS_Loop00

/*  Unreachable */
	smpsStop

Snd_SpecialS_Voices:
/* 	Voice 0x00 */
/* 	0x3C */
/* 	0x01, 0x00, 0x00, 0x00, 	0x1F, 0x1F, 0x15, 0x1F, 	0x11, 0x0D, 0x12, 0x05 */
/* 	0x07, 0x04, 0x09, 0x02, 	0x55, 0x3A, 0x25, 0x1A, 	0x1A, 0x80, 0x07, 0x80 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x00, 0x00, 0x00, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x15, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x05, 0x12, 0x0D, 0x11
	smpsVcDecayRate2    0x02, 0x09, 0x04, 0x07
	smpsVcDecayLevel    0x01, 0x02, 0x03, 0x05
	smpsVcReleaseRate   0x0A, 0x05, 0x0A, 0x05
	smpsVcTotalLevel    0x00, 0x07, 0x00, 0x1A

/* 	Voice 0x01 */
/* 	0x3D */
/* 	0x01, 0x01, 0x01, 0x01, 	0x94, 0x19, 0x19, 0x19, 	0x0F, 0x0D, 0x0D, 0x0D */
/* 	0x07, 0x04, 0x04, 0x04, 	0x25, 0x1A, 0x1A, 0x1A, 	0x15, 0x80, 0x80, 0x80 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x01, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x02
	smpsVcAttackRate    0x19, 0x19, 0x19, 0x14
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0D, 0x0D, 0x0D, 0x0F
	smpsVcDecayRate2    0x04, 0x04, 0x04, 0x07
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x02
	smpsVcReleaseRate   0x0A, 0x0A, 0x0A, 0x05
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x15

/* 	Voice 0x02 */
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
	smpsVcTotalLevel    0x00, 0x15, 0x16, 0x13

/* 	Voice 0x03 */
/* 	0x34 */
/* 	0x00, 0x02, 0x01, 0x01, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x10, 0x06, 0x06, 0x06 */
/* 	0x01, 0x06, 0x06, 0x06, 	0x35, 0x1A, 0x15, 0x1A, 	0x10, 0x80, 0x18, 0x80 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x02, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x06, 0x06, 0x06, 0x10
	smpsVcDecayRate2    0x06, 0x06, 0x06, 0x01
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x03
	smpsVcReleaseRate   0x0A, 0x05, 0x0A, 0x05
	smpsVcTotalLevel    0x00, 0x18, 0x00, 0x10

/* 	Voice 0x04 */
/* 	0x3E */
/* 	0x07, 0x01, 0x02, 0x01, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0D, 0x06, 0x00, 0x00 */
/* 	0x08, 0x06, 0x00, 0x00, 	0x15, 0x0A, 0x0A, 0x0A, 	0x1B, 0x80, 0x80, 0x80 */
	smpsVcAlgorithm     0x06
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x02, 0x01, 0x07
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x06, 0x0D
	smpsVcDecayRate2    0x00, 0x00, 0x06, 0x08
	smpsVcDecayLevel    0x00, 0x00, 0x00, 0x01
	smpsVcReleaseRate   0x0A, 0x0A, 0x0A, 0x05
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x1B

