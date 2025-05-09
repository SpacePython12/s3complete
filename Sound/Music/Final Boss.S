Snd_FinalBoss_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_FinalBoss_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x57

	smpsHeaderDAC       Snd_FinalBoss_DAC
	smpsHeaderFM        Snd_FinalBoss_FM1,	0x00, 0x0E
	smpsHeaderFM        Snd_FinalBoss_FM2,	0x00, 0x0C
	smpsHeaderFM        Snd_FinalBoss_FM3,	0x00, 0x0E
	smpsHeaderFM        Snd_FinalBoss_FM4,	0x00, 0x0E
	smpsHeaderFM        Snd_FinalBoss_FM5,	0x00, 0x12
	smpsHeaderPSG       Snd_FinalBoss_PSG1,	0xE8, 0x02, 0x00, 0x00
	smpsHeaderPSG       Snd_FinalBoss_PSG2,	0xE8, 0x03, 0x00, 0x00
	smpsHeaderPSG       Snd_FinalBoss_PSG3,	0xE8, 0x02, 0x00, 0x00

/*  FM1 Data */
Snd_FinalBoss_FM1:
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18
	smpsSetvoice        0x00
	.byte	nE4, 0x03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4
	.byte	nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	.byte	nF5, nG5, 0x48, nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18, nE4
	.byte	0x03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	.byte	nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5, nF5
	.byte	nG5, 0x3C

Snd_FinalBoss_Loop0F:
	smpsSetvoice        0x00
	.byte	nE5, 0x0C, nB4, nG5, nD5, nFs5, nCs5, nF4, nF5
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop0F
	.byte	nRst, 0x30, nRst

Snd_FinalBoss_Loop10:
	.byte	nE3, 0x02, nF3, nG3, nA3, nB3, nC4, nE4, 0x0C, nE3, 0x02, nF3
	.byte	nG3, nA3, nB3, nC4, nE4, 0x0C, nRst, nD5, 0x03, nRst, nD5, nRst
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop10
	.byte	nE3, 0x02, nF3, nG3, nA3, nB3, nC4, nE4, 0x0C, nE3, 0x02, nF3
	.byte	nG3, nA3, nB3, nC4, nE4, 0x0C, nRst, nRst, nRst, 0x24
	smpsSetvoice        0x03
	.byte	nE4, 0x12, nB4, nA4, 0x0C, nD5, 0x12, nC5, nB4, 0x0C, nC5, 0x12
	.byte	nD5, nE5, 0x0C, nD5, 0x12, nA4, 0x1E, nE4, 0x12, nB4, nA4, 0x0C
	.byte	nD5, 0x12, nE5, nFs5, 0x0C, nG5, 0x12, nA5, nB5, 0x0C, nD6, 0x12
	.byte	nA5, 0x1E, nRst, 0x30, nRst
	smpsJump            Snd_FinalBoss_Loop0F

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_FinalBoss_FM2:
	smpsSetvoice        0x01
	smpsModSet          0x0D, 0x01, 0x02, 0x06

Snd_FinalBoss_Loop0C:
	smpsPan             panCenter, 0x00
	.byte	nE2, 0x63, nE2, 0x2D
	smpsLoop            0x00, 0x04, Snd_FinalBoss_Loop0C
	.byte	nE2, 0x3C

Snd_FinalBoss_Loop0D:
	.byte	nE2, 0x06, nE2, nB2, nE2, nE2, nD3, nE2, nE2, nCs3, nE2, nB2
	.byte	nE2, nA2, nE2, nE2, nA2, nE2, nE2, nA2, nE2, nE2, nB2, nE2
	.byte	nE2, nD3, nE2, nE3, nE2, nD3, nE2, nCs3, nE2, nE2, nE2, 0x03
	.byte	nE2, nA2, 0x06, nE2, nE2, nB2, nE2, nE2, nD3, nE2, nCs3, nE2
	.byte	nB2, nE2, nA2, nE2, nE2, nE2, nA2, nE2, nE2, nB2, nE2, nE2
	.byte	nD3, nE2, nE2, nCs3, nE2, nE2, nB2, nD3
	smpsLoop            0x00, 0x02, Snd_FinalBoss_Loop0D
	.byte	nE2, 0x06, nA2, nB2, nE2, nE3, nA2, nB2, nE3, nD2, nG2, nA2
	.byte	nD2, nD3, nG2, nA2, nD3

