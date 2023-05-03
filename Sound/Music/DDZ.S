Snd_DDZ_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_DDZ_Voices
	smpsHeaderChan      0x06, 0x03
	smpsHeaderTempo     0x01, 0x0A

	smpsHeaderDAC       Snd_DDZ_DAC
	smpsHeaderFM        Snd_DDZ_FM1,	0x00, 0x0E
	smpsHeaderFM        Snd_DDZ_FM2,	0x00, 0x0A
	smpsHeaderFM        Snd_DDZ_FM3,	0x00, 0x04
	smpsHeaderFM        Snd_DDZ_FM4,	0x00, 0x04
	smpsHeaderFM        Snd_DDZ_FM5,	0x00, 0x15
	smpsHeaderPSG       Snd_DDZ_PSG1,	0xE8, 0x04, 0x00, 0x00
	smpsHeaderPSG       Snd_DDZ_PSG2,	0xE8, 0x04, 0x00, 0x00
	smpsHeaderPSG       Snd_DDZ_PSG3,	0xE8, 0x02, 0x00, 0x00

/*  FM1 Data */
Snd_DDZ_FM1:
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x3C, nCs5, 0x04, nD5, nEb5, nE5, nF5, nFs5, nG5, nAb5, nA5
	.byte	nBb5, nB5, nC6, nCs6, nD6, nEb6, nE6, nEb6, nD6, nCs6, nC6, nB5
	.byte	nBb5, nA5, nAb5, nG5, nFs5, nF5, nE5, nEb5, nD5, nCs5, nC5, nB4
	.byte	nRst, 0x48, nCs6, 0x04, nC6, nB5, nBb5, nA5, nAb5, nG5, nFs5, nF5
	.byte	nE5, nEb5, nD5, nCs5, nC5, nB4, nBb4, nA4, nAb4, nG4, nAb4, nA4
	.byte	nBb4, nB4, nC5, nCs5, nD5, nEb5, nE5, nF5, nFs5, nEb5, 0x0C, nFs5
	.byte	nA5, nD5, nF5, nAb5, nCs5, nE5, nG5, nC5, nEb5, nFs5, nB4, nD5
	.byte	nF5, 0x18, nA5, 0x3C, nBb5, 0x0C, nA5, nG5, 0x6C

Snd_DDZ_Jump03:
	smpsSetvoice        0x02
	.byte	nRst, 0x60, nRst, nRst, nRst, 0x30, nA4, 0x04, nBb4, nB4, nC5, nCs5
	.byte	nD5, nEb5, nE5, nF5, nFs5, nG5, nAb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nAb5, nG5, nFs5, nF5
	.byte	nE5, nEb5, nD5, nCs5, nC5, nB4, nBb4, nRst, 0x60, nRst
	smpsSetvoice        0x05
	.byte	nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C
	.byte	nF4, nC5, 0x24, nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4
	.byte	0x3C, nE4, 0x0C, nF4, nE5, 0x24, nD5, nC5, nEb5, nD5, nF5, nE5
	.byte	0x06, nEb5, nD5, 0x27, nRst, 0x7F, smpsNoAttack, nRst, 0x1A, nE5, 0x0C, nA4
	.byte	nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C, nF4, nC5, 0x24
	.byte	nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C
	.byte	nF4, nE5, 0x24, nD5, nC5, nEb5, nD5, nF5, nE5, 0x06, nEb5, nD5
	.byte	0x27, nRst, 0x7F, smpsNoAttack, nRst, 0x1A, nBb4, 0x06, nD5, nF5, nA5, 0x0C
	.byte	nG5, 0x06, nFs5, nF5, 0x30, nC5, 0x0C, nEb5, 0x06, nFs5, nBb5, 0x0C
	.byte	nA5, 0x06, nAb5, nG5, 0x30, nD5, 0x0C, nF5, 0x06, nAb5, nC6, 0x0C
	.byte	nB5, 0x06, nBb5, nA5, 0x30, nE5, 0x0C, nG5, 0x06, nBb5, nD6, 0x0C
	.byte	nCs6, 0x06, nD6, nE6, 0x7F, smpsNoAttack, nE6, 0x47
	smpsJump            Snd_DDZ_Jump03

/*  Unreachable */
	smpsStop

