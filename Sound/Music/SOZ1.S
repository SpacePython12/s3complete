Snd_SOZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SOZ1_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x12

	smpsHeaderDAC       Snd_SOZ1_DAC
	smpsHeaderFM        Snd_SOZ1_FM1,	0x00, 0x0B
	smpsHeaderFM        Snd_SOZ1_FM2,	0x00, 0x0A
	smpsHeaderFM        Snd_SOZ1_FM3,	0x00, 0x0C
	smpsHeaderFM        Snd_SOZ1_FM4,	0x00, 0x0C
	smpsHeaderFM        Snd_SOZ1_FM5,	0x00, 0x14
	smpsHeaderPSG       Snd_SOZ1_PSG1,	0xE8, 0x04, 0x00, 0x00
	smpsHeaderPSG       Snd_SOZ1_PSG2,	0xE8, 0x02, 0x00, 0x00
	smpsHeaderPSG       Snd_SOZ1_PSG3,	0xE8, 0x02, 0x00, 0x00

/*  FM1 Data */
Snd_SOZ1_FM1:
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00
	.byte	nRst, 0x24, nE4, 0x06, nF4, nAb4, 0x0C, nA4, 0x0A, nRst, 0x0E, nB4
	.byte	0x08, nRst, 0x04, nRst, 0x0C, nA4, nAb4, nF4, nE4, nF4, nAb4, nA4
	.byte	nB4, 0x06, nRst, nA4, nRst, 0x12, nB4, 0x18, nA4, 0x0C, nB4, nC5
	.byte	nD5, nB4, nC5, nD5, nE5, nD5, nC5, nB4

Snd_SOZ1_Jump02:
	smpsSetvoice        0x03
	.byte	nA5, 0x30, nE5, nF5, 0x48, nAb5, 0x0C, nB5, nA5, 0x30, nC6, nB5
	.byte	nAb5, nA5, nE5, nF5, 0x48, nAb5, 0x0C, nB5, nA5, 0x30, nC6, nB5
	.byte	nE6
	smpsSetvoice        0x00
	.byte	nRst, 0x0C, nD4, nD4, nC4, nC4, nB3, nB3, nA3, nAb3, 0x18, nA3
	.byte	0x08, nRst, 0x04, nB3, 0x08, nRst, 0x34, nRst, 0x0C, nAb4, 0x08, nRst
	.byte	0x04, nA4, 0x08, nRst, 0x04, nB4, 0x08, nRst, 0x04, nC5, 0x08, nRst
	.byte	0x04, nB4, 0x08, nRst, 0x04, nA4, 0x08, nRst, 0x04, nB4, 0x08, nRst
	.byte	0x04, nD5, 0x08, nRst, 0x04, nC5, 0x08, nRst, 0x04, nB4, 0x08, nRst
	.byte	0x04, nA4, 0x08, nRst, 0x04, nAb4, 0x08, nRst, 0x04, nF4, 0x08, nRst
	.byte	0x04, nE4, 0x08, nRst, 0x04, nD4, 0x08, nRst, 0x04, nE5, 0x08, nRst
	.byte	0x10, nD5, 0x08, nRst, 0x40, nC5, 0x08, nRst, 0x10, nB4, 0x08, nRst
	.byte	0x40, nE5, 0x08, nRst, 0x10, nD5, 0x08, nRst, 0x40, nAb5, 0x08, nRst
	.byte	0x10, nF5, 0x08, nRst, 0x10, nB5, 0x08, nRst, 0x04, nD6, 0x08, nRst
	.byte	0x04
	smpsSetvoice        0x04
	.byte	nA4, 0x0C, nB4, nC5, 0x0B, nRst, 0x0D, nC5, 0x18, nB4, 0x0B, nRst
	.byte	0x0D, nB4, 0x18, nAb4, nA4, 0x0C, nB4, nRst, 0x30, nRst, 0x0C, nC5
	.byte	0x0B, nRst, 0x19, nB4, 0x0B, nRst, 0x0D, nA4, 0x0B, nRst, 0x0D, nAb4
	.byte	0x18, nA4, 0x0C, nE4, 0x0A, nRst, 0x1A, nA4, 0x0C, nB4, nC5, 0x0B
	.byte	nRst, 0x0D, nC5, 0x18, nB4, 0x0B, nRst, 0x0D, nB4, 0x18, nAb4, nA4
	.byte	0x0C, nB4, nRst, 0x30, nRst, 0x0C, nC5, 0x0B, nRst, 0x19, nB4, 0x0B
	.byte	nRst, 0x0D, nC5, 0x0B, nRst, 0x0D, nD5, 0x0C, nC5, 0x06, nRst, nD5
	.byte	0x07, nRst, 0x05, nE5, 0x0C, nD5, 0x06, nRst, nE5, 0x07, nRst, 0x05
	.byte	nF5, 0x0C, nE5, 0x07, nRst, 0x05
	smpsJump            Snd_SOZ1_Jump02

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_SOZ1_FM2:
	smpsSetvoice        0x01
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00
	.byte	nA1, 0x06, nRst, nA1, nRst, nC2, 0x0C, nA1, 0x06, nRst, 0x12, nAb1
	.byte	0x08, nRst, 0x10, nB1, 0x06, nRst, nA1, nRst, nA1, nRst, nC2, 0x0C
	.byte	nA1, 0x06, nRst, 0x12, nD2, 0x08, nRst, 0x10, nB1, 0x06, nRst, nA1
	.byte	nRst, nA1, nRst, nC2, 0x0C, nA1, 0x06, nRst, 0x12, nAb1, 0x08, nRst
	.byte	0x10, nB1, 0x06, nRst, nA1, nRst, nA1, nRst, nC2, 0x0C, nA1, 0x06
	.byte	nRst, nD2, 0x0C, nB1, nAb1, nB1

