Snd_Menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x40

	smpsHeaderDAC       Snd_Menu_DAC
	smpsHeaderFM        Snd_Menu_FM1,	0x0C, 0x12
	smpsHeaderFM        Snd_Menu_FM2,	0x0C, 0x19
	smpsHeaderFM        Snd_Menu_FM3,	0x0C, 0x19
	smpsHeaderFM        Snd_Menu_FM4,	0x0C, 0x19
	smpsHeaderFM        Snd_Menu_FM5,	0x0C, 0x19
	smpsHeaderPSG       Snd_Menu_PSG1,	0x00, 0x06, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Menu_PSG2,	0x00, 0x06, 0x00, sTone_0C
	smpsHeaderPSG       Snd_Menu_PSG3,	0x00, 0x04, 0x00, sTone_0C

/*  Unreachable */
	smpsStop
	smpsStop

Snd_Menu_Call00:
	.byte	dKickS3, 0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C, dKickS3, 0x06, dKickS3, 0x12, dKickS3
	.byte	0x06, dKickS3, dElectricMidTom, dElectricLowTom, 0x0C
	smpsReturn

/*  DAC Data */
Snd_Menu_DAC:
	.byte	nRst, 0x2A

Snd_Menu_Loop00:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x03, Snd_Menu_Loop00
	.byte	dKickS3, 0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C, dKickS3, 0x06, dKickS3, 0x02, dHigherMetalHit
	.byte	0x03, dHigherMetalHit, 0x01, dHigherMetalHit, 0x0C, dHigherMetalHit, 0x06, dHigherMetalHit, 0x08, dHigherMetalHit, dMidMetalHit

Snd_Menu_Loop01:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x03, Snd_Menu_Loop01
	.byte	dElectricLowTom, 0x06, dElectricLowTom, dElectricLowTom, 0x12, dElectricLowTom, 0x06, dElectricLowTom, dElectricLowTom, 0x1E, dElectricMidTom, 0x18

Snd_Menu_Loop02:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x07, Snd_Menu_Loop02
	.byte	dKickS3, 0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C, dKickS3, 0x06, dKickS3, dHigherMetalHit, 0x0C
	.byte	dHigherMetalHit, 0x06, dHigherMetalHit, 0x0C, dElectricLowTom

Snd_Menu_Loop03:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x02, Snd_Menu_Loop03
	.byte	dKickS3, 0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C, dKickS3, 0x06, dKickS3, 0x12, dKickS3
	.byte	0x06, dKickS3, dElectricMidTom, dElectricLowTom, 0x0C, dElectricLowTom, 0x06, dElectricLowTom, dElectricLowTom, 0x12, dElectricLowTom, 0x06
	.byte	dElectricLowTom, dElectricLowTom, 0x1E, dElectricMidTom, 0x18

Snd_Menu_Loop04:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x03, Snd_Menu_Loop04
	.byte	dElectricLowTom, 0x06, dKickS3, 0x0C, dElectricLowTom, 0x06, dKickS3, dElectricLowTom, dElectricLowTom, dElectricMidTom, 0x0C, dKickS3
	.byte	0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C

Snd_Menu_Loop05:
	smpsCall            Snd_Menu_Call00
	smpsLoop            0x01, 0x02, Snd_Menu_Loop05
	.byte	dKickS3, 0x12, dKickS3, 0x06, dKickS3, dElectricHighTom, 0x0C, dKickS3, 0x06, dKickS3, 0x12, dKickS3
	.byte	0x06, dKickS3, dElectricMidTom, dElectricLowTom, 0x0C, dElectricLowTom, dKickS3, 0x06, dElectricLowTom, 0x0C, dKickS3, 0x06
	.byte	dElectricLowTom, nRst, 0x36
	smpsJump            Snd_Menu_Loop00

/*  Unreachable */
	smpsStop

/*  FM1 Data */
Snd_Menu_FM1:
	.byte	nRst, 0x2A