Snd_FinalBoss_Loop0E:
	.byte	nC2, 0x06, nC3, nRst, 0x0C
	smpsLoop            0x00, 0x0A, Snd_FinalBoss_Loop0E
	.byte	nC2, 0x06, nC3, nRst, nD3, 0x42, nE2, 0x06, nE2, nB2, nE2, nD3
	.byte	nE2, nB2, nD3, nD2, nD2, nA2, nD2, nD3, nC3, nB2, nA2, nC3
	.byte	nC3, nG2, nC3, nE3, nG2, nC3, nD3, nD2, nD2, nA2, nD2, nD3
	.byte	nA2, nG2, nD2, nE2, nE2, nB2, nE2, nE3, nE2, nB2, nE2, nFs2
	.byte	nFs2, nFs3, nFs2, nCs3, nFs2, nFs3, nFs2, nG2, nG2, nG3, nG2, nD3
	.byte	nG2, nG3, nG2, nA2, nA2, nE3, nA2, nA3, nE3, nA2, nA3, nRst
	.byte	0x0C, nBb2, 0x48, nRst, 0x0C
	smpsJump            Snd_FinalBoss_Loop0D

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_FinalBoss_FM3:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panRight, 0x00

Snd_FinalBoss_Loop09:
	.byte	nG4, 0x48, nBb4, 0x1B, nA4, 0x2D
	smpsLoop            0x00, 0x04, Snd_FinalBoss_Loop09
	.byte	nG4, 0x3C

Snd_FinalBoss_Loop0A:
	smpsSetvoice        0x02
	.byte	nG4, 0x30, nBb4, 0x12, nA4, nA4, 0x0C
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop0A
	.byte	nG4, 0x30, nFs4, 0x12, nD4, nFs4, 0x0C

Snd_FinalBoss_Loop0B:
	.byte	nRst, 0x0C, nE4, nRst, nE4, nRst, nFs4, 0x03, nRst, nFs4, nRst
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop0B
	.byte	nRst, 0x0C, nE4, nRst, nE4, 0x06, nFs4, 0x2A, nRst, 0x18
	smpsSetvoice        0x04
	.byte	nG4, 0x30, nFs4, nE4, nFs4, nB4, nD5, nD5, nFs5, nRst, 0x0C, nD5
	.byte	0x48, nRst, 0x0C
	smpsJump            Snd_FinalBoss_Loop0A

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_FinalBoss_FM4:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panLeft, 0x00

Snd_FinalBoss_Loop06:
	.byte	nD4, 0x48, nFs4, 0x1B, nF4, 0x2D
	smpsLoop            0x00, 0x04, Snd_FinalBoss_Loop06
	.byte	nD4, 0x3C

Snd_FinalBoss_Loop07:
	smpsSetvoice        0x02
	.byte	nD4, 0x30, nFs4, 0x12, nF4, nF4, 0x0C
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop07
	.byte	nE4, 0x30, nD4, 0x12, nA3, nD4, 0x0C