Snd_SOZ1_Loop05:
	.byte	nA1, 0x06, nRst, nA1, nRst, nC2, 0x0C, nA1, 0x06, nRst, 0x12, nD2
	.byte	0x08, nRst, 0x10, nC2, 0x06, nRst, nAb1, nRst, nAb1, nRst, nC2, 0x0C
	.byte	nAb1, 0x06, nRst, 0x12, nD2, 0x08, nRst, 0x10, nC2, 0x06, nRst
	smpsLoop            0x00, 0x04, Snd_SOZ1_Loop05

Snd_SOZ1_Loop06:
	.byte	nE1, 0x0C, nRst, 0x24, nE1, 0x0C, nE1, 0x0A, nRst, 0x1A
	smpsLoop            0x00, 0x07, Snd_SOZ1_Loop06
	.byte	nE1, 0x0C, nRst, 0x24, nE1, 0x0C, nE1, 0x0A, nRst, 0x0E, nB1, 0x0C

Snd_SOZ1_Loop07:
	.byte	nA1, 0x0C, nA1, nC2, 0x0A, nRst, 0x0E, nA1, 0x0C, nA1, nD2, 0x0A
	.byte	nRst, 0x0E, nAb1, 0x0C, nAb1, nE2, 0x0A, nRst, 0x0E, nE2, 0x0C, nD2
	.byte	nC2, nB1
	smpsLoop            0x00, 0x04, Snd_SOZ1_Loop07
	smpsJump            Snd_SOZ1_Loop05

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_SOZ1_FM3:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panLeft, 0x00
	.byte	nRst, 0x60, nRst, nB4, 0x06, nRst, nA4, nRst, 0x42, nC5, 0x06, nRst
	.byte	nD5, nRst, nB4, nRst, 0x1E, nE5, 0x06, nRst, nD5, nRst, 0x1E

