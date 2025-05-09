/* ===========================================================================*/
/* Created by Flamewing, based on S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)*/
/* ===========================================================================*/
/* Permission to use, copy, modify, and/or distribute this software for any*/
/* purpose with or without fee is hereby granted.*/
//
/* THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES*/
/* WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF*/
/* MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR*/
/* ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES*/
/* WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN*/
/* ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT*/
/* OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.*/
/* ===========================================================================*/

SMPS2ASMVer	= 1

/* PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.*/
psgdelta	EQU 12
/* 75b*/
/* Standard Octave Pitch Equates*/
	enum smpsPitch10lo=0x88,smpsPitch09lo=0x94,smpsPitch08lo=0xA0,smpsPitch07lo=0xAC,smpsPitch06lo=0xB8
	enum smpsPitch05lo=0xC4,smpsPitch04lo=0xD0,smpsPitch03lo=0xDC,smpsPitch02lo=0xE8,smpsPitch01lo=0xF4
	enum smpsPitch00=0x00,smpsPitch01hi=0x0C,smpsPitch02hi=0x18,smpsPitch03hi=0x24,smpsPitch04hi=0x30
	enum smpsPitch05hi=0x3C,smpsPitch06hi=0x48,smpsPitch07hi=0x54,smpsPitch08hi=0x60,smpsPitch09hi=0x6C
	enum smpsPitch10hi=0x78
/* 75b*/
/* Note Equates*/
	enum nRst=0x80+0,nC0,nCs0,nD0,nEb0,nE0,nF0,nFs0,nG0,nAb0,nA0,nBb0,nB0,nC1,nCs1,nD1
	enum nEb1=nD1+1,nE1,nF1,nFs1,nG1,nAb1,nA1,nBb1,nB1,nC2,nCs2,nD2,nEb2,nE2,nF2,nFs2
	enum nG2=nFs2+1,nAb2,nA2,nBb2,nB2,nC3,nCs3,nD3,nEb3,nE3,nF3,nFs3,nG3,nAb3,nA3,nBb3
	enum nB3=nBb3+1,nC4,nCs4,nD4,nEb4,nE4,nF4,nFs4,nG4,nAb4,nA4,nBb4,nB4,nC5,nCs5,nD5
	enum nEb5=nD5+1,nE5,nF5,nFs5,nG5,nAb5,nA5,nBb5,nB5,nC6,nCs6,nD6,nEb6,nE6,nF6,nFs6
	enum nG6=nFs6+1,nAb6,nA6,nBb6,nB6,nC7,nCs7,nD7,nEb7,nE7,nF7,nFs7,nG7,nAb7,nA7,nBb7
/* SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.*/
/* nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.*/
/* The use of psgdelta is intended to undo the effects of PSGPitchConvert*/
/* and ensure that the ending note is indeed the maximum PSG frequency.*/
	.if SonicDriverVer<=2
nMaxPSG				EQU nA5
nMaxPSG1			EQU nA5+psgdelta
nMaxPSG2			EQU nA5+psgdelta
	.else
nMaxPSG				EQU nBb6-psgdelta
nMaxPSG1			EQU nBb6
nMaxPSG2			EQU nB6
	.endif
/* 75b*/
/* PSG volume envelope equates*/
	.if SonicDriverVer==1
		enum fTone_01=0x01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
		enum fTone_07=fTone_06+1,fTone_08,fTone_09
	else.if SonicDriverVer==2
		enum fTone_01=0x01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
		enum fTone_07=fTone_06+1,fTone_08,fTone_09,fTone_0A,fTone_0B,fTone_0C
		enum fTone_0D=fTone_0C+1
	.else
		enum sTone_01=0x01,sTone_02,sTone_03,sTone_04,sTone_05,sTone_06
		enum sTone_07=sTone_06+1,sTone_08,sTone_09,sTone_0A,sTone_0B,sTone_0C
		enum sTone_0D=sTone_0C+1,sTone_0E,sTone_0F,sTone_10,sTone_11,sTone_12
		enum sTone_13=sTone_12+1,sTone_14,sTone_15,sTone_16,sTone_17,sTone_18
		enum sTone_19=sTone_18+1,sTone_1A,sTone_1B,sTone_1C,sTone_1D,sTone_1E
		enum sTone_1F=sTone_1E+1,sTone_20,sTone_21,sTone_22,sTone_23,sTone_24
		enum sTone_25=sTone_24+1,sTone_26,sTone_27
		/* For conversions:*/
		.if SonicDriverVer>=5
			enum fTone_01=0x28,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
			enum fTone_07=fTone_06+1,fTone_08,fTone_09,fTone_0A,fTone_0B,fTone_0C
			enum fTone_0D=fTone_0C+1
		.endif
	.endif