/*  FM2 Data */
Snd_DDZ_FM2:
	smpsSetvoice        0x01
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nC3, 0x18, nB2, 0x24, nB2, 0x0C, nBb2, nA2, nAb2, nG2, nFs2, nG2
	.byte	nAb2, nA2, nBb2, nB2, nC3, 0x18, nB2, 0x24, nBb2, nRst, 0x0C, nBb2
	.byte	nA2, nAb2, nG2, nFs2, nF2, nE2, nEb3, 0x24, nD3, nCs3, nC3, nB2
	.byte	0x30, nBb2, 0x54, nA2, 0x6C

Snd_DDZ_Loop03:
	.byte	nD4, 0x06, nD3, nD3, nD3, nF3, nD3, nD3, nD3, nG3, nD3, nD3
	.byte	nD3, nAb3, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nBb3, nD3, nD3
	.byte	nD3, nB3, nD3, nD3, nD3, nC4, nD3, nCs4, nD3
	smpsLoop            0x00, 0x06, Snd_DDZ_Loop03
	.byte	nEb4, 0x06, nEb3, nEb3, nEb3, nF3, nEb3, nEb3, nEb3, nG3, nEb3, nEb3
	.byte	nEb3, nAb3, nEb3, nEb3, nEb3, nBb3, nEb3, nEb3, nEb3, nC4, nEb3, nEb3
	.byte	nEb3, nD4, nEb3, nEb3, nEb3, nEb4, nEb3, nF4, nEb3

Snd_DDZ_Loop04:
	.byte	nD4, 0x06, nD3, nD3, nD3, nF3, nD3, nD3, nD3, nG3, nD3, nD3
	.byte	nD3, nAb3, nD3, nD3, nD3, nA3, nD3, nD3, nD3, nBb3, nD3, nD3
	.byte	nD3, nB3, nD3, nD3, nD3, nC4, nD3, nCs4, nD3
	smpsLoop            0x00, 0x03, Snd_DDZ_Loop04
	.byte	nEb4, 0x06, nEb3, nEb3, nEb3, nF3, nEb3, nEb3, nEb3, nG3, nEb3, nEb3
	.byte	nEb3, nAb3, nEb3, nEb3, nEb3, nBb3, nEb3, nEb3, nEb3, nC4, nEb3, nEb3
	.byte	nEb3, nD4, nEb3, nEb3, nEb3, nEb4, nEb3, nF4, nEb3, nD4, nD3, nD3
	.byte	nD3, nF3, nD3, nD3, nD3, nG3, nD3, nD3, nD3, nAb3, nD3, nD3
	.byte	nD3, nA3, nD3, nD3, nD3, nBb3, nD3, nD3, nD3, nB3, nD3, nD3
	.byte	nD3, nC4, nD3, nCs4, nD3, nBb3, nBb3, nBb3, nBb3, nBb3, nF3, nBb3
	.byte	nB3, 0x0C, nB3, 0x06, nB3, nB3, nB3, nF3, nB3, nC3, 0x0C, nC3
	.byte	0x06, nC3, nC3, nC3, nFs3, nC3, nCs3, 0x0C, nCs3, 0x06, nCs3, nCs3
	.byte	nCs3, nG3, nCs3, nD3, 0x0C, nD3, 0x06, nD3, nD3, nD3, nAb3, nD3
	.byte	nEb3, 0x0C, nEb3, 0x06, nEb3, nEb3, nEb3, nA3, nEb3, nE3, 0x0C, nE3
	.byte	0x06, nE3, nE3, nE3, nBb3, nE3, nA3, 0x0C, nA3, 0x06, nA3, nA3
	.byte	nA3, nE3, nA3, nA3, 0x0C, nA3, 0x06, nA3, nA3, nA3, nE3, nA3
	.byte	nA3, 0x0C, nA3, 0x06, nA3, nA3, nA3, nE3, nA3, nA3, 0x0C, nA3
	.byte	0x06, nA3, nA3, nA3, nE3, nA3, nA3
	smpsJump            Snd_DDZ_Loop03

/*  Unreachable */
	smpsStop

/*  FM3 Data */
Snd_DDZ_FM3:
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panRight, 0x00
	.byte	nRst, 0x0C, nEb5, 0x06, nRst, nD5, 0x7F, smpsNoAttack, nD5, 0x29, nRst, 0x0C
	.byte	nEb5, 0x06, nRst, nD5, 0x24, nCs5, 0x7F, smpsNoAttack, nCs5, 0x05, nC5, 0x24
	.byte	nB4, nBb4, nA4, nA4, 0x30, nA4, 0x54, nG4, 0x6C