Snd_FinalBoss_Loop08:
	.byte	nRst, 0x0C, nC4, nRst, nC4, nRst, nD4, 0x03, nRst, nD4, nRst
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop08
	.byte	nRst, 0x0C, nC4, nRst, nC4, 0x03, nRst, nD4, 0x2A, nRst, 0x18
	smpsSetvoice        0x04
	.byte	nB4, 0x30, nA4, nG4, nA4, nE5, nFs5, nG5, nA5, nRst, 0x0C, nE5
	.byte	0x48, nRst, 0x0C
	smpsJump            Snd_FinalBoss_Loop07

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_FinalBoss_FM5:
	.byte	nRst, 0x09
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18
	smpsSetvoice        0x00
	.byte	nE4, 0x03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4
	.byte	nC5, nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	.byte	nF5, nG5, 0x48, nRst, 0x30, nRst, 0x18, nRst, 0x30, nRst, 0x18, nE4
	.byte	0x03, nF4, nG4, nA4, nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	.byte	nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5, nF5
	.byte	nG5, 0x3C

Snd_FinalBoss_Loop04:
	smpsSetvoice        0x00
	.byte	nE5, 0x0C, nB4, nG5, nD5, nFs5, nCs5, nF4, nF5
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop04
	.byte	nRst, 0x30, nRst

Snd_FinalBoss_Loop05:
	.byte	nE3, 0x02, nF3, nG3, nA3, nB3, nC4, nE4, 0x0C, nE3, 0x02, nF3
	.byte	nG3, nA3, nB3, nC4, nE4, 0x0C, nRst, nD5, 0x03, nRst, nD5, nRst
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop05
	.byte	nE3, 0x02, nF3, nG3, nA3, nB3, nC4, nE4, 0x0C, nE3, 0x02, nF3
	.byte	nG3, nA3, nB3, nC4, nE4, 0x0C, nRst, 0x0D, nRst, 0x0C, nRst, 0x24
	smpsSetvoice        0x03
	.byte	nE4, 0x12, nB4, nA4, 0x0C, nD5, 0x12, nC5, nB4, 0x0C, nC5, 0x12
	.byte	nD5, nE5, 0x0C, nD5, 0x12, nA4, 0x1E, nE4, 0x12, nB4, nA4, 0x0C
	.byte	nD5, 0x12, nE5, nFs5, 0x0C, nG5, 0x12, nA5, nB5, 0x0C, nD6, 0x12
	.byte	nA5, 0x1E, nRst, 0x30, nRst
	smpsJump            Snd_FinalBoss_Loop04

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_FinalBoss_DAC:
	.byte	nRst, 0x30, nRst, 0x18
	smpsLoop            0x00, 0x04, Snd_FinalBoss_DAC

Snd_FinalBoss_Loop00:
	.byte	dKickS3, 0x24, dSnareS3, 0x1B, dKickS3, 0x09
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop00
	.byte	dKickS3, 0x1B, dKickS3, 0x09, dSnareS3, dKickS3, dSnareS3, dSnareS3, nRst, 0x24, dSnareS3, 0x03
	.byte	dSnareS3, dSnareS3, dSnareS3, dKickS3, 0x06, dSnareS3

Snd_FinalBoss_Loop01:
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3
	.byte	0x0C, dKickS3, 0x06, dSnareS3, 0x0C
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop01
	.byte	dKickS3, 0x0C, dSnareS3, 0x06, dKickS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3
	.byte	dKickS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, 0x03, dSnareS3

Snd_FinalBoss_Loop02:
	.byte	dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, 0x06
	.byte	dKickS3, dSnareS3, dSnareS3
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop02
	.byte	dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, 0x06
	.byte	dKickS3, dKickS3, dSnareS3, nRst, 0x0C, nRst, 0x06, dKickS3, dSnareS3, 0x0C

Snd_FinalBoss_Loop03:
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3
	.byte	0x0C, dKickS3, 0x06, dSnareS3, 0x0C
	smpsLoop            0x00, 0x04, Snd_FinalBoss_Loop03
	.byte	dKickS3, 0x06, dKickS3, dSnareS3, 0x24, nRst, dSnareS3, 0x0C
	smpsJump            Snd_FinalBoss_Loop01

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_FinalBoss_PSG1:
	smpsModSet          0x0D, 0x01, 0x02, 0x06