/* 75b*/
/* DAC Equates*/
	.if SonicDriverVer==1
		enum dKick=0x81,dSnare,dTimpani
		enum dHiTimpani=0x88,dMidTimpani,dLowTimpani,dVLowTimpani
	else.if SonicDriverVer==2
		enum dKick=0x81,dSnare,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani,dMidTimpani
		enum dLowTimpani=dMidTimpani+1,dVLowTimpani,dMidTom,dLowTom,dFloorTom,dHiClap
		enum dMidClap=dHiClap+1,dLowClap
	else/*.if SonicDriverVer>=3*/
		.if (use_s3_samples<>0)||(use_sk_samples<>0)||(use_s3d_samples<>0)
			enum dSnareS3=0x81,dHighTom,dMidTomS3,dLowTomS3,dFloorTomS3,dKickS3,dMuffledSnare
			enum dCrashCymbal=dMuffledSnare+1,dRideCymbal,dLowMetalHit,dMetalHit,dHighMetalHit
			enum dHigherMetalHit=dHighMetalHit+1,dMidMetalHit,dClapS3,dElectricHighTom
			enum dElectricMidTom=dElectricHighTom+1,dElectricLowTom,dElectricFloorTom
			enum dTightSnare=dElectricFloorTom+1,dMidpitchSnare,dLooseSnare,dLooserSnare
			enum dHiTimpaniS3=dLooserSnare+1,dLowTimpaniS3,dMidTimpaniS3,dQuickLooseSnare
			enum dClick=dQuickLooseSnare+1,dPowerKick,dQuickGlassCrash
		.endif
		.if (use_s3_samples<>0)||(use_sk_samples<>0)
			enum dGlassCrashSnare=dQuickGlassCrash+1,dGlassCrash,dGlassCrashKick,dQuietGlassCrash
			enum dOddSnareKick=dQuietGlassCrash+1,dKickExtraBass,dComeOn,dDanceSnare,dLooseKick
			enum dModLooseKick=dLooseKick+1,dWoo,dGo,dSnareGo,dPowerTom,dHiWoodBlock,dLowWoodBlock
			enum dHiHitDrum=dLowWoodBlock+1,dLowHitDrum,dMetalCrashHit,dEchoedClapHit
			enum dLowerEchoedClapHit=dEchoedClapHit+1,dHipHopHitKick,dHipHopHitPowerKick
			enum dBassHey=dHipHopHitPowerKick+1,dDanceStyleKick,dHipHopHitKick2,dHipHopHitKick3
			enum dReverseFadingWind=dHipHopHitKick3+1,dScratchS3,dLooseSnareNoise,dPowerKick2
			enum dCrashingNoiseWoo=dPowerKick2+1,dQuickHit,dKickHey,dPowerKickHit
			enum dLowPowerKickHit=dPowerKickHit+1,dLowerPowerKickHit,dLowestPowerKickHit
		.endif
		/* For conversions:*/
		.if (use_s2_samples<>0)
			.if (use_s3_samples<>0)||(use_sk_samples<>0)
				enum dKick=dLowestPowerKickHit+1
			else.if (use_s3d_samples<>0)
				enum dKick=dQuickGlassCrash+1
			.else
				enum dKick=0x81
			.endif
			enum dSnare=dKick+1,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani,dMidTimpani
			enum dLowTimpani=dMidTimpani+1,dVLowTimpani,dMidTom,dLowTom,dFloorTom,dHiClap
			enum dMidClap=dHiClap+1,dLowClap
		.endif
		.if (use_s3d_samples<>0)
			.if (use_s2_samples<>0)
				enum dFinalFightMetalCrash=dLowClap+1,dIntroKick
			else.if (use_s3_samples<>0)||(use_sk_samples<>0)
				enum dFinalFightMetalCrash=dLowestPowerKickHit+1,dIntroKick
			.else
				enum dFinalFightMetalCrash=dQuickGlassCrash+1,dIntroKick
			.endif
		.endif
		.if (use_s3_samples<>0)
			.if (use_s3d_samples<>0)
				enum dEchoedClapHit_S3=dIntroKick+1,dLowerEchoedClapHit_S3
			else.if (use_s2_samples<>0)
				enum dEchoedClapHit_S3=dLowClap+1,dLowerEchoedClapHit_S3
			.else
				enum dEchoedClapHit_S3=dLowestPowerKickHit+1,dLowerEchoedClapHit_S3
			.endif
		.endif
	.endif