Snd_DDZ_Jump02:
	smpsSetvoice        0x03
	.byte	nF4, 0x18, nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4
	.byte	0x18, nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18
	.byte	nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18, nA3
	.byte	nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18, nA3, nBb3
	.byte	nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18, nA3, nBb3, nB3
	.byte	nC4, nCs4, nD4, nEb4, 0x0C, nE4, nG4, 0x7F, smpsNoAttack, nG4, 0x41, nF4
	.byte	0x18, nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18
	.byte	nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nF4, 0x18, nA3
	.byte	nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4, nG4, 0x7F, smpsNoAttack, nG4
	.byte	0x41, nF4, 0x18, nA3, nBb3, nB3, nC4, nCs4, nD4, nEb4, 0x0C, nE4
	smpsSetvoice        0x00
	.byte	nF5, 0x03, nRst, nF5, nRst, nF5, nRst, nF5, nRst, nF5, 0x06, nRst
	.byte	nF5, 0x03, nRst, nF5, 0x06, nRst, nF5, 0x03, nRst, nF5, nRst, nF5
	.byte	nRst, nF5, 0x06, nRst, nF5, 0x03, nRst, nFs5, 0x0C, nFs5, 0x03, nRst
	.byte	nFs5, nRst, nFs5, nRst, nFs5, 0x06, nRst, nFs5, 0x03, nRst, nG5, 0x06
	.byte	nRst, nG5, 0x03, nRst, nG5, nRst, nG5, nRst, nG5, 0x06, nRst, nG5
	.byte	0x03, nRst, nAb5, 0x0C, nAb5, 0x03, nRst, nAb5, nRst, nAb5, nRst, nAb5
	.byte	0x06, nRst, nAb5, 0x03, nRst, nA5, 0x06, nRst, nA5, 0x03, nRst, nA5
	.byte	nRst, nA5, nRst, nA5, 0x06, nRst, nA5, 0x03, nRst, nBb5, 0x0C, nBb5
	.byte	0x03, nRst, nBb5, nRst, nBb5, nRst, nBb5, 0x06, nRst, nBb5, 0x03, nRst
	.byte	nD6, 0x06, nRst, nD6, 0x03, nRst, nD6, nRst, nD6, nRst, nD6, 0x06
	.byte	nRst, nD6, 0x03, nRst, nCs6, 0x0C, nCs6, 0x03, nRst, nCs6, nRst, nCs6
	.byte	nRst, nCs6, 0x06, nRst, nCs6, 0x03, nRst, nD6, 0x06, nRst, nD6, 0x03
	.byte	nRst, nD6, nRst, nD6, nRst, nD6, 0x06, nRst, nD6, 0x03, nRst, nCs6
	.byte	0x0C, nCs6, 0x03, nRst, nCs6, nRst, nCs6, nRst, nCs6, 0x06, nRst, nCs6
	.byte	0x03, nRst, nCs6, nRst
	smpsJump            Snd_DDZ_Jump02

/*  Unreachable */
	smpsStop

/*  FM4 Data */
Snd_DDZ_FM4:
	smpsSetvoice        0x00
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	smpsPan             panLeft, 0x00
	.byte	nRst, 0x0C, nC5, 0x06, nRst, nAb4, 0x7F, smpsNoAttack, nAb4, 0x29, nRst, 0x0C
	.byte	nBb4, 0x06, nRst, nAb4, 0x24, nG4, 0x7F, smpsNoAttack, nG4, 0x05, nA4, 0x24
	.byte	nAb4, nG4, nFs4, nF4, 0x30, nF4, 0x54, nE4, 0x6C