Snd_Menu_Jump04:
	smpsSetvoice        0x00
	.byte	nC1, 0x12, nG1, nC2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x12
	.byte	nF1, nBb1, 0x0C, nG0, 0x12, nD1, nG1, 0x0C, nC1, 0x12, nG1, nC2
	.byte	0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x12, nC1, nD1, 0x0C, nRst
	.byte	0x30, nC1, 0x12, nG1, nC2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0
	.byte	0x12, nF1, nBb1, 0x0C, nG1, 0x12, nD2, nG2, 0x0C, nC1, 0x12, nG1
	.byte	nC2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x06, nBb0, nBb0, nRst
	.byte	0x0C, nBb0, 0x06, nBb0, nBb0, nRst, 0x30, nF1, 0x12, nC2, nF2, 0x0C
	.byte	nBb0, 0x12, nF1, nBb1, 0x0C, nEb1, 0x12, nBb1, nEb2, 0x0C, nEb1, 0x12
	.byte	nBb1, nEb2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x12, nF1, nBb1
	.byte	0x0C, nEb1, 0x12, nBb1, nEb2, 0x0C, nEb1, 0x12, nF1, nFs1, 0x0C, nG1
	.byte	0x12, nD2, nG2, 0x0C, nC1, 0x12, nG1, nC2, 0x0C, nF1, 0x12, nC2
	.byte	nF2, 0x0C, nD1, 0x12, nA1, nD2, 0x0C, nG1, 0x12, nD2, nG2, 0x0C
	.byte	nC1, 0x12, nG1, nC2, 0x0C, nF1, 0x12, nC1, nF0, 0x0C, nRst, 0x30
	.byte	nC1, 0x12, nG1, nC2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x12
	.byte	nF1, nBb1, 0x0C, nG1, 0x12, nD2, nG2, 0x0C, nC1, 0x12, nG1, nC2
	.byte	0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x06, nBb0, nBb0, nRst, 0x0C
	.byte	nBb0, 0x06, nBb0, nBb0, nRst, 0x30, nF1, 0x12, nC2, nF2, 0x0C, nF1
	.byte	0x12, nC2, nF2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nG1, 0x18, nFs1
	.byte	nF1, 0x12, nC2, nF2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb1, 0x12
	.byte	nBb1, 0x06, nRst, nF1, nFs1, nG1, 0x0C, nG1, 0x06, nD2, 0x0C, nG2
	.byte	0x06, nD2, nG1, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nF1, 0x12, nC2
	.byte	nF2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nG1, 0x18, nFs1, nF1, 0x12
	.byte	nC2, nF2, 0x0C, nF1, 0x12, nC2, nF2, 0x0C, nBb0, 0x12, nC1, nD1
	.byte	0x0C, nRst, 0x30
	smpsJump            Snd_Menu_Jump04

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_Menu_FM2:
	smpsSetvoice        0x12
	smpsAlterNote       0x00
	smpsModSet          0x03, 0x01, 0xFC, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb3, 0x0C, nBb3, 0x06, nBb3, 0x08, nA3, nBb3