/* 75b*/
/* Channel IDs for SFX*/
cPSG1				EQU 0x80
cPSG2				EQU 0xA0
cPSG3				EQU 0xC0
cNoise				EQU 0xE0	/* Not for use in S3/S&K/S3D*/
cFM3				EQU 0x02
cFM4				EQU 0x04
cFM5				EQU 0x05
cFM6				EQU 0x06	/* Only in S3/S&K/S3D, overrides DAC*/
/* 75b*/
/* Conversion macros and functions*/

conv0To256  function n,((n==0)<<8)|n
s2TempotoS1 function n,(((768-n)>>1)/(256-n))&0xFF
s2TempotoS3 function n,(0x100-((n==0)|n))&0xFF
s1TempotoS2 function n,((((conv0To256(n)-1)<<8)+(conv0To256(n)>>1))/conv0To256(n))&0xFF
s1TempotoS3 function n,s2TempotoS3(s1TempotoS2(n))
s3TempotoS1 function n,s2TempotoS1(s2TempotoS3(n))
s3TempotoS2 function n,s2TempotoS3(n)

.macro convertMainTempoMod mod
	.if ((SourceDriver>=3)&&(SonicDriverVer>=3))||(SonicDriverVer==SourceDriver)
		.byte	mod
	else.if SourceDriver==1
		.if mod==1
			fatal "Invalid main tempo of 1 in song from Sonic 1"
		.endif
		.if SonicDriverVer==2
			.byte	s1TempotoS2(mod)
		else/*.if SonicDriverVer>=3*/
			.byte	s1TempotoS3(mod)
		.endif
	else.if SourceDriver==2
		.if mod==0
			fatal "Invalid main tempo of 0 in song from Sonic 2"
		.endif
		.if SonicDriverVer==1
			.byte	s2TempotoS1(mod)
		else/*.if SonicDriverVer>=3*/
			.byte	s2TempotoS3(mod)
		.endif
	else/*.if SourceDriver>=3*/
		.if mod==0
			message "Performing approximate conversion of Sonic 3 main tempo modifier of 0"
		.endif
		.if SonicDriverVer==1
			.byte	s3TempotoS1(mod)
		else/*.if SonicDriverVer==2*/
			.byte	s3TempotoS2(mod)
		.endif
	.endif
	.endm

/* PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.*/
.macro PSGPitchConvert pitch
	.if (SonicDriverVer>=3)&&(SourceDriver<3)
		.byte	(pitch+psgdelta)&0xFF
	else.if (SonicDriverVer<3)&&(SourceDriver>=3)
		.byte	(pitch-psgdelta)&0xFF
	.else
		.byte	pitch
	.endif
	.endm

.macro CheckedChannelPointer loc
	.if SonicDriverVer<>1
		.word	z80_ptr(loc)
	.else
		.if MOMPASS==2
			.if loc<songStart
				fatal "Tracks for Sonic 1 songs must come after the start of the song"
			.endif
		.endif
		.word	loc-songStart
	.endif
	.endm
/* 75b*/
/* Header Macros*/
.macro smpsHeaderStartSong ver, sourcesmps2asmver

SourceDriver set ver

	.if ("sourcesmps2asmver"<>"")
SourceSMPS2ASM set sourcesmps2asmver
	.else
SourceSMPS2ASM set 0
	.endif

songStart set *

	.if MOMPASS==2
	.if SMPS2ASMVer < SourceSMPS2ASM
	message "Song at 0x\{songStart} was made for a newer version of SMPS2ASM (this is version \{SMPS2ASMVer}, but song wants at least version \{SourceSMPS2ASM})."
	.endif
	.endif

	.endm

.macro smpsHeaderVoiceNull 	.if songStart<>*
		fatal "Missing smpsHeaderStartSong"
	.endif
	.word	0x0000
	.endm