Snd_FinalBoss_Loop16:
	.byte	nB3, 0x48, nCs4, 0x1B, nC4, 0x2D
	smpsLoop            0x00, 0x04, Snd_FinalBoss_Loop16
	.byte	nB3, 0x3C

Snd_FinalBoss_Loop17:
	.byte	nB3, 0x30, nCs4, 0x12, nC4, nC4, 0x0C
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop17
	.byte	nC4, 0x30

Snd_FinalBoss_Loop18:
	.byte	nRst, 0x30
	smpsLoop            0x00, 0x07, Snd_FinalBoss_Loop18
	.byte	nRst, 0x24, nRst, 0x0C, nE5, 0x03, nRst, 0x09, nD5, 0x03, nRst, nE5
	.byte	nRst, 0x09, nD5, 0x03, nRst, nRst, 0x06, nA4, 0x03, nRst, 0x27, nRst
	.byte	0x0C, nE5, 0x03, nRst, 0x09, nD5, 0x03, nRst, nE5, nRst, 0x09, nFs5
	.byte	0x03, nRst, nRst, 0x06, nA4, 0x03, nRst, 0x27

Snd_FinalBoss_Loop19:
	.byte	nRst, 0x30
	smpsLoop            0x00, 0x06, Snd_FinalBoss_Loop19
	smpsJump            Snd_FinalBoss_Loop17

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_FinalBoss_PSG2:
	smpsModSet          0x0D, 0x01, 0x02, 0x06

Snd_FinalBoss_Loop11:
	.byte	nRst, 0x30, nRst, 0x18
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop11
	.byte	nRst, 0x3C

Snd_FinalBoss_Loop12:
	.byte	nRst, 0x30
	smpsLoop            0x00, 0x08, Snd_FinalBoss_Loop12

Snd_FinalBoss_Loop13:
	.byte	nE4, 0x06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nRst, 0x30
	smpsLoop            0x00, 0x02, Snd_FinalBoss_Loop13

Snd_FinalBoss_Loop14:
	.byte	nE4, 0x06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nE4, nCs5, nFs5
	.byte	nCs5, nE4, nC5, nF5, nC5
	smpsLoop            0x00, 0x02, Snd_FinalBoss_Loop14
	.byte	nE4, 0x06, nB4, nE5, nG4, nG5, nFs5, nD5, nB4, nD4, nA4, nD5
	.byte	nFs4, nFs5, nE5, nD5, nA4

Snd_FinalBoss_Loop15:
	.byte	nC4, 0x06, nG4, nE5, nD5, nG5, nFs5, nD5, nG4, nC4, nG4, nE5
	.byte	nD5
	smpsLoop            0x00, 0x03, Snd_FinalBoss_Loop15
	.byte	nC4, 0x06, nG4, nE5, nD5, nG5, nFs5, nD5, nA5, nG5, nFs5, nD5
	.byte	nA4, nG4, nFs4, nD4, nRst, 0x12, nRst, 0x0C, nG5, 0x06, nRst, nFs5
	.byte	nG5, nRst, nFs5, nRst, nD5, nRst, nE4, nE5, nD5, nB4, nD5, nRst
	.byte	0x0C, nG5, 0x06, nRst, nFs5, nG5, nRst, nA5, nRst, nD5, nRst, nE4
	.byte	nD5, nB4, nA4, nG4, nB4, 0x03, nRst, nD5, nRst, nG5, nRst, nD5
	.byte	nRst, 0x09, nB4, 0x03, nRst, 0x09, nD5, 0x03, nRst, nA4, nRst, nD5
	.byte	nRst, nFs5, nRst, nD5, nRst, 0x09, nA4, 0x03, nRst, 0x09, nD5, 0x03
	.byte	nRst, nG5, nRst, nD5, nRst, nC5, nRst, nG5, nRst, 0x09, nA5, 0x03
	.byte	nRst, 0x09, nG5, 0x03, nRst, nA4, nRst, nD5, nRst, nFs5, nRst, nG5
	.byte	nRst, nFs5, nRst, nE5, nRst, nD5, nRst, nA4, nRst, nRst, 0x30, nRst
	smpsJump            Snd_FinalBoss_Loop12

