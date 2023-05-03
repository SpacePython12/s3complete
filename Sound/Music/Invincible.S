Snd_Invic_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Invic_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x70

	smpsHeaderDAC       Snd_Invic_DAC
	smpsHeaderFM        Snd_Invic_FM1,	0x00, 0x15
	smpsHeaderFM        Snd_Invic_FM2,	0x00, 0x0A
	smpsHeaderFM        Snd_Invic_FM3,	0x00, 0x1F
	smpsHeaderFM        Snd_Invic_FM4,	0x00, 0x13
	smpsHeaderFM        Snd_Invic_FM5,	0x00, 0x13
	smpsHeaderPSG       Snd_Invic_PSG1,	0x00, 0x05, 0x00, 0x00
	smpsHeaderPSG       Snd_Invic_PSG2,	0x00, 0x05, 0x00, 0x00
	smpsHeaderPSG       Snd_Invic_PSG3,	0xE8, 0x01, 0x00, 0x00

/*  FM1 Data */
Snd_Invic_FM1:
	smpsModSet          0x14, 0x01, 0x06, 0x06
	smpsAlterNote       0xFE
	smpsPan             panCenter, 0x00

Snd_Invic_Jump03:
	smpsSetvoice        0x00
	.byte	nRst, 0x18

Snd_Invic_Jump05:
	.byte	nA4, 0x0C, nFs4, 0x06, nE4, nA4, nFs4, nD4, nE4, smpsNoAttack, nE4, 0x12
	.byte	nD5, 0x0C
	smpsNoteFill        0x05
	.byte	0x06, 0x06, 0x06
	smpsNoteFill        0x00
	.byte	nCs5, 0x0C, nA4, 0x06, nE4, nFs4, 0x02, nRst, 0x04, nA4, 0x0C, nB4
	.byte	0x06, smpsNoAttack, nB4, 0x24, nRst, 0x0C
	smpsJump            Snd_Invic_Jump05

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_Invic_FM2:
	.byte	nRst, 0x18
	smpsSetvoice        0x01

Snd_Invic_Jump04:
	.byte	nA1, 0x03, nA1, nRst, nA1, nRst, nA1, nA1, smpsNoAttack, nA1, nFs1, 0x06
	.byte	nFs1, smpsNoAttack, nFs1, nE1, nE1, 0x03, nE1, nRst, nE1, nRst, nE1, nD1
	.byte	smpsNoAttack, nD1, nRst, nD1, nRst, nD2, smpsNoAttack, nD2, nD1, nD1, nD1, nA1
	.byte	nA1, nRst, nA1, nRst, nA1, nA1, smpsNoAttack, nA1, nFs1, 0x06, nFs1, smpsNoAttack
	.byte	nFs1, nG1, nG1, 0x03, nG1, nRst, nG1, nRst, nG1, nE1, smpsNoAttack, nE1
	.byte	nRst, nE1, nRst, nE2, smpsNoAttack, nE2, nE1, nE1, nE1
	smpsJump            Snd_Invic_Jump04

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_Invic_FM3:
	.byte	nRst, 0x0B
	smpsAlterNote       0x02
	smpsModSet          0x14, 0x01, 0x05, 0x06
	smpsPan             panLeft, 0x00
	smpsJump            Snd_Invic_Jump03

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_Invic_FM4:
	smpsPan             panRight, 0x00
	smpsSetvoice        0x02
	.byte	nRst, 0x18

Snd_Invic_Jump02:
	smpsNoteFill        0x05
	.byte	nRst, 0x0C, nA5, 0x12, nA5, nRst, 0x0C, nB5, 0x12
	smpsNoteFill        0x00
	.byte	nA5
	smpsNoteFill        0x05
	.byte	nRst, 0x0C, nA5, 0x12, nA5, nG5, 0x06
	smpsNoteFill        0x00
	.byte	nG5, 0x0C, nE5, 0x18, nRst, 0x06
	smpsJump            Snd_Invic_Jump02

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_Invic_FM5:
	smpsPan             panLeft, 0x00
	smpsSetvoice        0x02
	.byte	nRst, 0x18

Snd_Invic_Jump01:
	smpsNoteFill        0x05
	.byte	nRst, 0x0C, nE5, 0x12, nE5, nRst, 0x0C, nE5, 0x12
	smpsNoteFill        0x00
	.byte	nD5
	smpsNoteFill        0x05
	.byte	nRst, 0x0C, nE5, 0x12, nE5, nD5, 0x06
	smpsNoteFill        0x00
	.byte	nD5, 0x0C, nB4, 0x18, nRst, 0x06
	smpsJump            Snd_Invic_Jump01

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_Invic_PSG1:
	.byte	nRst, 0x18
	smpsPSGvoice        sTone_0A