/* Header 1b Set up Voice Location*/
/* Common to music and SFX*/
.macro smpsHeaderVoice loc
	.if songStart<>*
		fatal "Missing smpsHeaderStartSong"
	.endif
	.if SonicDriverVer<>1
		.word	z80_ptr(loc)
	.else
		.if MOMPASS==2
		.if loc<songStart
			fatal "Voice banks for Sonic 1 songs must come after the song"
		.endif
		.endif
		.word	loc-songStart
	.endif
	.endm

/* Header 1b Set up Voice Location as S3's Universal Voice Bank*/
/* Common to music and SFX*/
.macro smpsHeaderVoiceUVB 	.if songStart<>*
		fatal "Missing smpsHeaderStartSong"
	.endif
	.if SonicDriverVer>=5
		.word	z80_ptr(z80_UniVoiceBank)
	else.if SonicDriverVer>=3
		.word	little_endian(z80_UniVoiceBank)
	.else
		fatal "Universal Voice Bank does not exist in Sonic 1 or Sonic 2 drivers"
	.endif
	.endm

/* Header macros for music (not for SFX)*/
/* Header 1b Set up Channel Usage*/
.macro smpsHeaderChan fm,psg
	.byte	fm,psg
	.endm

/* Header 1b Set up Tempo*/
.macro smpsHeaderTempo div,mod
	.byte	div
	convertMainTempoMod mod
	.endm

/* Header 1b Set up DAC Channel*/
.macro smpsHeaderDAC loc,pitch,vol
	CheckedChannelPointer loc
	.if ("pitch"<>"")
		.byte	pitch
		.if ("vol"<>"")
			.byte	vol
		.else
			.byte	0x00
		.endif
	.else
		.word	0x00
	.endif
	.endm

/* Header 1b Set up FM Channel*/
.macro smpsHeaderFM loc,pitch,vol
	CheckedChannelPointer loc
	.byte	pitch,vol
	.endm

/* Header 1b Set up PSG Channel*/
.macro smpsHeaderPSG loc,pitch,vol,mod,voice
	CheckedChannelPointer loc
	PSGPitchConvert pitch
	.byte	vol,mod,voice
	.endm

/* Header macros for SFX (not for music)*/
/* Header 1b Set up Tempo*/
.macro smpsHeaderTempoSFX div
	.byte	div
	.endm

/* Header 1b Set up Channel Usage*/
.macro smpsHeaderChanSFX chan
	.byte	chan
	.endm

/* Header 1b Set up FM Channel*/
.macro smpsHeaderSFXChannel chanid,loc,pitch,vol
	.if (SonicDriverVer>=3)&&(chanid==cNoise)
		fatal "Using channel ID of cNoise (0xE0) in Sonic 3 driver is dangerous. Fix the song so that it turns into a noise channel instead."
	else.if (SonicDriverVer<3)&&(chanid==cFM6)
		fatal "Using channel ID of FM6 (0x06) in Sonic 1 or Sonic 2 drivers is unsupported. Change it to another channel."
	.endif
	.byte	0x80,chanid
	CheckedChannelPointer loc
	.if (chanid&0x80)<>0
		PSGPitchConvert pitch
	.else
		.byte	pitch
	.endif
	.byte	vol
	.endm
/* 75b*/
/* Co-ord Flag Macros and Equates*/
/* E0xx 1b Panning, AMS, FMS*/
.macro smpsPan direction,amsfms
panNone set 0x00
panRight set 0x40
panLeft set 0x80
panCentre set 0xC0
panCenter set 0xC0 /* silly Americans :U*/
	.byte 0xE0,direction+amsfms
	.endm

/* E1xx 1b Set channel detune to val*/
.macro smpsDetune val
	.byte	0xE1,val
	.endm

/* E2xx 1b Useless*/
.macro smpsNop val
	.if SonicDriverVer<3
		.byte	0xE2,val
	.endif
	.endm

/* Return (used after smpsCall)*/
.macro smpsReturn val
	.if SonicDriverVer>=3
		.byte	0xF9
	.else
		.byte	0xE3
	.endif
	.endm