Snd_DDZ_Jump01:
	.byte	nRst, 0x60, nRst, nRst, nRst, nRst, nRst
	smpsSetvoice        0x04
	.byte	nD6, 0x0C, nF6, nAb6, nCs6, nE6, nG6, nC6, nEb6, nFs6, nB5, nD6
	.byte	nF6, nBb5, nCs6, nE6, nA5, nRst, 0x60, nRst, nRst, nRst
	smpsSetvoice        0x03
	.byte	nBb3, nEb5
	smpsSetvoice        0x04
	.byte	nD6, 0x0C, nF6, nAb6, nCs6, nE6, nG6, nC6, nEb6, nFs6, nB5, nD6
	.byte	nF6, nBb5, nCs6, nE6, nA5, nRst, 0x60, nRst, nRst, nRst
	smpsSetvoice        0x03
	.byte	nBb3, 0x7F, smpsNoAttack, nBb3, 0x41
	smpsSetvoice        0x04
	.byte	nD6, 0x0C, nF6, nAb6, nCs6, nE6, nG6, nC6, nEb6, nFs6, nB5, nD6
	.byte	nF6, nBb5, nCs6, nE6, nA5
	smpsSetvoice        0x00
	.byte	nD5, 0x03, nRst, nD5, nRst, nD5, nRst, nD5, nRst, nD5, 0x06, nRst
	.byte	nD5, 0x03, nRst, nD5, 0x06, nRst, nD5, 0x03, nRst, nD5, nRst, nD5
	.byte	nRst, nD5, 0x06, nRst, nD5, 0x03, nRst, nEb5, 0x0C, nEb5, 0x03, nRst
	.byte	nEb5, nRst, nEb5, nRst, nEb5, 0x06, nRst, nEb5, 0x03, nRst, nE5, 0x06
	.byte	nRst, nE5, 0x03, nRst, nE5, nRst, nE5, nRst, nE5, 0x06, nRst, nE5
	.byte	0x03, nRst, nF5, 0x0C, nF5, 0x03, nRst, nF5, nRst, nF5, nRst, nF5
	.byte	0x06, nRst, nF5, 0x03, nRst, nFs5, 0x06, nRst, nFs5, 0x03, nRst, nFs5
	.byte	nRst, nFs5, nRst, nFs5, 0x06, nRst, nFs5, 0x03, nRst, nG5, 0x0C, nG5
	.byte	0x03, nRst, nG5, nRst, nG5, nRst, nG5, 0x06, nRst, nG5, 0x03, nRst
	.byte	nG5, 0x06, nRst, nG5, 0x03, nRst, nG5, nRst, nG5, nRst, nG5, 0x06
	.byte	nRst, nG5, 0x03, nRst, nG5, 0x0C, nG5, 0x03, nRst, nG5, nRst, nG5
	.byte	nRst, nG5, 0x06, nRst, nG5, 0x03, nRst, nG5, 0x06, nRst, nG5, 0x03
	.byte	nRst, nG5, nRst, nG5, nRst, nG5, 0x06, nRst, nG5, 0x03, nRst, nG5
	.byte	0x0C, nG5, 0x03, nRst, nG5, nRst, nG5, nRst, nG5, 0x06, nRst, nG5
	.byte	0x03, nRst, nG5, nRst
	smpsJump            Snd_DDZ_Jump01

/*  Unreachable */
	smpsStop

/*  FM5 Data */
Snd_DDZ_FM5:
	.byte	nRst, 0x0D
	smpsSetvoice        0x02
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x3C, nCs5, 0x04, nD5, nEb5, nE5, nF5, nFs5, nG5, nAb5, nA5
	.byte	nBb5, nB5, nC6, nCs6, nD6, nEb6, nE6, nEb6, nD6, nCs6, nC6, nB5
	.byte	nBb5, nA5, nAb5, nG5, nFs5, nF5, nE5, nEb5, nD5, nCs5, nC5, nB4
	.byte	nRst, 0x48, nCs6, 0x04, nC6, nB5, nBb5, nA5, nAb5, nG5, nFs5, nF5
	.byte	nE5, nEb5, nD5, nCs5, nC5, nB4, nBb4, nA4, nAb4, nG4, nAb4, nA4
	.byte	nBb4, nB4, nC5, nCs5, nD5, nEb5, nE5, nF5, nFs5, nEb5, 0x0C, nFs5
	.byte	nA5, nD5, nF5, nAb5, nCs5, nE5, nG5, nC5, nEb5, nFs5, nB4, nD5
	.byte	nF5, 0x18, nA5, 0x3C, nBb5, 0x0C, nA5, nG5, 0x6C

