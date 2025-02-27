Snd_MGZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_MGZ2_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x3D

	smpsHeaderDAC       Snd_MGZ2_DAC
	smpsHeaderFM        Snd_MGZ2_FM1,	0x00, 0x09
	smpsHeaderFM        Snd_MGZ2_FM2,	0x00, 0x0C
	smpsHeaderFM        Snd_MGZ2_FM3,	0x00, 0x0D
	smpsHeaderFM        Snd_MGZ2_FM4,	0x00, 0x0D
	smpsHeaderFM        Snd_MGZ2_FM5,	0x00, 0x1D
	smpsHeaderPSG       Snd_MGZ2_PSG1,	0xE8, 0x02, 0x00, 0x00
	smpsHeaderPSG       Snd_MGZ2_PSG2,	0xE8, 0x02, 0x00, 0x00
	smpsHeaderPSG       Snd_MGZ2_PSG3,	0xE8, 0x02, 0x00, 0x00

/*  FM1 Data */
Snd_MGZ2_FM1:
	smpsSetvoice        0x01
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00

Snd_MGZ2_Loop01:
	.byte	nCs1, 0x08, nCs2, 0x04, nB1, 0x08, nRst, 0x04, nB1, 0x08, nRst, 0x04
	.byte	nBb1, 0x08, nB1, 0x10, nBb1, 0x06, nRst, nAb1, nRst, nFs1, nRst, nFs1
	.byte	0x08, nFs2, 0x04, nE2, 0x0C, nE2, 0x06, nRst, 0x02, nEb2, 0x06, nRst
	.byte	0x06, nE2, 0x04, nRst, 0x30
	smpsLoop            0x00, 0x0A, Snd_MGZ2_Loop01