/* Fade in previous song (ie. 1-Up)*/
.macro smpsFade val
	.if SonicDriverVer>=3
		.byte	0xE2
		.if ("val"<>"")
			.byte	val
		.else
			.byte	0xFF
		.endif
		.if SourceDriver<3
			smpsStop
		.endif
	else.if (SourceDriver>=3) && ("val"<>"") && ("val"<>"0xFF")
		/* This is one of those weird S3+ "fades" that we don't need*/
	.else
		.byte	0xE4
	.endif
	.endm

/* E5xx 1b Set channel tempo divider to xx*/
.macro smpsChanTempoDiv val
	.if SonicDriverVer>=5
		/* New flag unique to Flamewing's modified S&K driver*/
		.byte	0xFF,0x08,val
	else.if SonicDriverVer==3
		fatal "Coord. Flag to set tempo divider of a single channel does not exist in S3 driver. Use Flamewing's modified S&K sound driver instead."
	.else
		.byte	0xE5,val
	.endif
	.endm

/* E6xx 1b Alter Volume by xx*/
.macro smpsAlterVol val
	.byte	0xE6,val
	.endm

/* E7 1b Prevent attack of next note*/
smpsNoAttack	EQU 0xE7

/* E8xx 1b Set note fill to xx*/
.macro smpsNoteFill val
	.if (SonicDriverVer>=5)&&(SourceDriver<3)
		/* Unique to Flamewing's modified driver*/
		.byte	0xFF,0x0A,val
	.else
		.if (SonicDriverVer>=3)&&(SourceDriver<3)
			message "Note fill will not work as intended unless you divide the fill value by the tempo divider or complain to Flamewing to add an appropriate coordination flag for it."
		else.if (SonicDriverVer<3)&&(SourceDriver>=3)
			message "Note fill will not work as intended unless you multiply the fill value by the tempo divider or complain to Flamewing to add an appropriate coordination flag for it."
		.endif
		.byte	0xE8,val
	.endif
	.endm

/* Add xx to channel pitch*/
.macro smpsChangeTransposition val
	.if SonicDriverVer>=3
		.byte	0xFB,val
	.else
		.byte	0xE9,val
	.endif
	.endm

/* Set music tempo modifier to xx*/
.macro smpsSetTempoMod mod
	.if SonicDriverVer>=3
		.byte	0xFF,0x00
	.else
		.byte	0xEA
	.endif
	convertMainTempoMod mod
	.endm

/* Set music tempo divider to xx*/
.macro smpsSetTempoDiv val
	.if SonicDriverVer>=3
		.byte	0xFF,0x04,val
	.else
		.byte	0xEB,val
	.endif
	.endm

/* ECxx 1b Set Volume to xx*/
.macro smpsSetVol val
	.if SonicDriverVer>=3
		.byte	0xE4,val
	.else
		fatal "Coord. Flag to set volume (instead of volume attenuation) does not exist in S1 or S2 drivers. Complain to Flamewing to add it."
	.endif
	.endm

/* Works on all drivers*/
.macro smpsPSGAlterVol vol
	.byte	0xEC,vol
	.endm

/* Clears pushing sound flag in S1*/
.macro smpsClearPush 	.if SonicDriverVer==1
		.byte	0xED
	.else
		fatal "Coord. Flag to clear S1 push block flag does not exist in S2 or S3 drivers. Complain to Flamewing to add it."
	.endif
	.endm

/* Stops special SFX (S1 only) and restarts overridden music track*/
.macro smpsStopSpecial 	.if SonicDriverVer==1
		.byte	0xEE
	.else
		message "Coord. Flag to stop special SFX does not exist in S2 or S3 drivers. Complain to Flamewing to add it. With adequate caution, smpsStop can do this job."
		smpsStop
	.endif
	.endm

/* EFxx[yy] 1b Set Voice of FM channel to xx// xx < 0 means yy present*/
.macro smpsFMvoice voice,songID
	.if (SonicDriverVer>=3)&&("songID"<>"")
		.byte	0xEF,voice|0x80,songID+0x81
	.else
		.byte	0xEF,voice
	.endif
	.endm

/* F0wwxxyyzz 1b Modulation 1b ww: wait time 1b xx: modulation speed 1b yy: change per step 1b zz: number of steps*/
.macro smpsModSet wait,speed,change,step
	.byte	0xF0
	.if (SonicDriverVer>=3)&&(SourceDriver<3)
		.byte	wait+1,speed,change,((step+1) * speed) & 0xFF
	else.if (SonicDriverVer<3)&&(SourceDriver>=3)
		.byte	wait-1,speed,change,conv0To256(step)/conv0To256(speed)-1
	.else
		.byte	wait,speed,change,step
	.endif
	/*.byte	speed,change,step*/
	.endm