Snd_SOZ1_Jump01:
	smpsSetvoice        0x06
	.byte	nA4, 0x60, nAb4, 0x30, nD5, nC5, 0x60, nB4, 0x30, nAb4, nA4, 0x60
	.byte	nAb4, 0x30, nD5, nC5, 0x60, nB4, 0x30, nAb4
	smpsSetvoice        0x05
	.byte	nRst, 0x0C, nD6, 0x08, nRst, 0x04, nAb6, 0x0A, nRst, 0x0E, nAb6, 0x0C
	.byte	nF6, 0x0A, nRst, 0x0E, nD6, 0x08, nRst, 0x04, nRst, 0x0C, nB5, 0x08
	.byte	nRst, 0x10, nAb5, 0x08, nRst, 0x28, nB5, 0x06, nC6, nB5, 0x08, nRst
	.byte	0x1C, nAb5, 0x08, nRst, 0x1C, nF5, 0x08, nRst, 0x10, nRst, 0x0C, nE5
	.byte	0x08, nRst, 0x1C, nE5, 0x08, nRst, 0x28, nRst, 0x0C, nE5, nF5, nAb5
	.byte	0x08, nRst, 0x04, nAb5, nA5, nAb5, 0x10, nF5, 0x0C, nE5, 0x08, nRst
	.byte	0x04, nRst, 0x0C, nE5, nD5, nC5, nB4, 0x04, nC5, nB4, 0x10, nAb4
	.byte	0x0C, nE4, nRst, nE5, nF5, nAb5, 0x08, nRst, 0x04, nAb5, nA5, nAb5
	.byte	0x10, nF5, 0x0C, nE5, 0x08, nRst, 0x04, nA5, nB5, nA5, 0x10, nAb5
	.byte	0x0C, nA5, nB5, nD6, nRst, 0x18
	smpsSetvoice        0x07
	.byte	nRst, 0x60, nRst, 0x3C, nD5, 0x08, nRst, 0x04, nC5, 0x08, nRst, 0x04
	.byte	nB4, 0x08, nRst, 0x04, nRst, 0x60, nRst, 0x24, nB4, 0x04, nC5, nB4
	.byte	0x34, nRst, 0x60, nRst, 0x3C, nD5, 0x08, nRst, 0x04, nC5, 0x08, nRst
	.byte	0x04, nB4, 0x08, nRst, 0x04, nRst, 0x60, nB4, 0x08, nRst, 0x10, nA4
	.byte	0x08, nRst, 0x10, nAb4, 0x08, nRst, 0x10, nE4, 0x08, nRst, 0x10
	smpsJump            Snd_SOZ1_Jump01

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_SOZ1_FM4:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panRight, 0x00
	.byte	nRst, 0x60, nRst, nE4, 0x06, nRst, nE4, nRst, 0x42, nE4, 0x06, nRst
	.byte	nE4, nRst, nE4, nRst, 0x1E, nAb4, 0x06, nRst, nAb4, nRst, 0x1E

Snd_SOZ1_Loop04:
	.byte	nRst, 0x60, nRst
	smpsSetvoice        0x07
	.byte	nRst, 0x18, nE5, nC5, nD5, nB4, nC5, nAb4, nB4
	smpsLoop            0x00, 0x02, Snd_SOZ1_Loop04
	.byte	nRst, 0x60, nRst, nRst, nRst
	smpsSetvoice        0x00
	.byte	nC5, 0x08, nRst, 0x10, nB4, 0x08, nRst, 0x40, nA4, 0x08, nRst, 0x10
	.byte	nAb4, 0x08, nRst, 0x40, nC5, 0x08, nRst, 0x10, nB4, 0x08, nRst, 0x40
	.byte	nF5, 0x08, nRst, 0x10, nD5, 0x08, nRst, 0x10, nAb5, 0x08, nRst, 0x04
	.byte	nB5, 0x08, nRst, 0x10, nB5, 0x08, nRst, 0x04
	smpsSetvoice        0x06
	.byte	nA4, 0x60, nB4, nC5, nB4, nA4, nB4, nC5, nE5, 0x30, nAb5
	smpsJump            Snd_SOZ1_Loop04

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_SOZ1_FM5:
	.byte	nRst, 0x10
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00
	.byte	nRst, 0x24, nE4, 0x06, nF4, nAb4, 0x0C, nA4, 0x0A, nRst, 0x0E, nB4
	.byte	0x08, nRst, 0x04, nRst, 0x0C, nA4, nAb4, nF4, nE4, nF4, nAb4, nA4
	.byte	nB4, 0x06, nRst, nA4, nRst, 0x12, nB4, 0x18, nA4, 0x0C, nB4, nC5
	.byte	nD5, nB4, nC5, nD5, nE5, nD5, nC5, nB4