Snd_DDZ_Jump00:
	smpsSetvoice        0x02
	.byte	nRst, 0x60, nRst, nRst, nRst, 0x30, nA4, 0x04, nBb4, nB4, nC5, nCs5
	.byte	nD5, nEb5, nE5, nF5, nFs5, nG5, nAb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5
	.byte	nBb5, nA5, nBb5, nA5, nBb5, nA5, nBb5, nA5, nAb5, nG5, nFs5, nF5
	.byte	nE5, nEb5, nD5, nCs5, nC5, nB4, nBb4, nRst, 0x60, nRst
	smpsSetvoice        0x05
	.byte	nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C
	.byte	nF4, nC5, 0x24, nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4
	.byte	0x3C, nE4, 0x0C, nF4, nE5, 0x24, nD5, nC5, nEb5, nD5, nF5, nE5
	.byte	0x06, nEb5, nD5, 0x27, nRst, 0x7F, smpsNoAttack, nRst, 0x1A, nE5, 0x0C, nA4
	.byte	nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C, nF4, nC5, 0x24
	.byte	nE5, 0x0C, nA4, nD5, nG4, 0x18, nC5, 0x0C, nF4, 0x3C, nE4, 0x0C
	.byte	nF4, nE5, 0x24, nD5, nC5, nEb5, nD5, nF5, nE5, 0x06, nEb5, nD5
	.byte	0x27, nRst, 0x7F, smpsNoAttack, nRst, 0x1A, nBb4, 0x06, nD5, nF5, nA5, 0x0C
	.byte	nG5, 0x06, nFs5, nF5, 0x30, nC5, 0x0C, nEb5, 0x06, nFs5, nBb5, 0x0C
	.byte	nA5, 0x06, nAb5, nG5, 0x30, nD5, 0x0C, nF5, 0x06, nAb5, nC6, 0x0C
	.byte	nB5, 0x06, nBb5, nA5, 0x30, nE5, 0x0C, nG5, 0x06, nBb5, nD6, 0x0C
	.byte	nCs6, 0x06, nD6, nE6, 0x7F, smpsNoAttack, nE6, 0x47
	smpsJump            Snd_DDZ_Jump00

/*  Unreachable */
	smpsStop

/*  DAC Data */
Snd_DDZ_DAC:
	.byte	dKickS3, 0x18, dSnareS3, 0x24, dKickS3, 0x0C, dSnareS3, 0x18, nRst, 0x0C, dKickS3, dSnareS3
	.byte	0x18, dKickS3, 0x0C, dKickS3, dSnareS3, 0x18, dKickS3, dSnareS3, 0x24, dKickS3, 0x0C, dSnareS3
	.byte	0x18, nRst, 0x0C, dKickS3, dSnareS3, 0x18, dKickS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3
	.byte	0x12, dKickS3, 0x18, dSnareS3, 0x0C, dKickS3, 0x18, dKickS3, 0x0C, dSnareS3, 0x06, dKickS3
	.byte	0x12, nRst, 0x0C, dKickS3, dSnareS3, dKickS3, 0x06, dKickS3, dSnareS3, 0x0C, dKickS3, dSnareS3
	.byte	0x06, dKickS3, 0x0C, dKickS3, 0x06, dKickS3, 0x0C, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3
	.byte	dSnareS3, dKickS3, nRst, dKickS3, dSnareS3, dKickS3, dKickS3, 0x06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	.byte	dSnareS3, dSnareS3, dSnareS3

Snd_DDZ_Loop00:
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3, 0x06
	.byte	dSnareS3, 0x0C
	smpsLoop            0x00, 0x07, Snd_DDZ_Loop00
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, dKickS3, 0x06, dSnareS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	.byte	dSnareS3, dSnareS3

Snd_DDZ_Loop01:
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3, 0x06
	.byte	dSnareS3, 0x0C
	smpsLoop            0x00, 0x07, Snd_DDZ_Loop01
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3, 0x06
	.byte	dSnareS3, dSnareS3

Snd_DDZ_Loop02:
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3, 0x06
	.byte	dSnareS3, 0x0C
	smpsLoop            0x00, 0x07, Snd_DDZ_Loop02
	.byte	dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3
	.byte	dKickS3, dSnareS3, dSnareS3, dKickS3, 0x0C, dSnareS3, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3
	.byte	0x06, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3, 0x12, dSnareS3, 0x0C, dKickS3, dSnareS3
	.byte	0x06, dKickS3, 0x0C, dKickS3, 0x06, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3, 0x12
	.byte	dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3, 0x06, dSnareS3, 0x0C, dKickS3
	.byte	dSnareS3, 0x06, dKickS3, 0x12, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3, 0x0C, dKickS3
	.byte	0x06, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3, 0x12, dSnareS3, 0x0C, dKickS3, 0x06
	.byte	dSnareS3, dSnareS3, dKickS3, 0x0C, dKickS3, 0x06, dSnareS3, 0x0C, dKickS3, dSnareS3, 0x06, dKickS3
	.byte	0x0C, dSnareS3, 0x06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            Snd_DDZ_Loop00