/* Turn on Modulation*/
.macro smpsModOn type
	.if SonicDriverVer>=3
		.if "type"<>""
			.byte	0xF4,type
		.else
			.byte	0xF4,0x80
		.endif
	.else
		.byte	0xF1
	.endif
	.endm

/* F2 1b End of channel*/
.macro smpsStop 	.byte	0xF2
	.endm

/* F3xx 1b PSG waveform to xx*/
.macro smpsPSGform form
	.byte	0xF3,form
	.endm

/* Turn off Modulation*/
.macro smpsModOff 	.if SonicDriverVer>=3
		.byte	0xFA
	.else
		.byte	0xF4
	.endif
	.endm

/* F5xx 1b PSG voice to xx*/
.macro smpsPSGvoice voice
	.byte	0xF5,voice
	.endm

/* F6xxxx 1b Jump to xxxx*/
.macro smpsJump loc
	.byte	0xF6
	.if SonicDriverVer<>1
		.word	z80_ptr(loc)
	.else
		.word	loc-*-1
	.endif
	.endm

/* F7xxyyzzzz 1b Loop back to zzzz yy times, xx being the loop index for loop recursion fixing*/
.macro smpsLoop index,loops,loc
	.byte	0xF7
	.byte	index,loops
	.if SonicDriverVer<>1
		.word	z80_ptr(loc)
	.else
		.word	loc-*-1
	.endif
	.endm

/* F8xxxx 1b Call pattern at xxxx, saving return point*/
.macro smpsCall loc
	.byte	0xF8
	.if SonicDriverVer<>1
		.word	z80_ptr(loc)
	.else
		.word	loc-*-1
	.endif
	.endm
/* 75b*/
/* Alter Volume*/
.macro smpsFMAlterVol val1,val2
	.if (SonicDriverVer>=3)&&("val2"<>"")
		.byte	0xE5,val1,val2
	.else
		.byte	0xE6,val1
	.endif
	.endm

/* S3/S&K/S3D-only coordination flags*/
	.if SonicDriverVer>=3
/* Silences FM channel then stops as per smpsStop*/
.macro smpsStopFM 	.byte	0xE3
	.endm

/* Spindash Rev*/
.macro smpsSpindashRev 	.byte	0xE9
	.endm

.macro smpsPlayDACSample sample
	.byte	0xEA,(sample&0x7F)
	.endm

.macro smpsConditionalJump index,loc
	.byte	0xEB
	.byte	index
	.word	z80_ptr(loc)
	.endm

/* Set note values to xx-0x40*/
.macro smpsSetNote val
	.byte	0xED,val
	.endm

.macro smpsFMICommand reg,val
	.byte	0xEE,reg,val
	.endm

/* Set Modulation*/
.macro smpsModChange2 fmmod,psgmod
	.byte	0xF1,fmmod,psgmod
	.endm

/* Set Modulation*/
.macro smpsModChange val
	.byte	0xF4,val
	.endm

/* FCxxxx 1b Jump to xxxx*/
.macro smpsContinuousLoop loc
	.byte	0xFC
	.word	z80_ptr(loc)
	.endm

.macro smpsAlternateSMPS flag
	.byte	0xFD,flag
	.endm

.macro smpsFM3SpecialMode in%d1,in%d2,in%d3,in%d4
	.byte	0xFE,in%d1,in%d2,in%d3,in%d4
	.endm

.macro smpsPlaySound index
	.if SonicDriverVer>=5
		message "smpsPlaySound only plays SFX in Flamedriver/* use smpsPlayMusic to play music or fade effects."*/
	.endif
	.byte	0xFF,0x01,index
	.endm

.macro smpsHaltMusic flag
	.byte	0xFF,0x02,flag
	.endm

.macro smpsCopyData data,len
	fatal "Coord. Flag to copy data should not be used. Complain to Flamewing .if any music uses it."
	.byte	0xFF,0x03
	.word	little_endian(data)
	.byte	len
	.endm