Snd_SOZ1_Jump00:
	smpsSetvoice        0x03
	.byte	nA5, 0x30, nE5, nF5, 0x48, nAb5, 0x0C, nB5, nA5, 0x30, nC6, nB5
	.byte	nAb5, nA5, nE5, nF5, 0x48, nAb5, 0x0C, nB5, nA5, 0x30, nC6, nB5
	.byte	nE6
	smpsSetvoice        0x00
	.byte	nRst, 0x0C, nD4, nD4, nC4, nC4, nB3, nB3, nA3, nAb3, 0x18, nA3
	.byte	0x08, nRst, 0x04, nB3, 0x08, nRst, 0x34, nRst, 0x0C, nAb4, 0x08, nRst
	.byte	0x04, nA4, 0x08, nRst, 0x04, nB4, 0x08, nRst, 0x04, nC5, 0x08, nRst
	.byte	0x04, nB4, 0x08, nRst, 0x04, nA4, 0x08, nRst, 0x04, nB4, 0x08, nRst
	.byte	0x04, nD5, 0x08, nRst, 0x04, nC5, 0x08, nRst, 0x04, nB4, 0x08, nRst
	.byte	0x04, nA4, 0x08, nRst, 0x04, nAb4, 0x08, nRst, 0x04, nF4, 0x08, nRst
	.byte	0x04, nE4, 0x08, nRst, 0x04, nD4, 0x08, nRst, 0x04, nE5, 0x08, nRst
	.byte	0x10, nD5, 0x08, nRst, 0x40, nC5, 0x08, nRst, 0x10, nB4, 0x08, nRst
	.byte	0x40, nE5, 0x08, nRst, 0x10, nD5, 0x08, nRst, 0x40, nAb5, 0x08, nRst
	.byte	0x10, nF5, 0x08, nRst, 0x10, nB5, 0x08, nRst, 0x04, nD6, 0x08, nRst
	.byte	0x04
	smpsSetvoice        0x04
	.byte	nA4, 0x0C, nB4, nC5, 0x0B, nRst, 0x0D, nC5, 0x18, nB4, 0x0B, nRst
	.byte	0x0D, nB4, 0x18, nAb4, nA4, 0x0C, nB4, nRst, 0x30, nRst, 0x0C, nC5
	.byte	0x0B, nRst, 0x19, nB4, 0x0B, nRst, 0x0D, nA4, 0x0B, nRst, 0x0D, nAb4
	.byte	0x18, nA4, 0x0C, nE4, 0x0A, nRst, 0x1A, nA4, 0x0C, nB4, nC5, 0x0B
	.byte	nRst, 0x0D, nC5, 0x18, nB4, 0x0B, nRst, 0x0D, nB4, 0x18, nAb4, nA4
	.byte	0x0C, nB4, nRst, 0x30, nRst, 0x0C, nC5, 0x0B, nRst, 0x19, nB4, 0x0B
	.byte	nRst, 0x0D, nC5, 0x0B, nRst, 0x0D, nD5, 0x0C, nC5, 0x06, nRst, nD5
	.byte	0x07, nRst, 0x05, nE5, 0x0C, nD5, 0x06, nRst, nE5, 0x07, nRst, 0x05
	.byte	nF5, 0x0C, nE5, 0x07, nRst, 0x05
	smpsJump            Snd_SOZ1_Jump00

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_SOZ1_DAC:
	.byte	dKickS3, 0x0C, dKickS3, dKickS3, dSnareS3, 0x30, dKickS3, 0x0C
	smpsLoop            0x00, 0x03, Snd_SOZ1_DAC
	.byte	dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, 0x06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	.byte	dSnareS3

Snd_SOZ1_Loop00:
	.byte	dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, 0x18, dKickS3, 0x0C, dSnareS3, dKickS3
	smpsLoop            0x00, 0x03, Snd_SOZ1_Loop00
	.byte	dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, 0x18, dKickS3, 0x0C, dSnareS3, dSnareS3

Snd_SOZ1_Loop01:
	.byte	dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, 0x18, dKickS3, 0x0C, dSnareS3, dKickS3
	smpsLoop            0x00, 0x03, Snd_SOZ1_Loop01
	.byte	dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3, dSnareS3, dSnareS3

Snd_SOZ1_Loop02:
	.byte	dKickS3, 0x18, dSnareS3, 0x0C, dKickS3, dKickS3, dKickS3, dSnareS3, 0x18
	smpsLoop            0x00, 0x03, Snd_SOZ1_Loop02
	.byte	dKickS3, 0x18, dSnareS3, 0x0C, dKickS3, dKickS3, dKickS3, dSnareS3, dSnareS3, 0x06, dSnareS3