/*  Unreachable */
	smpsStop

/*  PSG1 Data */
Snd_DDZ_PSG1:
	smpsModSet          0x0D, 0x01, 0x02, 0x06

Snd_DDZ_Loop06:
	.byte	nRst, 0x60
	smpsLoop            0x00, 0x04, Snd_DDZ_Loop06

Snd_DDZ_Loop07:
	.byte	nD6, 0x06, nD7, nD6
	smpsLoop            0x00, 0x0F, Snd_DDZ_Loop07
	.byte	nD6, 0x06

Snd_DDZ_Loop08:
	.byte	nCs7, 0x06, nCs6, nCs6
	smpsLoop            0x00, 0x06, Snd_DDZ_Loop08

Snd_DDZ_Loop09:
	.byte	nRst, 0x60
	smpsLoop            0x00, 0x18, Snd_DDZ_Loop09
	.byte	nBb4, 0x06, nBb5, nBb4, nBb4, nBb5, nBb4, nBb4, nB4, nRst, nB5, nB4
	.byte	nB4, nB5, nB4, nB4, nC5, nRst, nC6, nC5, nC5, nC6, nC5, nC5
	.byte	nCs5, nRst, nCs6, nCs5, nCs5, nCs6, nRst, nCs5, nD5, nRst, nD6, nD5
	.byte	nD5, nD6, nD5, nD5, nEb5, nRst, nEb6, nEb5, nEb5, nEb6, nEb5, nEb5
	.byte	nE5, nRst, nE6, nE5, nE5, nE6, nE5, nE5, nA5, nRst, nA6, nA5
	.byte	nA5, nA6, nA5, nA5, nA6, nRst, nA6, nA5, nA5, nA6, nA5, nA5
	.byte	nA6, nRst, nA6, nA5, nA5, nA6, nA5, nA5, nA6, nRst, nA6, nA5
	.byte	nA5, nA6, nA5, nA5, nA6
	smpsJump            Snd_DDZ_Loop09

/*  Unreachable */
	smpsStop

/*  PSG2 Data */
Snd_DDZ_PSG2:
	smpsModSet          0x0D, 0x01, 0x02, 0x06
	.byte	nRst, 0x0C, nG4, 0x06, nRst, nF4, 0x7F, smpsNoAttack, nF4, 0x29, nRst, 0x0C
	.byte	nG4, 0x06, nRst, nF4, 0x24, nE4, 0x7F, smpsNoAttack, nE4, 0x05, nFs4, 0x24
	.byte	nF4, nE4, nEb4, nD4, 0x30, nD4, 0x54, nCs4, 0x6C

Snd_DDZ_Loop05:
	.byte	nRst, 0x60
	smpsLoop            0x00, 0x1C, Snd_DDZ_Loop05
	.byte	nRst, 0x60, nRst, 0x30
	smpsJump            Snd_DDZ_Loop05

/*  Unreachable */
	smpsStop
	smpsStop

/*  PSG3 Data */
Snd_DDZ_PSG3:
	smpsStop

Snd_DDZ_Voices:
/* 	Voice 0x00 */
/* 	0x3D */
/* 	0x41, 0x10, 0x72, 0x61, 	0x12, 0x17, 0x56, 0x17, 	0x04, 0x06, 0x06, 0x03 */
/* 	0x00, 0x0F, 0x00, 0x00, 	0x1F, 0x3F, 0x5F, 0x1F, 	0x1A, 0x88, 0x8B, 0x8B */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x07
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x06, 0x07, 0x01, 0x04
	smpsVcCoarseFreq    0x01, 0x02, 0x00, 0x01
	smpsVcRateScale     0x00, 0x01, 0x00, 0x00
	smpsVcAttackRate    0x17, 0x16, 0x17, 0x12
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x03, 0x06, 0x06, 0x04
	smpsVcDecayRate2    0x00, 0x00, 0x0F, 0x00
	smpsVcDecayLevel    0x01, 0x05, 0x03, 0x01
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x0B, 0x0B, 0x08, 0x1A