Snd_Invic_Jump07:
	.byte	nE4, 0x06, nB3, nE4, nB3, nE4, nB3, nE4, nB3, nD4, nB3, nE4
	.byte	nB3, nE4, nB3, nE4, nB3, nE4, 0x06, nB3, nE4, nB3, nE4, nB3
	.byte	nE4, nB3, nD4, nB3, nD4, nB3, nD5, nB4, nD5, nB4, nE4, 0x06
	.byte	nB3, nE4, nB3, nE4, nB3, nE4, nB3, nD4, nB3, nE4, nB3, nE4
	.byte	nB3, nE4, nB3, nE4, 0x06, nB3, nE4, nB3, nE4, nB3, nE4, nB3
	.byte	nE3, nG3, nFs3, nA3, nAb3, nB3, nB3, nD4
	smpsJump            Snd_Invic_Jump07

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_Invic_PSG2:
	.byte	nRst, 0x18
	smpsPSGvoice        sTone_0A
	.byte	nRst, 0x03

Snd_Invic_Jump06:
	.byte	nCs4, 0x06, nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs4
	.byte	nA3, nCs4, nA3, nCs4, nA3, nCs4, 0x06, nA3, nCs4, nA3, nCs4, nA3
	.byte	nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs5, nA4, nCs5, nA4, nCs4, 0x06
	.byte	nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3, nCs4
	.byte	nA3, nCs4, nA3, nCs4, 0x06, nA3, nCs4, nA3, nCs4, nA3, nCs4, nA3
	.byte	nFs3, nA3, nG3, nB3, nA3, nCs4, nCs4, nE4
	smpsJump            Snd_Invic_Jump06

/*  Unreachable */
	smpsStop

/*  PSG3 Data */
Snd_Invic_PSG3:
	smpsPSGvoice        sTone_0A
	smpsModSet          0x14, 0x01, 0x02, 0x06
	.byte	nRst, 0x18
	smpsJump            Snd_Invic_Jump05

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_Invic_DAC:
	.byte	dSnareS3, 0x06, dSnareS3, dSnareS3, 0x03, dSnareS3, dSnareS3, dSnareS3

Snd_Invic_Jump00:
	.byte	dCrashCymbal, 0x0C, dSnareS3, dKickS3, 0x06, dKickS3, dSnareS3, nRst, dKickS3, 0x0C, dSnareS3, 0x09
	.byte	0x03, dKickS3, 0x06, dKickS3, dSnareS3, nRst, dKickS3, 0x0C, dSnareS3, dKickS3, 0x06, dKickS3
	.byte	dSnareS3, nRst, dKickS3, 0x0C, dSnareS3, 0x09, 0x03, dKickS3, 0x06, dKickS3, dSnareS3, 0x03
	.byte	nRst, dSnareS3, dSnareS3
	smpsJump            Snd_Invic_Jump00

/*  Unreachable */
	smpsStop

Snd_Invic_Voices:
/* 	Voice 0x00 */
/* 	0x3D */
/* 	0x61, 0x02, 0x12, 0x52, 	0x1F, 0x18, 0x18, 0x1B, 	0x04, 0x02, 0x01, 0x02 */
/* 	0x00, 0x00, 0x00, 0x00, 	0x5F, 0x4F, 0x3F, 0x4F, 	0x17, 0x80, 0x80, 0x80 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x05, 0x01, 0x00, 0x06
	smpsVcCoarseFreq    0x02, 0x02, 0x02, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1B, 0x18, 0x18, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x02, 0x01, 0x02, 0x04
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x04, 0x03, 0x04, 0x05
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x00, 0x00, 0x00, 0x17

/* 	Voice 0x01 */
/* 	0x2D */
/* 	0x01, 0x51, 0x31, 0x21, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0B, 0x09, 0x00, 0x0B */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x0C, 0x90, 0x90, 0x90 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x02, 0x03, 0x05, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x01, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0B, 0x00, 0x09, 0x0B
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x10, 0x10, 0x10, 0x0C

/* 	Voice 0x02 */
/* 	0x3D */
/* 	0x00, 0x01, 0x01, 0x01, 	0x94, 0x19, 0x19, 0x19, 	0x0F, 0x0D, 0x0D, 0x0D */
/* 	0x07, 0x04, 0x04, 0x04, 	0x25, 0x1A, 0x1A, 0x1A, 	0x10, 0x84, 0x84, 0x84 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x00, 0x00, 0x00
	smpsVcCoarseFreq    0x01, 0x01, 0x01, 0x00
	smpsVcRateScale     0x00, 0x00, 0x00, 0x02
	smpsVcAttackRate    0x19, 0x19, 0x19, 0x14
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0D, 0x0D, 0x0D, 0x0F
	smpsVcDecayRate2    0x04, 0x04, 0x04, 0x07
	smpsVcDecayLevel    0x01, 0x01, 0x01, 0x02
	smpsVcReleaseRate   0x0A, 0x0A, 0x0A, 0x05
	smpsVcTotalLevel    0x04, 0x04, 0x04, 0x10