Snd_SOZ1_Loop03:
	.byte	dKickS3, 0x18, dSnareS3, 0x0C, dKickS3, dKickS3, dKickS3, dSnareS3, 0x18
	smpsLoop            0x00, 0x03, Snd_SOZ1_Loop03
	.byte	dKickS3, 0x18, dSnareS3, 0x0C, dKickS3, dKickS3, dSnareS3, 0x06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	.byte	dSnareS3, dKickS3, 0x18, dSnareS3, dKickS3, 0x0C, dKickS3, dSnareS3, 0x18, dKickS3, dSnareS3, dKickS3
	.byte	0x0C, dKickS3, dSnareS3, dKickS3, dKickS3, 0x18, dSnareS3, dKickS3, 0x0C, dKickS3, dSnareS3, 0x18
	.byte	dKickS3, dSnareS3, dKickS3, 0x0C, dKickS3, dSnareS3, dSnareS3, dKickS3, 0x18, dSnareS3, dKickS3, 0x0C
	.byte	dKickS3, dSnareS3, 0x18, dKickS3, dSnareS3, dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, dKickS3, 0x18
	.byte	dSnareS3, dKickS3, 0x0C, dKickS3, dSnareS3, 0x18, dKickS3, dSnareS3, dKickS3, 0x0C, dSnareS3, 0x06
	.byte	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_SOZ1_Loop00

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_SOZ1_PSG1:
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x60, nRst, nRst, nRst

Snd_SOZ1_Jump03:
	.byte	nRst, 0x60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	.byte	nRst, nRst, nRst, nRst, nRst, nC5, nD5, nE5, nD5, nC5, nD5, nE5
	.byte	nAb5, 0x30, nB5
	smpsJump            Snd_SOZ1_Jump03

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_SOZ1_PSG2:
	smpsStop

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_SOZ1_PSG3:
	smpsStop

Snd_SOZ1_Voices:
/* 	Voice 0x00 */
/* 	0x10 */
/* 	0x57, 0x4B, 0x76, 0x41, 	0x19, 0x12, 0x5F, 0x1F, 	0x02, 0x06, 0x05, 0x01 */
/* 	0x00, 0x0F, 0x00, 0x00, 	0x18, 0x38, 0x58, 0x18, 	0x26, 0x1F, 0x1C, 0x87 */
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x02
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x07, 0x04, 0x05
	smpsVcCoarseFreq    0x01, 0x06, 0x0B, 0x07
	smpsVcRateScale     0x00, 0x01, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x12, 0x19
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x05, 0x06, 0x02
	smpsVcDecayRate2    0x00, 0x00, 0x0F, 0x00
	smpsVcDecayLevel    0x01, 0x05, 0x03, 0x01
	smpsVcReleaseRate   0x08, 0x08, 0x08, 0x08
	smpsVcTotalLevel    0x07, 0x1C, 0x1F, 0x26

/* 	Voice 0x01 */
/* 	0x38 */
/* 	0x75, 0x13, 0x71, 0x11, 	0xDF, 0x5F, 0x1F, 0x1F, 	0x0C, 0x0D, 0x01, 0x01 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x1E, 0x1E, 0x1E, 0x81 */
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x01, 0x07, 0x01, 0x07
	smpsVcCoarseFreq    0x01, 0x01, 0x03, 0x05
	smpsVcRateScale     0x00, 0x00, 0x01, 0x03
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x01, 0x0D, 0x0C
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x01, 0x1E, 0x1E, 0x1E