Snd_MGZ2_Loop02:
	.byte	nB1, 0x18, nEb2, 0x14, nE2, 0x10, nFs2, 0x06, nRst, nA2, nRst, nB2
	.byte	nRst, nB1, 0x08, nB1, 0x04, nB1, 0x0C, nFs1, 0x02, nRst, 0x06, nFs1
	.byte	0x0C, nG1, 0x10, nG1, 0x0C, nA1, nBb1
	smpsLoop            0x00, 0x03, Snd_MGZ2_Loop02
	.byte	nB1, 0x18, nD2, 0x14, nE2, 0x10, nF2, 0x06, nRst, nA2, nRst, nB2
	.byte	nRst, nB1, 0x08, nB1, 0x04, nB1, 0x0C, nFs1, 0x02, nRst, 0x06, nA1
	.byte	0x0C, nB1, 0x06, nRst, 0x16, nC2, 0x18
	smpsJump            Snd_MGZ2_FM1

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_MGZ2_FM2:
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00
	.byte	nRst, 0x60, nRst, nRst, nRst, nRst, 0x0C, nCs4, nCs4, 0x06, nRst, nB3
	.byte	0x08, nCs4, 0x06, nRst, 0x2E, nRst, 0x0C, nFs4, nFs4, 0x04, nRst, 0x08
	.byte	nFs4, nE4, 0x0B, nRst, 0x05, nEb4, 0x0C, nCs4, 0x06, nRst, nB3, nRst
	.byte	nB3, 0x11, nRst, 0x03, nCs4, 0x06, nRst, 0x0A, nCs4, 0x06, nRst, 0x36
	.byte	nRst, 0x60, nRst, 0x0C, nCs4, nCs4, 0x06, nRst, nB3, 0x08, nCs4, 0x06
	.byte	nRst, 0x2E, nRst, 0x08, nFs4, 0x0C, nFs4, 0x04, nFs4, 0x06, nRst, nE4
	.byte	0x08, nE4, 0x09, nRst, 0x07, nEb4, 0x06, nRst, nCs4, 0x0C, nB3, 0x06
	.byte	nRst, nCs4, 0x48, nRst, 0x18, nRst, 0x60, nRst, 0x18, nCs5, 0x06, nRst
	.byte	0x12, nB4, 0x06, nRst, 0x12, nBb4, 0x06, nRst, 0x12, nAb4, 0x3C, nBb4
	.byte	0x1E, nAb4, 0x02, nFs4, nF4, nE4, 0x60, nRst, 0x38
	smpsSetvoice        0x05
	.byte	nCs5, 0x04, nEb5, 0x08, nE5, 0x04, nEb5, 0x08, nCs5, 0x06, nRst, nCs5
	.byte	0x04
	smpsSetvoice        0x00
	.byte	nRst, 0x18, nCs5, 0x06, nRst, 0x12, nB4, 0x06, nRst, 0x12, nBb4, 0x06
	.byte	nRst, 0x12, nAb4, 0x48, nBb4, 0x18, nE4, 0x30, nEb4, 0x06, nRst, nE4
	.byte	0x24, nCs4, 0x60
	smpsSetvoice        0x04
	.byte	nRst, 0x18, nB4, 0x06, nRst, 0x12, nEb5, 0x0C, nE5, 0x06, nRst, 0x12
	.byte	nEb5, 0x06, nRst, nRst, 0x0C, nFs5, 0x06, nRst, 0x12, nB4, 0x3C, nB5
	.byte	0x24, nFs5, 0x06, nG5, nG5, 0x0C, nFs5, nE5, nFs5, 0x06, nRst, nRst
	.byte	0x0C, nEb5, 0x06, nRst, 0x12, nB4, 0x3C, nRst, 0x18, nB4, 0x06, nRst
	.byte	0x12, nEb5, 0x0C, nE5, 0x06, nRst, nEb5, 0x04, nRst, nEb5, nE5, 0x0C
	.byte	nFs5, nEb5, 0x06, nRst, 0x12, nB4, 0x3C, nB5, 0x24, nFs5, 0x06, nG5
	.byte	nFs5, 0x0C, nE5, nEb5, nCs5, 0x06, nRst, nRst, 0x0C, nEb5, 0x06, nRst
	.byte	0x12, nB4, 0x24, nRst, 0x18
	smpsJump            Snd_MGZ2_FM2

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_MGZ2_FM3:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x18, nB3, 0x14, nB3, 0x06, nRst, 0x2E, nRst, 0x18, nCs4, 0x14
	.byte	nCs4, 0x06, nRst, nB3, 0x23, nRst, 0x05, nB3, 0x48, nRst, 0x18, nAb3
	.byte	0x48, nRst, 0x18
	smpsLoop            0x00, 0x05, Snd_MGZ2_FM3
	smpsSetvoice        0x03
	.byte	nE3, 0x60, nEb3, 0x48, nEb3, 0x18, nE3, 0x60, nEb3, nE3, nEb3, 0x48
	.byte	nEb3, 0x18, nD3, 0x60, nEb3, 0x48, nRst, 0x18
	smpsJump            Snd_MGZ2_FM3

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_MGZ2_FM4:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x18, nE4, 0x14, nE4, 0x06, nRst, 0x2E, nRst, 0x18, nFs4, 0x14
	.byte	nFs4, 0x06, nRst, nE4, 0x28, nE4, 0x48, nRst, 0x18, nCs4, 0x48, nRst
	.byte	0x18
	smpsLoop            0x00, 0x05, Snd_MGZ2_FM4
	smpsSetvoice        0x03
	.byte	nG3, 0x60, nFs3, 0x48, nFs3, 0x18, nG3, 0x60, nFs3, nG3, nFs3, 0x48
	.byte	nFs3, 0x18, nF3, 0x60, nFs3, 0x48, nRst, 0x18
	smpsJump            Snd_MGZ2_FM4

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_MGZ2_FM5:
	.byte	nRst, 0x14