Snd_Menu_Jump03:
	.byte	nA3, 0x03, nBb3, nA3, 0x0C, nG3, 0x26, nA3, 0x08, nBb3, nC4, nA3
	.byte	nG3, nG3, 0x03, nA3, nG3, 0x0C, nF3, 0x21, nCs3, 0x03, nD3, 0x0C
	.byte	nEb3, 0x06, nF3, 0x08, nG3, nD3, nF3, 0x12, nEb3, 0x0F, nA3, 0x03
	.byte	nBb3, 0x0C, nA3, 0x12, nG3, nA3, 0x0C, nG3, 0x03, nA3, nG3, 0x0C
	.byte	nF3, 0x24, nBb3, 0x0C, nBb3, 0x06, nBb3, 0x08, nA3, nBb3, nA3, 0x03
	.byte	nBb3, nA3, 0x0C, nG3, 0x26, nA3, 0x08, nBb3, nC4, nA3, nG3, nG3
	.byte	0x03, nA3, nG3, 0x0C, nF3, 0x22, nFs3, 0x04, nG3, 0x08, nA3, nB3
	.byte	nC4, nD4, nEb4, 0x12, nG3, nBb3, 0x0C, nA3, 0x12, nG3, nA3, 0x0C
	.byte	nBb3, 0x06, nBb3, nBb3, 0x12, nBb3, 0x06, nBb3, nBb3, 0x2A
	smpsSetvoice        0x0F
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	.byte	nC5, 0x03, nRst, nD5, nRst, nEb5, 0x12, nAb4, nEb5, 0x0C, nD5, 0x18
	.byte	nRst, 0x0C, nBb4, 0x03, nRst, nC5, nRst, nD5, 0x12, nG5, nD5, 0x0C
	.byte	nC5, 0x18, nRst, 0x0C, nC5, 0x03, nRst, nD5, nRst, nEb5, 0x12, nAb4
	.byte	nEb5, 0x0C, nD5, 0x12, nF5, nD5, 0x0C, nC5, 0x03, nD5, nC5, 0x0C
	.byte	nBb4, 0x36, nRst, 0x0C, nD5, 0x03, nRst, nE5, nRst, nF5, 0x12, nBb4
	.byte	nF5, 0x0C, nE5, 0x18, nRst, 0x0C, nC5, 0x03, nRst, nD5, nRst, nE5
	.byte	0x12, nA5, nE5, 0x0C, nD5, 0x18, nRst, 0x0C, nA4, 0x06, nBb4, nC5
	.byte	0x03, nRst, 0x09, nD5, 0x03, nRst, nBb4, nRst, 0x09, nC5, 0x03, nRst
	.byte	0x09, nA4, 0x03, nRst, 0x09, nBb4, 0x03, nRst, 0x09, nG4, 0x03, nRst
	.byte	0x09, nA4, 0x0C, nAb4, 0x02, nG4, nFs4, nF4, 0x06, nRst, 0x30
	smpsSetvoice        0x12
	smpsAlterNote       0x00
	smpsModSet          0x03, 0x01, 0xFC, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb3, 0x0C, nBb3, 0x06, nBb3, 0x08, nA3, nBb3, nA3, 0x03, nBb3, nA3
	.byte	0x0C, nG3, 0x26, nA3, 0x08, nBb3, nC4, nA3, nG3, nG3, 0x03, nA3
	.byte	nG3, 0x0C, nF3, 0x22, nFs3, 0x04, nG3, 0x08, nA3, nB3, nC4, nD4
	.byte	nEb4, 0x12, nG3, nBb3, 0x0C, nA3, 0x12, nG3, nA3, 0x0C, nBb3, 0x06
	.byte	nBb3, nBb3, 0x12, nBb3, 0x06, nBb3, nBb3, 0x3C
	smpsSetvoice        0x0D
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	nD3, 0x03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, 0x09, nBb3, 0x03
	.byte	nRst, nC4, nRst, 0x09, nBb3, 0x03, nRst, nC4, nRst, nBb3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nG3, 0x03, nRst, nA3, 0x06, nBb3, 0x0C
	smpsSetvoice        0x0D
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x06, nG3, 0x03, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	smpsSetvoice        0x0F
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	.byte	nBb4, 0x06, nA4, nF4, nD4, nBb3, nA3, nG3, 0x0C, nRst, 0x30
	smpsSetvoice        0x0D
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	nD3, 0x03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, 0x09, nBb3, 0x03
	.byte	nRst, nC4, nRst, 0x09, nBb3, 0x03, nRst, nC4, nRst, nBb3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nG3, 0x03, nRst, nA3, 0x06, nBb3, 0x0C
	smpsSetvoice        0x0D
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	smpsSetvoice        0x0F
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	.byte	nBb4, 0x06, nA4, nF4, nD4, nBb3, nA3, nG3, 0x0C
	smpsSetvoice        0x12
	smpsAlterNote       0x00
	smpsModSet          0x03, 0x01, 0xFC, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb3, 0x0C, nBb3, 0x06, nBb3, 0x08, nA3, nBb3
	smpsJump            Snd_Menu_Jump03

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_Menu_FM3:
	smpsSetvoice        0x12
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x04, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb2, 0x0C, nBb2, 0x06, nBb2, 0x08, nA2, nBb2