/*  Unreachable */
	smpsStop
	smpsStop

/*  PSG3 Data */
Snd_FinalBoss_PSG3:
	smpsStop

Snd_FinalBoss_Voices:
/* 	Voice 0x00 */
/* 	0x2A */
/* 	0x44, 0x42, 0x74, 0x41, 	0x0F, 0x14, 0x53, 0x14, 	0x04, 0x06, 0x06, 0x03 */
/* 	0x00, 0x0F, 0x00, 0x00, 	0x1F, 0x3F, 0x5F, 0x1F, 	0x16, 0x10, 0x26, 0x86 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x07, 0x04, 0x04
	smpsVcCoarseFreq    0x01, 0x04, 0x02, 0x04
	smpsVcRateScale     0x00, 0x01, 0x00, 0x00
	smpsVcAttackRate    0x14, 0x13, 0x14, 0x0F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x03, 0x06, 0x06, 0x04
	smpsVcDecayRate2    0x00, 0x00, 0x0F, 0x00
	smpsVcDecayLevel    0x01, 0x05, 0x03, 0x01
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x06, 0x26, 0x10, 0x16

/* 	Voice 0x01 */
/* 	0x2D */
/* 	0x71, 0x00, 0x42, 0x22, 	0x18, 0x1F, 0x18, 0x1A, 	0x03, 0x0D, 0x01, 0x01 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x10, 0x84, 0x87, 0x87 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x02, 0x04, 0x00, 0x07
	smpsVcCoarseFreq    0x02, 0x02, 0x00, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1A, 0x18, 0x1F, 0x18
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x01, 0x0D, 0x03
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x07, 0x07, 0x04, 0x10

/* 	Voice 0x02 */
/* 	0x35 */
/* 	0x71, 0x24, 0x10, 0x71, 	0x1E, 0x1F, 0x1F, 0x1F, 	0x08, 0x05, 0x08, 0x09 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x10, 0x8A, 0x85, 0x86 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x06
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x01, 0x02, 0x07
	smpsVcCoarseFreq    0x01, 0x00, 0x04, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x09, 0x08, 0x05, 0x08
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x06, 0x05, 0x0A, 0x10

/* 	Voice 0x03 */
/* 	0x2C */
/* 	0x43, 0x01, 0x21, 0x71, 	0x0E, 0x11, 0x12, 0x17, 	0x00, 0x00, 0x00, 0x00 */
/* 	0x08, 0x00, 0x09, 0x00, 	0x89, 0xF8, 0xF9, 0xF8, 	0x17, 0x8C, 0x0C, 0x87 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x02, 0x00, 0x04
	smpsVcCoarseFreq    0x01, 0x01, 0x01, 0x03
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x17, 0x12, 0x11, 0x0E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x00, 0x09, 0x00, 0x08
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x08
	smpsVcReleaseRate   0x08, 0x09, 0x08, 0x09
	smpsVcTotalLevel    0x07, 0x0C, 0x0C, 0x17

/* 	Voice 0x04 */
/* 	0x3D */
/* 	0x31, 0x50, 0x21, 0x41, 	0x0D, 0x13, 0x13, 0x14, 	0x03, 0x01, 0x06, 0x05 */
/* 	0x05, 0x01, 0x05, 0x01, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x1D, 0x87, 0x85, 0x84 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x02, 0x05, 0x03
	smpsVcCoarseFreq    0x01, 0x01, 0x00, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x14, 0x13, 0x13, 0x0D
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x05, 0x06, 0x01, 0x03
	smpsVcDecayRate2    0x01, 0x05, 0x01, 0x05
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x04, 0x05, 0x07, 0x1D