.macro smpsSSGEG op1,op2,op3,op4
	.byte	0xFF,0x05,op1,op3,op2,op4
	.endm

.macro smpsFMVolEnv tone,mask
	.byte	0xFF,0x06,tone,mask
	.endm

.macro smpsResetSpindashRev val
	.byte	0xFF,0x07
	.endm

	/* Flags ported from other drivers.*/
	.if SonicDriverVer>=5
.macro smpsChanFMCommand reg,val
	.byte	0xFF,0x09,reg,val
	.endm

.macro smpsPitchSlide enable
	.byte	0xFF,0x0B,enable
	.endm

.macro smpsSetLFO enable,amsfms
	.byte	0xFF,0x0C,enable,amsfms
	.endm

.macro smpsPlayMusic index
	.byte	0xFF,0x0D,index
	.endm
	.endif

	.endif
/* 75b*/
/* S1/S2 only coordination flag*/
/* Sets D1L to maximum volume (minimum attenuation) and RR to maximum for operators 3 and 4 of FM1*/
.macro smpsMaxRelRate 	.if SonicDriverVer>=3
		/* Emulate it in S3/S&K/S3D driver*/
		smpsFMICommand 0x88,0x0F
		smpsFMICommand 0x8C,0x0F
	.else
		.byte	0xF9
	.endif
	.endm
/* 75b*/
/* Backwards compatibility*/
.macro smpsAlterNote 	smpsDetune	ALLARGS
	.endm

.macro smpsAlterPitch 	smpsChangeTransposition	ALLARGS
	.endm

.macro smpsFMFlutter 	smpsFMVolEnv	ALLARGS
	.endm

.macro smpsWeirdD1LRR 	smpsMaxRelRate ALLARGS
	.endm

.macro smpsSetvoice 	smpsFMvoice ALLARGS
	.endm
/* 75b*/
/* Macros for FM instruments*/
/* Voices 1b Feedback*/
.macro smpsVcFeedback val
vcFeedback set val
	.endm

/* Voices 1b Algorithm*/
.macro smpsVcAlgorithm val
vcAlgorithm set val
	.endm

.macro smpsVcUnusedBits val,d1r1,d1r2,d1r3,d1r4
vcUnusedBits set val
	.if ("d1r1"<>"")&&("d1r2"<>"")&&("d1r3"<>"")&&("d1r4"<>"")
vcD1R1Unk set d1r1<<5
vcD1R2Unk set d1r2<<5
vcD1R3Unk set d1r3<<5
vcD1R4Unk set d1r4<<5
	.else
vcD1R1Unk set 0
vcD1R2Unk set 0
vcD1R3Unk set 0
vcD1R4Unk set 0
	.endif
	.endm

/* Voices 1b Detune*/
.macro smpsVcDetune op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	.endm

/* Voices 1b Coarse-Frequency*/
.macro smpsVcCoarseFreq op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	.endm

/* Voices 1b Rate Scale*/
.macro smpsVcRateScale op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	.endm

/* Voices 1b Attack Rate*/
.macro smpsVcAttackRate op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	.endm

/* Voices 1b Amplitude Modulation*/
/* The original SMPS2ASM erroneously assumed the 6th and 7th bits*/
/* were the Amplitude Modulation.*/
/* According to several docs, however, it's actually the high bit.*/
.macro smpsVcAmpMod op1,op2,op3,op4
	.if SourceSMPS2ASM==0
vcAM1 set op1<<5
vcAM2 set op2<<5
vcAM3 set op3<<5
vcAM4 set op4<<5
	.else
vcAM1 set op1<<7
vcAM2 set op2<<7
vcAM3 set op3<<7
vcAM4 set op4<<7
	.endif
	.endm

/* Voices 1b First Decay Rate*/
.macro smpsVcDecayRate1 op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	.endm

/* Voices 1b Second Decay Rate*/
.macro smpsVcDecayRate2 op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	.endm

/* Voices 1b Decay Level*/
.macro smpsVcDecayLevel op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	.endm

/* Voices 1b Release Rate*/
.macro smpsVcReleaseRate op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	.endm