Snd_Menu_Jump02:
	smpsSetvoice        0x12
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x04, 0x05
	smpsPan             panCenter, 0x00
	.byte	nA2, 0x03, nBb2, nA2, 0x0C, nG2, 0x26, nA2, 0x08, nBb2, nC3, nA2
	.byte	nG2, nG2, 0x03, nA2, nG2, 0x0C, nF2, 0x21, nCs2, 0x03, nD2, 0x0C
	.byte	nEb2, 0x06, nF2, 0x08, nG2, nD2, nF2, 0x12, nEb2, 0x0F, nA2, 0x03
	.byte	nBb2, 0x0C, nA2, 0x12, nG2, nA2, 0x0C, nG2, 0x03, nA2, nG2, 0x0C
	.byte	nF2, 0x24, nBb2, 0x0C, nBb2, 0x06, nBb2, 0x08, nA2, nBb2, nA2, 0x03
	.byte	nBb2, nA2, 0x0C, nG2, 0x26, nA2, 0x08, nBb2, nC3, nA2, nG2, nG2
	.byte	0x03, nA2, nG2, 0x0C, nF2, 0x22, nFs2, 0x04, nG2, 0x08, nA2, nB2
	.byte	nC3, nD3, nEb3, 0x12, nG2, nBb2, 0x0C, nA2, 0x12, nG2, nA2, 0x0C
	.byte	nBb2, 0x06, nBb2, nBb2, 0x12, nBb2, 0x06, nBb2, nBb2, 0x30
	smpsSetvoice        0x0F
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsFMAlterVol      0x14
	.byte	nC5, 0x03, nRst, nD5, nRst, nEb5, 0x12, nAb4, nEb5, 0x0C, nD5, 0x18
	.byte	nRst, 0x0C, nBb4, 0x03, nRst, nC5, nRst, nD5, 0x12, nG5, nD5, 0x0C
	.byte	nC5, 0x18, nRst, 0x0C, nC5, 0x03, nRst, nD5, nRst, nEb5, 0x12, nAb4
	.byte	nEb5, 0x0C, nD5, 0x12, nF5, nD5, 0x0C, nC5, 0x03, nD5, nC5, 0x0C
	.byte	nBb4, 0x36, nRst, 0x0C, nD5, 0x03, nRst, nE5, nRst, nF5, 0x12, nBb4
	.byte	nF5, 0x0C, nE5, 0x18, nRst, 0x0C, nC5, 0x03, nRst, nD5, nRst, nE5
	.byte	0x12, nA5, nE5, 0x0C, nD5, 0x18, nRst, 0x0C, nA4, 0x06, nBb4, nC5
	.byte	0x03, nRst, 0x09, nD5, 0x03, nRst, nBb4, nRst, 0x09, nC5, 0x03, nRst
	.byte	0x09, nA4, 0x03, nRst, 0x09, nBb4, 0x03, nRst, 0x09, nG4, 0x03, nRst
	.byte	0x09, nA4, 0x0C, nAb4, 0x02, nG4, nFs4, nF4, 0x06, nRst, 0x2A
	smpsFMAlterVol      0xEC
	smpsSetvoice        0x12
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x04, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb2, 0x0C, nBb2, 0x06, nBb2, 0x08, nA2, nBb2, nA2, 0x03, nBb2, nA2
	.byte	0x0C, nG2, 0x26, nA2, 0x08, nBb2, nC3, nA2, nG2, nG2, 0x03, nA2
	.byte	nG2, 0x0C, nF2, 0x22, nFs2, 0x04, nG2, 0x08, nA2, nB2, nC3, nD3
	.byte	nEb3, 0x12, nG2, nBb2, 0x0C, nA2, 0x12, nG2, nA2, 0x0C, nBb2, 0x06
	.byte	nBb2, nBb2, 0x12, nBb2, 0x06, nBb2, nBb2, 0x3C
	smpsSetvoice        0x0D
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	nBb2, 0x03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, 0x09, nG3, 0x03
	.byte	nRst, nA3, nRst, 0x09, nG3, 0x03, nRst, nA3, nRst, nG3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb3, 0x03, nRst, nF3, 0x06, nG3, 0x0C
	smpsSetvoice        0x0D
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x06, nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	smpsSetvoice        0x0F
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	.byte	nG4, 0x06, nF4, nD4, nBb3, nG3, nF3, nD3, 0x0C, nRst, 0x30
	smpsSetvoice        0x0D
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	nBb2, 0x03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, 0x09, nG3, 0x03
	.byte	nRst, nA3, nRst, 0x09, nG3, 0x03, nRst, nA3, nRst, nG3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb3, 0x03, nRst, nF3, 0x06, nG3, 0x0C
	smpsSetvoice        0x0D
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	smpsSetvoice        0x0F
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	.byte	nG4, 0x06, nF4, nD4, nBb3, nG3, nF3, nD3, 0x0C
	smpsSetvoice        0x12
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x04, 0x05
	smpsPan             panCenter, 0x00
	.byte	nBb2, 0x08, nRst, 0x04, nBb2, 0x06, nBb2, 0x08, nA2, nBb2
	smpsJump            Snd_Menu_Jump02

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_Menu_FM4:
	.byte	nRst, 0x2A
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00