Snd_MGZ2_Jump00:
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panCenter, 0x00
	.byte	nRst, 0x60, nRst, nRst, nRst, nRst, 0x0C, nCs4, nCs4, 0x06, nRst, nB3
	.byte	0x08, nCs4, 0x06, nRst, 0x2E, nRst, 0x0C, nFs4, nFs4, 0x04, nRst, 0x08
	.byte	nFs4, nE4, 0x0B, nRst, 0x05, nEb4, 0x0C, nCs4, 0x06, nRst, nB3, nRst
	.byte	nB3, 0x11, nRst, 0x03, nCs4, 0x06, nRst, 0x0A, nCs4, 0x06, nRst, 0x36
	.byte	nRst, 0x60, nRst, 0x0C, nCs4, nCs4, 0x06, nRst, nB3, 0x08, nCs4, 0x06
	.byte	nRst, 0x2E, nRst, 0x08, nFs4, 0x0C, nFs4, 0x04, nFs4, 0x06, nRst, nE4
	.byte	0x08, nE4, 0x09, nRst, 0x07, nEb4, 0x06, nRst, nCs4, 0x0C, nB3, 0x06
	.byte	nRst, nCs4, 0x48, nRst, 0x18, nRst, 0x60, nRst, 0x18, nCs5, 0x06, nRst
	.byte	0x12, nB4, 0x06, nRst, 0x12, nBb4, 0x06, nRst, 0x12, nAb4, 0x3C, nBb4
	.byte	0x1E, nAb4, 0x02, nFs4, nF4, nE4, 0x60, nRst, 0x38
	smpsSetvoice        0x05
	.byte	nCs5, 0x04, nEb5, 0x08, nE5, 0x04, nEb5, 0x08, nCs5, 0x06, nRst, nCs5
	.byte	0x04
	smpsSetvoice        0x00
	.byte	nRst, 0x18, nCs5, 0x06, nRst, 0x12, nB4, 0x06, nRst, 0x12, nBb4, 0x06
	.byte	nRst, 0x12, nAb4, 0x48, nBb4, 0x18, nE4, 0x30, nEb4, 0x06, nRst, nE4
	.byte	0x24, nCs4, 0x60
	smpsSetvoice        0x04
	.byte	nRst, 0x18, nB4, 0x06, nRst, 0x12, nEb5, 0x0C, nE5, 0x06, nRst, 0x12
	.byte	nEb5, 0x06, nRst, nRst, 0x0C, nFs5, 0x06, nRst, 0x12, nB4, 0x3C, nB5
	.byte	0x24, nFs5, 0x06, nG5, nG5, 0x0C, nFs5, nE5, nFs5, 0x06, nRst, nRst
	.byte	0x0C, nEb5, 0x06, nRst, 0x12, nB4, 0x3C, nRst, 0x18, nB4, 0x06, nRst
	.byte	0x12, nEb5, 0x0C, nE5, 0x06, nRst, nEb5, 0x04, nRst, nEb5, nE5, 0x0C
	.byte	nFs5, nEb5, 0x06, nRst, 0x12, nB4, 0x3C, nB5, 0x24, nFs5, 0x06, nG5
	.byte	nFs5, 0x0C, nE5, nEb5, nCs5, 0x06, nRst, nRst, 0x0C, nEb5, 0x06, nRst
	.byte	0x12, nB4, 0x24, nRst, 0x18
	smpsJump            Snd_MGZ2_Jump00

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_MGZ2_DAC:
	.byte	dKickS3, 0x18, dSnareS3, 0x14, dKickS3, 0x10, dKickS3, 0x0C, dSnareS3, dKickS3, dKickS3, 0x18
	.byte	dSnareS3, 0x08, dKickS3, 0x0C, dKickS3, 0x1C, dSnareS3, 0x18
	smpsLoop            0x00, 0x09, Snd_MGZ2_DAC
	.byte	dKickS3, 0x18, dSnareS3, 0x14, dKickS3, 0x10, dKickS3, 0x0C, dSnareS3, dKickS3, dKickS3, 0x18
	.byte	dSnareS3, 0x08, dKickS3, 0x0C, dKickS3, 0x10, dSnareS3, 0x0C, dSnareS3, 0x08, dSnareS3, 0x04
	.byte	dSnareS3, 0x0C