/* Voices 1b Total Level*/
/* The original SMPS2ASM decides TL high bits automatically,*/
/* but later versions leave it up to the user.*/
/* Alternatively, .if we're converting an SMPS 68k song to SMPS Z80,*/
/* then we *want* the TL bits to match the algorithm, because SMPS 68k*/
/* prefers the algorithm over the TL bits, ignoring the latter, while*/
/* SMPS Z80 does the opposite.*/
/* Unfortunately, there's nothing we can do .if we're trying to convert*/
/* an SMPS Z80 song to SMPS 68k. It will ignore the bits no matter*/
/* what we do, so we just print a warning.*/
.macro smpsVcTotalLevel op1,op2,op3,op4
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	.byte	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
/*   0     1     2     3     4     5     6     7*/
/*%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111*/
	.if SourceSMPS2ASM==0
vcTLMask4 set ((vcAlgorithm==7)<<7)
vcTLMask3 set ((vcAlgorithm>=4)<<7)
vcTLMask2 set ((vcAlgorithm>=5)<<7)
vcTLMask1 set 0x80
	.else
vcTLMask4 set 0
vcTLMask3 set 0
vcTLMask2 set 0
vcTLMask1 set 0
	.endif

	.if (SonicDriverVer>=3)&&(SourceDriver<3)
vcTLMask4 set ((vcAlgorithm==7)<<7)
vcTLMask3 set ((vcAlgorithm>=4)<<7)
vcTLMask2 set ((vcAlgorithm>=5)<<7)
vcTLMask1 set 0x80
vcTL1 set vcTL1&0x7F
vcTL2 set vcTL2&0x7F
vcTL3 set vcTL3&0x7F
vcTL4 set vcTL4&0x7F
	else.if (SonicDriverVer<3)&&(SourceDriver>=3)&&(((vcTL1&0x80)<>0x80)||((vcTL2&0x80)<>((vcAlgorithm>=5)<<7))||((vcTL3&0x80)<>((vcAlgorithm>=4)<<7))||((vcTL4&0x80)<>((vcAlgorithm==7)<<7)))
		.if MOMPASS==2
			message "Voice at 0x\{*} has TL bits that do not match its algorithm setting. This voice will not work in S1/S2 drivers."
		.endif
	.endif

	.if SonicDriverVer==2
		.byte	(vcDT4<<4)+vcCF4       ,(vcDT2<<4)+vcCF2       ,(vcDT3<<4)+vcCF3       ,(vcDT1<<4)+vcCF1
		.byte	(vcRS4<<6)+vcAR4       ,(vcRS2<<6)+vcAR2       ,(vcRS3<<6)+vcAR3       ,(vcRS1<<6)+vcAR1
		.byte	vcAM4|vcD1R4|vcD1R4Unk ,vcAM2|vcD1R2|vcD1R2Unk ,vcAM3|vcD1R3|vcD1R3Unk ,vcAM1|vcD1R1|vcD1R1Unk
		.byte	vcD2R4                 ,vcD2R2                 ,vcD2R3                 ,vcD2R1
		.byte	(vcDL4<<4)+vcRR4       ,(vcDL2<<4)+vcRR2       ,(vcDL3<<4)+vcRR3       ,(vcDL1<<4)+vcRR1
		.byte	vcTL4|vcTLMask4        ,vcTL2|vcTLMask2        ,vcTL3|vcTLMask3        ,vcTL1|vcTLMask1
	.else
		.byte	(vcDT4<<4)+vcCF4       ,(vcDT3<<4)+vcCF3       ,(vcDT2<<4)+vcCF2       ,(vcDT1<<4)+vcCF1
		.byte	(vcRS4<<6)+vcAR4       ,(vcRS3<<6)+vcAR3       ,(vcRS2<<6)+vcAR2       ,(vcRS1<<6)+vcAR1
		.byte	vcAM4|vcD1R4|vcD1R4Unk ,vcAM3|vcD1R3|vcD1R3Unk ,vcAM2|vcD1R2|vcD1R2Unk ,vcAM1|vcD1R1|vcD1R1Unk
		.byte	vcD2R4                 ,vcD2R3                 ,vcD2R2                 ,vcD2R1
		.byte	(vcDL4<<4)+vcRR4       ,(vcDL3<<4)+vcRR3       ,(vcDL2<<4)+vcRR2       ,(vcDL1<<4)+vcRR1
		.byte	vcTL4|vcTLMask4        ,vcTL3|vcTLMask3        ,vcTL2|vcTLMask2        ,vcTL1|vcTLMask1
	.endif
	.endm