Snd_Menu_Jump01:
	.byte	nEb3, 0x06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	.byte	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	.byte	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	.byte	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	.byte	nRst, nD3, nRst, 0x0C, nEb3, 0x06, nRst, 0x0C, nF3, 0x06, nRst, 0x0C
	smpsSetvoice        0x10
	smpsFMAlterVol      0x06
	.byte	nG4, 0x06, nG5, nG4, nRst, 0x18
	smpsFMAlterVol      0xFA
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	.byte	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	.byte	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	.byte	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	.byte	nRst, nF3, nF3, nF3, nRst, 0x0C, nF3, 0x06, nF3, nF3, nRst, 0x3C
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, 0x0F, nEb3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06
	.byte	nD3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, nD3, 0x03, nRst, 0x0F, nD3
	.byte	0x03, nRst, 0x0F, nC3, 0x0C, nRst, 0x06, nD3, 0x0C, nRst, 0x06, nEb3
	.byte	0x0C, nRst, nEb3, 0x03, nRst, 0x0F, nEb3, 0x03, nRst, 0x0F, nD3, 0x0C
	.byte	nRst, 0x06, nD3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06, nG3, 0x03
	.byte	nRst, nAb3, nRst, nBb3, nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nG3
	.byte	0x12, nRst, 0x30
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nF3, 0x03, nRst, 0x0F, nF3, 0x03, nRst, 0x0F, nE3, 0x0C, nRst, 0x06
	.byte	nE3, 0x03, nRst, 0x0F, nE3, 0x0C, nRst, nE3, 0x03, nRst, 0x0F, nE3
	.byte	0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06, nE3, 0x0C, nRst, 0x06, nF3
	.byte	0x0C, nRst, nF3, 0x03, nRst, 0x0F, nF3, 0x03, nRst, 0x0F, nE3, 0x0C
	.byte	nRst, 0x06, nE3, 0x03, nRst, 0x0F, nE3, 0x0C, nF3, nRst, 0x06, nF3
	.byte	0x0C, nRst, 0x06, nF3, nRst, 0x36
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	.byte	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	.byte	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	.byte	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	.byte	nRst, nF3, nF3, nF3, nRst, 0x0C, nF3, 0x06, nF3, nF3, nRst, 0x36
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	nD3, 0x03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, 0x09, nBb3, 0x03
	.byte	nRst, nC4, nRst, 0x09, nBb3, 0x03, nRst, nC4, nRst, nBb3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nG3, 0x03, nRst, nA3, nRst, nBb3, nRst, 0x09
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nD3, 0x06, nRst, 0x0C, nEb3, 0x06, nRst, 0x0C, nF3, 0x06, nRst, 0x3C
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	nD3, 0x03, nRst, nF3, nRst, nA3, nRst, nC4, nRst, 0x09, nBb3, 0x03
	.byte	nRst, nC4, nRst, 0x09, nBb3, 0x03, nRst, nC4, nRst, nBb3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nG3, 0x03, nRst, nA3, nRst, nBb3, nRst, 0x09
	smpsSetvoice        0x08
	smpsAlterNote       0x03
	smpsModSet          0x03, 0x01, 0xFD, 0x05
	smpsPan             panLeft, 0x00
	.byte	nEb3, 0x03, nRst, nG3, nRst, nBb3, nRst, nD4, nRst, 0x09, nC4, 0x03
	.byte	nRst, nD4, nRst, 0x09, nC4, 0x03, nRst, nD4, nRst, nC4, 0x12, nRst
	.byte	0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0x04
	smpsModSet          0x0F, 0x01, 0xFA, 0x05
	smpsPan             panLeft, 0x00
	.byte	nD3, 0x06, nRst, 0x0C, nEb3, 0x06, nRst, 0x0C, nF3, 0x06, nRst, 0x36
	smpsJump            Snd_Menu_Jump01

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_Menu_FM5:
	.byte	nRst, 0x2A