Snd_MGZ2_Loop00:
	.byte	dKickS3, 0x18, dSnareS3, 0x14, dKickS3, 0x10, dKickS3, 0x0C, dSnareS3, dKickS3, dKickS3, 0x18
	.byte	dSnareS3, 0x08, dKickS3, 0x0C, dKickS3, 0x10, dSnareS3, 0x0C, dSnareS3, dSnareS3
	smpsLoop            0x00, 0x04, Snd_MGZ2_Loop00
	smpsJump            Snd_MGZ2_DAC

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_MGZ2_PSG1:
	smpsStop

/*  PSG2 Data */
Snd_MGZ2_PSG2:
	smpsStop

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_MGZ2_PSG3:
	smpsStop

Snd_MGZ2_Voices:
/* 	Voice 0x00 */
/* 	0x10 */
/* 	0x46, 0x13, 0x76, 0x41, 	0x19, 0x55, 0x50, 0x11, 	0x02, 0x06, 0x05, 0x01 */
/* 	0x00, 0x0F, 0x00, 0x00, 	0x18, 0x38, 0x58, 0x18, 	0x2D, 0x1F, 0x1B, 0x81 */
	smpsVcAlgorithm     0x00
	smpsVcFeedback      0x02
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x04, 0x07, 0x01, 0x04
	smpsVcCoarseFreq    0x01, 0x06, 0x03, 0x06
	smpsVcRateScale     0x00, 0x01, 0x01, 0x00
	smpsVcAttackRate    0x11, 0x10, 0x15, 0x19
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x01, 0x05, 0x06, 0x02
	smpsVcDecayRate2    0x00, 0x00, 0x0F, 0x00
	smpsVcDecayLevel    0x01, 0x05, 0x03, 0x01
	smpsVcReleaseRate   0x08, 0x08, 0x08, 0x08
	smpsVcTotalLevel    0x01, 0x1B, 0x1F, 0x2D

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
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x07, 0x1F, 0x25, 0x8A */
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
	smpsVcTotalLevel    0x0A, 0x25, 0x1F, 0x07

/* 	Voice 0x03 */
/* 	0x3D */
/* 	0x41, 0x01, 0x21, 0x71, 	0x0D, 0x12, 0x52, 0xD2, 	0x01, 0x01, 0x01, 0x01 */
/* 	0x08, 0x00, 0x09, 0x00, 	0x89, 0xF8, 0xF9, 0xF8, 	0x1D, 0x8B, 0x8B, 0x8B */
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
	smpsVcTotalLevel    0x0B, 0x0B, 0x0B, 0x1D

/* 	Voice 0x04 */
/* 	0x03 */
/* 	0x61, 0x51, 0x23, 0x41, 	0x10, 0x10, 0x0F, 0x15, 	0x1C, 0x01, 0x06, 0x05 */
/* 	0x05, 0x01, 0x05, 0x01, 	0xC9, 0x0C, 0xD9, 0xC9, 	0x18, 0x17, 0x17, 0x81 */
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
	smpsVcTotalLevel    0x01, 0x17, 0x17, 0x18

/* 	Voice 0x05 */
/* 	0x3D */
/* 	0x7B, 0x57, 0x14, 0x31, 	0x9E, 0xDE, 0x1F, 0x1F, 	0x0C, 0x01, 0x0D, 0x0B */
/* 	0x0C, 0x13, 0x0C, 0x0B, 	0xFF, 0xEF, 0xDF, 0x8F, 	0x30, 0x8C, 0x8F, 0x81 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x03, 0x01, 0x05, 0x07
	smpsVcCoarseFreq    0x01, 0x04, 0x07, 0x0B
	smpsVcRateScale     0x00, 0x00, 0x03, 0x02
	smpsVcAttackRate    0x1F, 0x1F, 0x1E, 0x1E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0B, 0x0D, 0x01, 0x0C
	smpsVcDecayRate2    0x0B, 0x0C, 0x13, 0x0C
	smpsVcDecayLevel    0x08, 0x0D, 0x0E, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x01, 0x0F, 0x0C, 0x30