/* 	Voice 0x01 */
/* 	0x2D */
/* 	0x01, 0x54, 0x30, 0x01, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x12, 0x0E, 0x0A, 0x0A */
/* 	0x00, 0x04, 0x04, 0x03, 	0x2F, 0x2F, 0x2F, 0x2F, 	0x0E, 0x8B, 0x86, 0x86 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x05
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x03, 0x05, 0x00
	smpsVcCoarseFreq    0x01, 0x00, 0x04, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x0A, 0x0A, 0x0E, 0x12
	smpsVcDecayRate2    0x03, 0x04, 0x04, 0x00
	smpsVcDecayLevel    0x02, 0x02, 0x02, 0x02
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x06, 0x06, 0x0B, 0x0E

/* 	Voice 0x02 */
/* 	0x04 */
/* 	0x23, 0x00, 0x52, 0x00, 	0x18, 0x12, 0x1A, 0x12, 	0x08, 0x05, 0x0C, 0x09 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x16, 0x86, 0x28, 0x89 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x00, 0x05, 0x00, 0x02
	smpsVcCoarseFreq    0x00, 0x02, 0x00, 0x03
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x12, 0x1A, 0x12, 0x18
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x09, 0x0C, 0x05, 0x08
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x09, 0x28, 0x06, 0x16

/* 	Voice 0x03 */
/* 	0x12 */
/* 	0x22, 0x30, 0x50, 0x71, 	0x0E, 0x12, 0x11, 0x1A, 	0x00, 0x00, 0x00, 0x00 */
/* 	0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x1A, 0x17, 0x17, 0x86 */
	smpsVcAlgorithm     0x02
	smpsVcFeedback      0x02
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x05, 0x03, 0x02
	smpsVcCoarseFreq    0x01, 0x00, 0x00, 0x02
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1A, 0x11, 0x12, 0x0E
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x00, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x06, 0x17, 0x17, 0x1A

/* 	Voice 0x04 */
/* 	0x04 */
/* 	0x17, 0x03, 0x06, 0x74, 	0x5F, 0x5F, 0x5F, 0x5F, 	0x00, 0x08, 0x00, 0x00 */
/* 	0x00, 0x00, 0x00, 0x0A, 	0x0F, 0xFF, 0x0F, 0x0F, 	0x1C, 0x89, 0x23, 0x88 */
	smpsVcAlgorithm     0x04
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x00, 0x00, 0x01
	smpsVcCoarseFreq    0x04, 0x06, 0x03, 0x07
	smpsVcRateScale     0x01, 0x01, 0x01, 0x01
	smpsVcAttackRate    0x1F, 0x1F, 0x1F, 0x1F
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x08, 0x00
	smpsVcDecayRate2    0x0A, 0x00, 0x00, 0x00
	smpsVcDecayLevel    0x00, 0x00, 0x0F, 0x00
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x08, 0x23, 0x09, 0x1C

/* 	Voice 0x05 */
/* 	0x05 */
/* 	0x71, 0x41, 0x40, 0x72, 	0x12, 0x17, 0x16, 0x1A, 	0x00, 0x00, 0x00, 0x00 */
/* 	0x0C, 0x13, 0x0C, 0x0B, 	0xFF, 0xFF, 0xFF, 0xFF, 	0x10, 0x8A, 0x87, 0x85 */
	smpsVcAlgorithm     0x05
	smpsVcFeedback      0x00
	smpsVcUnusedBits    0x00
	smpsVcDetune        0x07, 0x04, 0x04, 0x07
	smpsVcCoarseFreq    0x02, 0x00, 0x01, 0x01
	smpsVcRateScale     0x00, 0x00, 0x00, 0x00
	smpsVcAttackRate    0x1A, 0x16, 0x17, 0x12
	smpsVcAmpMod        0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate1    0x00, 0x00, 0x00, 0x00
	smpsVcDecayRate2    0x0B, 0x0C, 0x13, 0x0C
	smpsVcDecayLevel    0x0F, 0x0F, 0x0F, 0x0F
	smpsVcReleaseRate   0x0F, 0x0F, 0x0F, 0x0F
	smpsVcTotalLevel    0x05, 0x07, 0x0A, 0x10