Snd_Menu_Jump00:
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb2, 0x06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	.byte	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	.byte	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	.byte	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	.byte	nRst, nBb2, nRst, 0x0C, nC3, 0x06, nRst, 0x0C, nD3, 0x06, nRst, 0x0C
	smpsSetvoice        0x10
	smpsFMAlterVol      0x06
	.byte	nG4, 0x06, nG5, nG4, nRst, 0x18
	smpsFMAlterVol      0xFA
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb2, 0x06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	.byte	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	.byte	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	.byte	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	.byte	nRst, nD3, nD3, nD3, nRst, 0x0C, nD3, 0x06, nD3, nD3, nRst, 0x3C
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nAb2, 0x03, nRst, 0x0F, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst, 0x06
	.byte	nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst, nG2, 0x03, nRst, 0x0F, nG2
	.byte	0x03, nRst, 0x0F, nG2, 0x0C, nRst, 0x06, nF2, 0x0C, nRst, 0x06, nG2
	.byte	0x0C, nRst, nAb2, 0x03, nRst, 0x0F, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C
	.byte	nRst, 0x06, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst, 0x06, nBb2, 0x03
	.byte	nRst, nC3, nRst, nD3, nRst, nG3, nRst, nF3, nRst, nD3, nRst, nBb2
	.byte	0x12, nRst, 0x30
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nBb2, 0x03, nRst, 0x0F, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C, nRst, 0x06
	.byte	nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C, nRst, nA2, 0x03, nRst, 0x0F, nA2
	.byte	0x03, nRst, 0x0F, nA2, 0x0C, nRst, 0x06, nG2, 0x0C, nRst, 0x06, nA2
	.byte	0x0C, nRst, nBb2, 0x03, nRst, 0x0F, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C
	.byte	nRst, 0x06, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C, nA2, nRst, 0x06, nA2
	.byte	0x0C, nRst, 0x06, nA2, nRst, 0x36
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb2, 0x06, nRst, nBb2, nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst
	.byte	nG2, nRst, nD3, nEb2, nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	.byte	nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2, nRst, nEb2, nRst, nBb2
	.byte	nG2, nRst, nD3, nRst, nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	.byte	nRst, nD3, nD3, nD3, nRst, 0x0C, nD3, 0x06, nD3, nD3, nRst, 0x36
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	nBb2, 0x03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, 0x09, nG3, 0x03
	.byte	nRst, nA3, nRst, 0x09, nG3, 0x03, nRst, nA3, nRst, nG3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb3, 0x03, nRst, nF3, nRst, nG3, nRst, 0x09
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nBb2, 0x06, nRst, 0x0C, nC3, 0x06, nRst, 0x0C, nD3, 0x06, nRst, 0x3C
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	nBb2, 0x03, nRst, nD3, nRst, nF3, nRst, nA3, nRst, 0x09, nG3, 0x03
	.byte	nRst, nA3, nRst, 0x09, nG3, 0x03, nRst, nA3, nRst, nG3, 0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nEb3, 0x03, nRst, nF3, nRst, nG3, nRst, 0x09
	smpsSetvoice        0x08
	smpsAlterNote       0xFD
	smpsModSet          0x03, 0x01, 0x03, 0x05
	smpsPan             panRight, 0x00
	.byte	nC3, 0x03, nRst, nEb3, nRst, nG3, nRst, nBb3, nRst, 0x09, nA3, 0x03
	.byte	nRst, nBb3, nRst, 0x09, nA3, 0x03, nRst, nBb3, nRst, nA3, 0x12, nRst
	.byte	0x0C
	smpsSetvoice        0x0B
	smpsAlterNote       0xFC
	smpsModSet          0x0F, 0x01, 0x06, 0x05
	smpsPan             panRight, 0x00
	.byte	nBb2, 0x06, nRst, 0x0C, nC3, 0x06, nRst, 0x0C, nD3, 0x06, nRst, 0x36
	smpsJump            Snd_Menu_Jump00

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_Menu_PSG1:
	smpsPSGvoice        sTone_04
	smpsAlterNote       0x00
	.byte	nRst, 0x2A