/* 	Voice 0x02 */
/* 	0x02 */
/* 	0x71, 0x52, 0x41, 0x11, 	0x17, 0x16, 0x15, 0x17, 	0x0A, 0x03, 0x05, 0x03 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x07, 0x1F, 0x25, 0x85 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x01, 0x04, 0x05, 0x07
	smpsVcCoarseFreq    0x01, 0x01, 0x02, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x17, 0x15, 0x16, 0x17
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x03, 0x05, 0x03, 0x0A
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x05, 0x25, 0x1F, 0x07

/* 	Voice 0x03 */
/* 	0x3D */
/* 	0x41, 0x01, 0x21, 0x71, 	0x0D, 0x12, 0x52, 0xD2, 	0x01, 0x01, 0x01, 0x01 */
/* 	0x08, 0x00, 0x09, 0x00, 	0x89, 0xF8, 0xF9, 0xF8, 	0x1D, 0x89, 0x89, 0x89 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x02, 0x00, 0x04
	smpsVcCoarseFreq    0x01, 0x01, 0x01, 0x01
	smpsVcRateScale     0x03, 0x01, 0x00, 0x00
	smpsVcAttackRate    0x12, 0x12, 0x12, 0x0D
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x01, 0x01, 0x01
	smpsVcDecayRate2    0x00, 0x09, 0x00, 0x08
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x08
	smpsVcReleaseRate   0x08, 0x09, 0x08, 0x09
	smpsVcTotalLevel    0x09, 0x09, 0x09, 0x1D

/* 	Voice 0x04 */
/* 	0x03 */
/* 	0x61, 0x51, 0x23, 0x41, 	0x10, 0x10, 0x0F, 0x15, 	0x1C, 0x01, 0x06, 0x05 */
/* 	0x05, 0x01, 0x05, 0x01, 	0xC9, 0x0C, 0xD9, 0xC9, 	0x18, 0x17, 0x17, 0x88 */
	smpsVcAlgorithm     0x03
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x02, 0x05, 0x06
	smpsVcCoarseFreq    0x01, 0x03, 0x01, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x15, 0x0F, 0x10, 0x10
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x05, 0x06, 0x01, 0x1C
	smpsVcDecayRate2    0x01, 0x05, 0x01, 0x05
	smpsVcDecayLevel    0x0C, 0x0D, 0x00, 0x0C
	smpsVcReleaseRate   0x09, 0x09, 0x0C, 0x09
	smpsVcTotalLevel    0x08, 0x17, 0x17, 0x18

/* 	Voice 0x05 */
/* 	0x02 */
/* 	0x74, 0x50, 0x13, 0x31, 	0x95, 0xD5, 0x15, 0x16, 	0x06, 0x01, 0x01, 0x03 */
/* 	0x0C, 0x13, 0x0C, 0x0B, 	0xFF, 0xEF, 0xDF, 0x8F, 	0x3D, 0x1D, 0x22, 0x81 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x01, 0x05, 0x07
	smpsVcCoarseFreq    0x01, 0x03, 0x00, 0x04
	smpsVcRateScale     0x00, 0x00, 0x03, 0x02
	smpsVcAttackRate    0x16, 0x15, 0x15, 0x15
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x03, 0x01, 0x01, 0x06
	smpsVcDecayRate2    0x0B, 0x0C, 0x13, 0x0C
	smpsVcDecayLevel    0x08, 0x0D, 0x0E, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x01, 0x22, 0x1D, 0x3D

/* 	Voice 0x06 */
/* 	0x38 */
/* 	0x70, 0x20, 0x41, 0x40, 	0x0B, 0x11, 0x0F, 0x10, 	0x02, 0x03, 0x02, 0x02 */
/* 	0x00, 0x06, 0x04, 0x07, 	0x1F, 0xEC, 0xFF, 0xE8, 	0x2C, 0x11, 0x1A, 0x85 */
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x04, 0x02, 0x07
	smpsVcCoarseFreq    0x00, 0x01, 0x00, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x10, 0x0F, 0x11, 0x0B
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x02, 0x02, 0x03, 0x02
	smpsVcDecayRate2    0x07, 0x04, 0x06, 0x00
	smpsVcDecayLevel    0x0E, 0x0F, 0x0E, 0x01
	smpsVcReleaseRate   0x08, 0x0F, 0x0C, 0x0F
	smpsVcTotalLevel    0x05, 0x1A, 0x11, 0x2C

/* 	Voice 0x07 */
/* 	0x24 */
/* 	0x44, 0x72, 0x17, 0x63, 	0x1D, 0x1D, 0x1D, 0x1E, 	0x0A, 0x08, 0x11, 0x0B */
/* 	0x00, 0x00, 0x00, 0x00, 	0x57, 0x58, 0x57, 0x58, 	0x14, 0x89, 0x30, 0x87 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x04
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x06, 0x01, 0x07, 0x04
	smpsVcCoarseFreq    0x03, 0x07, 0x02, 0x04
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1E, 0x1D, 0x1D, 0x1D
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0B, 0x11, 0x08, 0x0A
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x05, 0x05, 0x05, 0x05
	smpsVcReleaseRate   0x08, 0x07, 0x08, 0x07
	smpsVcTotalLevel    0x07, 0x30, 0x09, 0x14