Snd_Menu_Jump07:
	smpsPSGvoice        sTone_04
	smpsCall            Snd_Menu_Call03
	.byte	nD3, nRst, 0x0C, nEb3, 0x06, nRst, 0x0C, nF3, 0x06, nRst, 0x0C, nG4
	.byte	0x06, nG5, nG4, nRst, 0x18
	smpsCall            Snd_Menu_Call03
	.byte	nF3, nF3, nF3, nRst, 0x0C, nF3, 0x06, nF3, nF3, nRst, 0x3C, nEb3
	.byte	0x03, nRst, 0x0F, nEb3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06, nD3
	.byte	0x03, nRst, 0x0F, nD3, 0x0C, nRst, nD3, 0x03, nRst, 0x0F, nD3, 0x03
	.byte	nRst, 0x0F, nC3, 0x0C, nRst, 0x06, nD3, 0x0C, nRst, 0x06, nEb3, 0x0C
	.byte	nRst, nEb3, 0x03, nRst, 0x0F, nEb3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst
	.byte	0x06, nD3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06, nG3, 0x03, nRst
	.byte	nAb3, nRst, nBb3, nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nG3, 0x12
	.byte	nRst, 0x30, nF3, 0x03, nRst, 0x0F, nF3, 0x03, nRst, 0x0F, nE3, 0x0C
	.byte	nRst, 0x06, nE3, 0x03, nRst, 0x0F, nE3, 0x0C, nRst, nE3, 0x03, nRst
	.byte	0x0F, nE3, 0x03, nRst, 0x0F, nD3, 0x0C, nRst, 0x06, nE3, 0x0C, nRst
	.byte	0x06, nF3, 0x0C, nRst, nF3, 0x03, nRst, 0x0F, nF3, 0x03, nRst, 0x0F
	.byte	nE3, 0x0C, nRst, 0x06, nE3, 0x03, nRst, 0x0F, nE3, 0x0C, nF3, nRst
	.byte	0x06, nF3, 0x0C, nRst, 0x06, nF3, nRst, 0x36
	smpsCall            Snd_Menu_Call03
	smpsCall            Snd_Menu_Call04
	.byte	nF4, 0x02, nRst, 0x04, nF5, 0x06, nF4, 0x02, nRst, 0x0A, nF4, 0x06
	.byte	nF5, 0x06, nF4, 0x02, nRst, 0x0A, nF4, 0x06, nF5, 0x06, nF4, 0x02
	.byte	nRst, 0x0A
	smpsCall            Snd_Menu_Call05
	smpsJump            Snd_Menu_Jump07

Snd_Menu_Call03:
	.byte	nEb3, 0x06, nRst, nBb3, nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst
	.byte	nG3, nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	.byte	nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3, nRst, nEb3, nRst, nBb3
	.byte	nG3, nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	.byte	nRst
	smpsReturn

Snd_Menu_Call04:
	.byte	nF3, 0x06, nF3, nF3, nRst, 0x0C, nF3, 0x06, nF3, nF3, nRst, 0x36
	smpsReturn

Snd_Menu_Call05:
	.byte	nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06
	.byte	nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4
	.byte	0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4
	.byte	0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5
	.byte	nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C
	.byte	nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06
	.byte	nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4
	.byte	0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4
	.byte	0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5
	.byte	nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C
	.byte	nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06
	.byte	nF5, nF4, 0x36
	smpsReturn

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_Menu_PSG2:
	smpsPSGvoice        sTone_04
	smpsAlterNote       0xFF
	.byte	nRst, 0x2A

Snd_Menu_Jump06:
	smpsPSGvoice        sTone_04
	smpsCall            Snd_Menu_Call03
	.byte	nBb3, nRst, 0x0C, nC4, 0x06, nRst, 0x0C, nD4, 0x06, nRst, 0x0C, nG5
	.byte	0x06, nG6, nG5, nRst, 0x18
	smpsCall            Snd_Menu_Call03
	.byte	nD4, nD4, nD4, nRst, 0x0C, nD4, 0x06, nD4, nD4, nRst, 0x3C, nAb2
	.byte	0x03, nRst, 0x0F, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst, 0x06, nAb2
	.byte	0x03, nRst, 0x0F, nAb2, 0x0C, nRst, nG2, 0x03, nRst, 0x0F, nG2, 0x03
	.byte	nRst, 0x0F, nG2, 0x0C, nRst, 0x06, nF2, 0x0C, nRst, 0x06, nG2, 0x0C
	.byte	nRst, nAb2, 0x03, nRst, 0x0F, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst
	.byte	0x06, nAb2, 0x03, nRst, 0x0F, nAb2, 0x0C, nRst, 0x06, nBb2, 0x03, nRst
	.byte	nC3, nRst, nD3, nRst, nG3, nRst, nF3, nRst, nD3, nRst, nBb2, 0x12
	.byte	nRst, 0x30, nBb2, 0x03, nRst, 0x0F, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C
	.byte	nRst, 0x06, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C, nRst, nA2, 0x03, nRst
	.byte	0x0F, nA2, 0x03, nRst, 0x0F, nA2, 0x0C, nRst, 0x06, nG2, 0x0C, nRst
	.byte	0x06, nA2, 0x0C, nRst, nBb2, 0x03, nRst, 0x0F, nBb2, 0x03, nRst, 0x0F
	.byte	nBb2, 0x0C, nRst, 0x06, nBb2, 0x03, nRst, 0x0F, nBb2, 0x0C, nA2, nRst
	.byte	0x06, nA2, 0x0C, nRst, 0x06, nA2, nRst, 0x36
	smpsCall            Snd_Menu_Call03
	smpsCall            Snd_Menu_Call04
	.byte	nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06, nF5, nF4, 0x0C, nF4, 0x06
	.byte	nF5, nF4, 0x0C
	smpsCall            Snd_Menu_Call05
	smpsJump            Snd_Menu_Jump06

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_Menu_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         0xE7
	.byte	nRst, 0x2A

Snd_Menu_Jump05:
	smpsCall            Snd_Menu_Call01
	smpsCall            Snd_Menu_Call01
	smpsCall            Snd_Menu_Call01
	smpsFMAlterVol      0xFD, 0xD3
	.byte	0x06
	smpsFMAlterVol      0x03, 0xD3
	.byte	0x03, nMaxPSG1, nMaxPSG1, 0x06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, 0x0C
	smpsFMAlterVol      0xFD, 0xD3
	.byte	0x0C, nMaxPSG1, 0x06, nMaxPSG1, 0x08, nMaxPSG1, nMaxPSG1, 0x02
	smpsFMAlterVol      0x03, 0x80
	.byte	0x06
	smpsCall            Snd_Menu_Call01
	smpsCall            Snd_Menu_Call01
	smpsFMAlterVol      0xFD, 0xD3
	.byte	0x06
	smpsFMAlterVol      0x03, 0xD3
	.byte	0x03, nMaxPSG1

Snd_Menu_Loop06:
	.byte	nMaxPSG1, 0x06
	smpsLoop            0x00, 0x0D, Snd_Menu_Loop06
	.byte	nMaxPSG1, 0x32, nMaxPSG1, 0x34
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	smpsCall            Snd_Menu_Call02
	.byte	nMaxPSG1, 0x06, nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	.byte	0x36
	smpsCall            Snd_Menu_Call01
	smpsCall            Snd_Menu_Call01
	smpsFMAlterVol      0xFD, 0xD3
	.byte	0x06
	smpsFMAlterVol      0x03, 0xD3
	.byte	0x03, nMaxPSG1

Snd_Menu_Loop07:
	.byte	nMaxPSG1, 0x06
	smpsLoop            0x00, 0x0D, Snd_Menu_Loop07
	.byte	nMaxPSG1, 0x32, nMaxPSG1, 0x34, nMaxPSG1, 0x06, nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06
	smpsFMAlterVol      0xFD, 0xD3
	smpsFMAlterVol      0x03, 0xD3
	.byte	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1

Snd_Menu_Loop08:
	.byte	nMaxPSG1, 0x06, nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06
	smpsFMAlterVol      0xFD, 0xD3
	smpsFMAlterVol      0x03, 0xD3
	.byte	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	smpsLoop            0x00, 0x06, Snd_Menu_Loop08
	.byte	nMaxPSG1, 0x06, nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06
	smpsFMAlterVol      0xFD, 0xD3
	smpsFMAlterVol      0x03, 0xD3
	.byte	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	.byte	nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06
	smpsFMAlterVol      0xFD, 0xD3
	smpsFMAlterVol      0x03, 0xD3
	.byte	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	.byte	nMaxPSG1, 0x03, nMaxPSG1, nMaxPSG1, 0x06
	smpsFMAlterVol      0xFD, 0xD3
	.byte	nMaxPSG1
	smpsJump            Snd_Menu_Jump05

Snd_Menu_Call01:
	smpsFMAlterVol      0xFD, 0xD3
	.byte	0x06
	smpsFMAlterVol      0x03, 0xD3
	.byte	0x03, nMaxPSG1

Snd_Menu_Loop0A:
	.byte	nMaxPSG1, 0x06
	smpsLoop            0x01, 0x0E, Snd_Menu_Loop0A
	smpsReturn

Snd_Menu_Call02:
	.byte	nMaxPSG1, 0x06, nMaxPSG1, 0x03, nMaxPSG1

Snd_Menu_Loop09:
	.byte	nMaxPSG1, 0x06
	smpsLoop            0x01, 0x0E, Snd_Menu_Loop09
	smpsReturn

/*  Unreachable */
	smpsStop

