/* ═══════════════════════════════════════════════════════════════════════════*/



LockOnROM_Start:.space 0x11
S3_Level_Solid_Data EQU 0x260000

byte_200011:	.space 0xAC
byte_2000BD:	.space 0x43
LockonHeader:	.space 0x14
SSMagic_TestLoc_200114:.space 6
SSMagic_TestLoc_20011A:.space 2
LockonDate:	.space 0x34
SSMagic_TestLoc_200150:.space 0x19
		.space 0x17
LockonSerialNumber:.space 0x24
SSMagic_TestLoc_2001A4:.space 0x51
		.space 0x8C
byte_200281:	.space 0xAC
byte_20032D:	.space 0x94EB
Pal_Competition1:.space 0xA8
Map_CompetitionObject:.space 0x870
MapUnc_CompetitionNumbers:.space 0x42E


Pal_Competition2:	.space 0x20
Pal_Competition3:	.space 0x40
Pal_Competition4:	.space 0x126
Map_CompetitionSelect:.space 0x6A0

Pal_CompetitionResults:.space 0xDE
MapEni_CompetitionResultsLED:.space 0x1A
MapUnc_CompetitionResultsLetters:.space 0x28
MapUnc_CompetitionResultsDividers:.space 0x50
MapUnc_CompetitionResultsTOTAL:.space 0x14
MapUnc_ResultsWin:	.space 8
MapUnc_ResultsLose:	.space 8
MapUnc_ResultsTie:	.space 0x354
Pal_CompetitionTimeAttack:	.space 0xBA
MapUnc_CompetitionLAPNum:.space 0x64

MapUnc_CompetitionRECORDS:.space 0x1C

MapUnc_Competition1st2nd3rd:.space 0x44

MapUnc_CompetitionAZURELAKE:.space 0x34

MapUnc_CompetitionBALLOONPARK:.space 0x34

MapUnc_CompetitionCHROMEGADGET:.space 0x34

MapUnc_CompetitionDESERTPALACE:.space 0x34

MapUnc_CompetitionENDLESSMINE:.space 0x1326


ArtKos_SaveScreenS3Zone:.space 0xFC08
Map_AIZ1Tree:	.space 0x42
Map_AIZ1ZiplinePeg:	.space 0x9A0
Map_BreakableBar:.space 0x280

Map_HCZBlock:	.space 0xC92

Map_AIZRock:	.space 0x88

Map_AIZRock2:	.space 0x88

Map_EMZRock:	.space 0x8DC

Map_AIZCollapsingPlatform:.space 0xE4

Map_AIZCollapsingPlatform2:.space 0xEA

Map_LBZCollapsingBridge:.space 0xFC

Map_LBZCollapsingLedge:.space 0x88

Map_HCZCollapsingBridge:.space 0x44E

Map_MGZCollapsingBridge:.space 0x48A

Map_ICZCollapsingBridge:.space 0xA60

Map_AIZBreakableWall:.space 0x1C6

Map_MGZBreakableWall:.space 0xC0

Map_HCZBreakableWall:.space 0x86

Map_LBZBreakableWall:.space 0x113C

Map_AIZIntroWaves:	.space 0x3750
Map_LBZUnusedElevator:	.space 0xBE
Map_LBZExplodingTrigger:.space 0x1E0

Map_MGZDashTrigger:.space 0x25E

Map_LBZTriggerBridge:.space 0x566

Map_LBZPlayerLauncher:.space 0x102

Map_LBZFlameThrower:.space 0xD4C
Map_LBZCupElevator:.space 0x346

Map_LBZUnusedUnknown:	.space 0x374

Map_LBZPipePlug:.space 0x136E

Map_LBZSpinLauncher:.space 0x1FA

Map_LBZLoweringGrapple:.space 0x47A

Map_LBZSmashingSpikes:.space 0x10

Map_MGZSmashingPillar:.space 0x14E

Map_LBZGateLaser:.space 0xE10

Map_LBZTubeElevator:.space 0x310

Map_AIZDisappearingFloor:.space 0xC

Map_AIZDisappearingFloor2:	.space 0x6A0
Map_AIZCorkFloor:.space 0x74

Map_AIZCorkFloor2:.space 0x74

Map_CNZCorkFloor:.space 0x98

Map_ICZCorkFloor:.space 0x208

Map_LBZCorkFloor:.space 0x428

Map_AIZFlippingBridge:.space 0xB10

Map_AIZFallingLog2:.space 0x10

Map_AIZFallingLog:.space 0x10

Map_AIZFallingLogSplash2:	.space 0x70
Map_AIZFallingLogSplash:	.space 0x240
Map_AIZSpikedLog:.space 0x7FC

Map_AIZForegroundPlant:.space 0x42E

Map_Button2:	.space 0x30

Map_CNZButton:	.space 0x30

Map_2PButton:	.space 0x2892

Map_HCZWaterRush:	.space 0x160
Map_HCZWaterRushBlock:	.space 0x6A4

Map_HCZWaterWall:.space 0xFE

Map_HCZWaterWallDebris:	.space 0x49C

Map_HCZFan:	.space 0x6E

Map_HCZLargeFan:.space 0x208

Map_CGZFan:	.space 0x378

Map_HCZHandLauncher:.space 0x9C6

Map_HCZConveyorSpike:.space 0x1A4

Map_CNZBalloon:	.space 0x530

Map_CNZCannon:	.space 0x2AA

Map_CNZRisingPlatform:.space 0xF0

Map_CNZTrapDoor:.space 0x86

Map_CNZLightBulb:.space 0x1BE

Map_CNZHoverFan:.space 0x7A0

Map_CNZCylinder:.space 0x33E

Map_HCZSpinningColumn:.space 0x7E0

Map_Bumper:	.space 0x20

Map_2PBumper:	.space 0x102A

Map_MGZSwingingPlatform:.space 0x25A

Map_MGZSwingingSpikeBall:.space 0x2A0

Map_MGZHeadTrigger:.space 0x1A0

Map_MGZTriggerPlatform:.space 0x1E6

Map_MGZMovingSpikePlatform:.space 0x528

Map_MGZPulley:	.space 0x388E

Map_HCZWaterDrop:.space 0x312

Map_HCZWaterSplash:.space 0x1A

Map_HCZWaterSplash2:	.space 0x29C2

Comp_ScreenInit:.space 0x4E
Comp_ScreenEvent:.space 0x22
CGZ_ScreenEvent:.space 0x20
ALZ_BackgroundInit:.space 6
BPZ_BackgroundInit:	.space 6
DPZ_BackgroundInit:.space 6
CGZ_BackgroundInit:.space 0x38
EMZ_BackgroundInit:.space 0x28
ALZ_BackgroundEvent:.space 0xA
BPZ_BackgroundEvent:.space 0xA
CGZ_BackgroundEvent:.space 0xA
EMZ_BackgroundEvent:.space 0x3A
DPZ_BackgroundEvent:.space 0x400
AIZ_TreeReveal:	.space 0xB4
AIZ_TreeRevealArray:	.space 0x388
AIZ1_IntroDeform:	.space 0x6C
AIZ1_Deform:	.space 0x96
AIZ1_ApplyDeformWater:	.space 0x7E
AIZ1_FireRise:	.space 0x28
AIZTrans_WavyFlame:	.space 0x7C
AIZ1_IntroDrawArray:	.space 0x14
AIZ1_IntroDeformArray:	.space 0x4A
AIZ1_BGDrawArray:	.space 0x3D2
AIZ2_Deform:	.space 0x5A
AIZ2_ApplyDeform:	.space 0x9DA
Pal_AIZBattleship:	.space 0x20
Pal_AIZBossSmall:	.space 0x1C
AIZBattleShip_BobbingMotion:	.space 0x10
AIZBattleship_BombScript:	.space 0x56
AIZBombExplodeDat:	.space 0x40
AIZMakeTreeScript:	.space 0x46
Map_AIZShipPropeller:	.space 0x28
Ani_AIZShipPropeller:	.space 8
Map_AIZ2BombExplode:	.space 0x78

Ani_AIZ2BombExplode:	.space 0x1E
Map_AIZ2BGTree:	.space 0x1C
Map_AIZ2BossSmall:	.space 0x32C
HCZ1_BGDeformArray:	.space 0x242
HCZ2_BGDeformArray:	.space 0x2E
HCZ2_BGDeformIndex:	.space 0x170
MGZ1_Deform:	.space 0x88
MGZ1_BGDeformArray:	.space 0x560
MGZ2_QuakeEventArray:	.space 0x24
MGZ2_ChunkEventArray:	.space 0x24
MGZ2_ScreenRedrawArray:	.space 0x5C
MGZ2_ChunkReplaceArray:	.space 0x60
MGZ2_CollapseScrollDelay:	.space 0x14
MGZ2_FGVScrollArray:	.space 0x160
MGZ2_BGDeform:	.space 0x2C4
MGZ2_BGDrawArray:	.space 4
MGZ2_BGDeformArray:	.space 0x9EE
ICZ1_SetIntroPal:	.space 0x40
ICZ1_SetIndoorPal:	.space 0x34
ICZ1_IntroBGDeformArray:	.space 0x1C8
ICZ2_OutDeform:	.space 0x78
ICZ2_InDeform:	.space 0x70
ICZ2_SetOutdoorsPal:	.space 0x30
ICZ2_SetIndoorsPal:	.space 0x34
ICZ2_SetICZ1Pal:	.space 0x30
ICZ2_OutBGDeformArray:	.space 8
ICZ2_InBGDeformArray:	.space 0x212
LBZ1_CheckLayoutMod:	.space 0x78
LBZ1_DoMod4:	.space 0x1C
LBZ1_DoMod3:	.space 0x1A
LBZ1_DoMod2:	.space 0x20
LBZ1_DoMod1:	.space 0x72
LBZ1_FGVScrollArray:	.space 0x38
LBZ1_LayoutModExitRange:	.space 0x10
LBZ1_CollapseScrollSpeed:	.space 0x176
LBZ1_Deform:	.space 0x78A
LBZ2_BGDeformArray:	.space 0x24
LBZ2_DEBGDeformArray:	.space 0x30
LBZ2_CloudDeformArray:	.space 0x1A
LBZ2_BGUWDeformRange:	.space 0xA
Gumball_ScreenInit:.space 0x4A
Gumball_ScreenEvent:.space 0x4A
Gumball_BackgroundInit:.space 0x12
Gumball_BackgroundEvent:.space 0x278C

Map_S3EndingGraphics:	.space 0x1D6
ArtNem_S3EndingGraphics:	.space 0x1C978
SStageLayoutPtrs:.space 0xED28
HCZ_WaterlineScroll_Data:.space 0x2460
LBZ_WaterlineScroll_Data:.space 0x5300

Solid_AIZ1:	.space 0xC00
Solid_AIZ2:	.space 0xC00
Solid_HCZ1:	.space 0xC00
Solid_HCZ2:	.space 0xC00
Solid_MGZ1:	.space 0xC00
Solid_MGZ2:	.space 0xC00
Solid_CNZ:	.space 0xC00
Solid_ICZ1:	.space 0xC00
Solid_ICZ2:	.space 0xC00
Solid_LBZ1:	.space 0xC00
Solid_LBZ2:	.space 0xC00
Solid_ALZ:	.space 0xC00
Solid_BPZ:	.space 0xC00
Solid_DPZ:	.space 0xC00
Solid_CGZ:	.space 0xC00
Solid_EMZ:	.space 0xC00
Solid_Gumball_Special:.space 0xCC0
Layout_AIZ1:	.space 0x84C
Layout_AIZ2:	.space 0xD66
Layout_HCZ1:	.space 0xB28
Layout_HCZ2:	.space 0xEA8
Layout_MGZ1:	.space 0xC90
Layout_MGZ2:	.space 0xDB0
Layout_CNZ1:	.space 0xBCA
Layout_CNZ2:	.space 0xF8E
Layout_ICZ1:	.space 0xFC8
Layout_ICZ2:	.space 0xE50
Layout_LBZ1:	.space 0xFAC
Layout_LBZ2:	.space 0xF28
Layout_ALZ:	.space 0x1CC
Layout_BPZ:	.space 0x154
Layout_DPZ:	.space 0xF8
Layout_CGZ:	.space 0xF8
Layout_EMZ:	.space 0xF8
Layout_Gumball_Special:.space 0x1246
ArtUnc_CNZCannon:	.space 0x2AE6
ArtUnc_SStageTails:.space 0xF60

Map_SStageTails:	.space 0x18

PLC_SStageTails:.space 0x116

ArtUnc_SStageTailstails:	.space 0x700
Map_SStageTailstails:	.space 0x1E

PLC_SStageTailstails:	.space 0xEB34

Map_Sonic2P:	.space 0x1AA

PLC_Sonic2P:	.space 0x102
Map_Tails2P:	.space 0x1BE
Map_Tails2P_Tail:.space 0x9A
PLC_Tails2P:	.space 0x10E
DPLC_Tails2P_Tail:.space 0x5E
Map_Knuckles2P:	.space 0x1EE

PLC_Knuckles2P:	.space 0x24A8
ArtUnc_AniAIZ1_0:.space 0x900

ArtUnc_AniAIZ1_1:.space 0x3C0
ArtUnc_AniAIZ2_1:.space 0x900

ArtUnc_AniAIZ2_0:.space 0xB80
ArtUnc_AniAIZ2_3:.space 0xC00
ArtUnc_AniAIZ2_2:.space 0x200
ArtUnc_AniAIZ2_FirstTree:.space 0x460
ArtUnc_AniHCZ1_0:.space 0xD80
ArtUnc_AniHCZ1_WaterlineBelow:.space 0x180

ArtUnc_FixHCZ1_UpperBG1:.space 0x180
ArtUnc_AniHCZ1_WaterlineAbove:.space 0x180

ArtUnc_FixHCZ1_LowerBG1:.space 0x180
ArtUnc_AniHCZ1_WaterlineBelow2:	.space 0x180
ArtUnc_FixHCZ1_UpperBG2:.space 0x180
ArtUnc_AniHCZ1_WaterlineAbove2:.space 0x180
ArtUnc_FixHCZ1_LowerBG2:.space 0x180
ArtUnc_AniHCZ__1:.space 0x6C0

ArtUnc_AniHCZ2_0:.space 0xA80
ArtUnc_AniHCZ2_SmallBGLine:.space 0x400
ArtUnc_AniHCZ2_2:.space 0x800
ArtUnc_AniHCZ2_3:.space 0x1000
ArtUnc_AniHCZ2_4:.space 0x3000
ArtUnc_AniMGZ__0:.space 0x2400
ArtUnc_AniMGZ__1:.space 0x60
ArtUnc_AniCNZ__0:.space 0x1200

ArtUnc_AniCNZ__1:.space 0x2000
ArtUnc_AniCNZ__2:.space 0x2000
ArtUnc_AniCNZ__3:.space 0x1000
ArtUnc_AniCNZ__4:.space 0x180
ArtUnc_AniCNZ__6:.space 0x2000
ArtUnc_AniCNZ__5:.space 0xA00
ArtUnc_AniICZ__1:.space 0x1000
ArtUnc_AniICZ__2:.space 0x200
ArtUnc_AniICZ__3:.space 0x100
ArtUnc_AniICZ__4:.space 0x80
ArtUnc_AniICZ__5:.space 0x40
ArtUnc_AniICZ__0:	.space 0x400
ArtUnc_AniLBZ1_0:	.space 0x500
ArtUnc_AniLBZ1_1:.space 0x1400
ArtUnc_AniLBZ1_2:.space 0x100
ArtUnc_AniLBZ2_2:.space 0x400
ArtUnc_AniLBZ2_WaterlineBelow:.space 0x200

ArtUnc_AniLBZ2_LowerBG:.space 0x200
ArtUnc_AniLBZ2_WaterlineAbove:.space 0x200
ArtUnc_AniLBZ2_UpperBG:.space 0x200
ArtUnc_AniLBZ__0:.space 0x2000

ArtUnc_AniLBZ2_0:.space 0x280

ArtUnc_AniLBZ2_1:.space 0x300

ArtUnc_AniALZ:	.space 0x600
ArtUnc_AniBPZ__0:.space 0x540
ArtUnc_AniBPZ__1:.space 0x500
ArtUnc_AniBPZ__2:.space 0xC0
ArtUnc_AniBPZ__3:.space 0x40
ArtUnc_AniDPZ:	.space 0x780
ArtUnc_AniDPZ__BG:.space 0x2000

ArtUnc_AniGumball:.space 0x100
ArtUnc_SplashDrown:.space 0x274C

ArtNem_Title_SonicSprites:	.space 0xC58
DemoDat_AIZ:	.space 0x780
DemoDat_HCZ:	.space 0x780
DemoDat_MGZ:	.space 0x1ADC

/* KiS2*/
/*byte_2E8C80:	.space 0x114*/
/*byte_2E8D94:	.space 0x249C*/
/*byte_2EB230:	.space 0x24*/
/*byte_2EB254:	.space 0x98A*/
/*byte_2EBBDE:	.space 0x16E*/
/*byte_2EBD4C:	.space 0x142B4*/
/*S2KStartup:	.space 0x200E0*/

ArtUnc_Tails:	.space 0x16540
ArtUnc_Tails_Tail:.space 0x1160
ArtUnc_Sonic2P:	.space 0x30C0
ArtUnc_Tails2P:	.space 0x2DA0
ArtUnc_Tails2P_Tail:.space 0x580
ArtUnc_Knuckles2P:.space 0x150E
byte_33F06E:	.space 0x6DE
byte_33F74C:	.space 0x546C
Map_Tails_Tail:	.space 0x1BC
PLC_Tails_Tail:	.space 0x10C
ICZSnowboard_Slope1:	.space 0xC8
ICZSnowboard_Slope2:	.space 0xC8
ArtUnc_SonicSnowboard:	.space 0x2840
ArtUnc_Snowboard:	.space 0x5E0
Map_SonicSnowboard:	.space 0x15A
DPLC_SonicSnowboard:	.space 0x96
Map_Snowboard:	.space 0x108
DPLC_Snowboard:	.space 0x78
ArtNem_AIZIntroSprites:.space 0x7442
ArtNem_2PDashdust:	.space 0xBE

MapEni_S3TitleSonic1:.space 0xBC
MapEni_S3TitleSonic2:.space 0xC2
MapEni_S3TitleSonic3:.space 0xC4
MapEni_S3TitleSonic4:.space 0xC4
MapEni_S3TitleSonic5:.space 0xC4
MapEni_S3TitleSonic6:.space 0xC6
MapEni_S3TitleSonic7:.space 0xFE
MapEni_S3TitleSonic8:.space 0xEA
MapEni_S3TitleSonic9:.space 0xCE
MapEni_S3TitleSonicA:.space 0xC4
MapEni_S3TitleSonicB:.space 0x9E
MapEni_S3TitleSonicC:.space 0xD0
MapEni_S3TitleSonicD:.space 0xFA

MapEni_S3TitleBg:	.space 0xCE
Map_S3TitleBanner:.space 0x8C

ArtNem_Title_S3Banner:	.space 0xABA
ArtKos_S3TitleSonic1:.space 0xF60

ArtKos_S3TitleSonic8:.space 0x2660

ArtKos_S3TitleSonic9:.space 0x2300
ArtKos_S3TitleSonicA:.space 0x14E0
ArtKos_S3TitleSonicB:.space 0x1320
ArtKos_S3TitleSonicC:.space 0x11E0
ArtKos_S3TitleSonicD:.space 0x3038

ArtNem_TailsLifeIcon:.space 0x32CA
Map_LBZMiniboss:	.space 0xA2
Map_LBZMinibossBox:	.space 0x96
Map_SnaleBlaster:.space 0xA4

Map_Orbinaut:	.space 0x14

Map_Ribot:	.space 0x10A

Map_Corkey:	.space 0x98

Map_Flybot767:	.space 0x192

DPLC_Flybot:	.space 0xAA
Map_LBZEndBoss:	.space 0x114

Map_CNZEndBoss:	.space 0x11E

CNZEndBossMagnet_AngleX:	.space 0x40
LBZFinalBoss2_CircleLookup:	.space 0x2C8

Map_Blastoid:	.space 0xA2

Map_Poindexter:	.space 0x42

Map_Buggernaut:	.space 0x72

Map_MegaChomper:.space 0x2EC

Map_TurboSpiker:.space 0x152

Map_Jawz:	.space 0x20A

DPLC_RhinoBot:	.space 0x3A
Map_RhinoBot:	.space 0xB4

Map_AIZMinibossFlame:	.space 0x64
Map_Tulipon:	.space 0xB6

Map_MonkeyDude:	.space 0x1FC

Map_MGZMiniBoss:.space 0xA6

Map_CaterKillerJr:.space 0x60

DPLC_Clamer:	.space 0x44
Map_Clamer:	.space 0x78

Map_CNZBlastoid:.space 0x9C

Map_Batbot:	.space 0x70

DPLC_BubblesBadnik:	.space 0x28
Map_BubblesBadnik:.space 0x50

Map_Spiker:	.space 0x6E

Map_Mantis:	.space 0x128

DPLC_Penguinator:	.space 0x42
Map_Penguinator:.space 0x7E

Map_ICZSnowdust:	.space 0xA0
Map_StarPointer:.space 0x28

Map_AIZEndBoss:	.space 0x4FA

Map_AIZMiniboss:	.space 0x11A
Map_AIZMinibossSmall:	.space 0x1E
Map_MGZEndBoss:	.space 0x298
HCZMiniboss_RocketTwistLookup:	.space 0x100

















LBZ2FinalBoss2_CircleLookup2:	.space 0x40




Map_HCZMiniboss:	.space 0x244

Map_HCZMinibossSplash:	.space 0x5A
DPLC_HCZMinibossSplash:	.space 0x36
Map_ICZEndBoss:	.space 0x220

Map_CNZMiniboss:	.space 0x430

ICZMiniboss_OrbAngleLookup:	.space 0x40






Map_ICZMiniboss:	.space 0x190

Map_HCZEndBoss:	.space 0x302

Map_MGZEndBossDebris:	.space 0x1EA

Map_ICZWallAndColumn:.space 0x284

Map_ICZPlatforms:.space 0x3C8

Map_LBZKnuxBomb:	.space 0xA
Map_CutsceneKnux:	.space 0x2F8
DPLC_CutsceneKnux:	.space 0x162
Map_AIZIntroPlane:	.space 0xF2

Map_AIZIntroEmeralds:	.space 0x46
Map_LBZFinalBoss1:	.space 0x264

Map_LBZDeathEggSmall:	.space 0x8A

Pal_MGZFadeCNZ:	.space 0x200
Map_LBZFinalBoss2:	.space 0x15C

ArtNem_AIZMiniboss:	.space 0x66E
ArtKosM_AIZEndBoss:	.space 0x1F42
ArtNem_AIZMinibossSmall:	.space 0x188
ArtUnc_AIZRhino:	.space 0xAA0
ArtKosM_AIZ_Tulipon:.space 0x242
ArtKosM_AIZ_MonkeyDude:.space 0x1F2
ArtKosM_AIZ_CaterkillerJr:.space 0x202
ArtNem_HCZMiniboss:	.space 0xE9E
ArtNem_HCZEndBoss:	.space 0x1142
ArtNem_HCZDragonfly:	.space 0x172

ArtKosM_Jawz:.space 0x172
ArtKosM_MegaChopper:.space 0x102

ArtKosM_Blastoid:.space 0x1A2
ArtKosM_TurboSpiker:.space 0x422

ArtKosM_Pointdexter:	.space 0x2A2

ArtKosM_MGZMiniboss:.space 0x2A2
ArtNem_MGZSpire:	.space 0x72
ArtKosM_MGZEndBoss:	.space 0x1232

ArtScaled_MGZEndBoss:	.space 0x1000
ArtKosM_MGZEndBossDebris:.space 0x132

ArtUnc_BubblesBadnik:	.space 0xA20
ArtKosM_Spiker:.space 0x212

ArtKosM_Mantis:.space 0x272

ArtNem_CNZMiniboss:	.space 0x4BC
ArtNem_CNZEndBoss:	.space 0x514
ArtUnc_Clamer:	.space 0x1140
ArtKosM_ClamerShot:.space 0x72
ArtKosM_Sparkle:.space 0x322
ArtKosM_Batbot:.space 0x222
ArtKosM_CNZBalloon:.space 0x1500
ArtNem_ICZMisc1:	.space 0xC24

ArtNem_ICZIntroSprites:	.space 0x482
ArtNem_ICZMisc2:	.space 0x36A
ArtNem_ICZEndBoss:	.space 0xDAE
ArtNem_ICZMiniboss:	.space 0x488
ArtUnc_Penguinator:	.space 0xFE0
ArtKosM_ICZSnowdust:.space 0x92
ArtKosM_StarPointer:.space 0x192
ArtKosM_LBZMiniboss:	.space 0x322
ArtKosM_LBZMinibossBox:	.space 0x322

ArtNem_LBZFinalBoss1:	.space 0xBA6
ArtKosM_LBZEndBoss:	.space 0x332
ArtKosM_LBZFinalBoss2:	.space 0x1122
ArtKosM_SnailBlaster:.space 0x252
ArtKosM_Ribot:.space 0x132
ArtKosM_Orbinaut:.space 0xE2
ArtKosM_Corkey:.space 0xC2
ArtUnc_Flybot:	.space 0x1320
ArtNem_LBZKnuxBomb:	.space 0x3E
ArtKosM_LBZ2DeathEggSmall:	.space 0x64D2
ArtKosM_LBZ2DeathEgg2_8x8:.space 0x462
ArtNem_AIZBossFire:	.space 0x2AD4
ArtKosM_AIZIntroPlane:	.space 0x7A2
ArtUnc_CutsceneKnux:	.space 0x4EE0
ArtKosM_AIZIntroEmeralds:	.space 0x44F4
ArtKosM_TailsEndPose:	.space 0x1246
ArtNem_S38x16Font:	.space 0x1A6
ArtNem_AIZCorkFloor:.space 0x1A4
ArtNem_AIZCorkFloor2:	.space 0x192

ArtNem_AIZSwingVine:.space 0x166

ArtNem_AIZSlideRope:.space 0x124
ArtNem_AIZBackgroundTree:.space 0x14A

ArtNem_AIZMisc1:	.space 0x848
ArtNem_AIZFallingLog:.space 0x288
ArtNem_AIZMisc2:.space 0x138C

ArtNem_HCZSpikeBall:	.space 0xC8

ArtNem_HCZWaveSplash:	.space 0x120

ArtNem_HCZButton:	.space 0xB4

ArtNem_HCZMisc:	.space 0x5C0

ArtNem_HCZWaterRush:	.space 0x5B8
ArtKosM_HCZLargeFan:	.space 0x302
ArtKosM_HCZGeyserHorz:	.space 0x792
ArtKosM_HCZGeyserVert:	.space 0x7A2

ArtNem_HCZ2Slide:	.space 0x516
ArtNem_HCZ2BlockPlat:	.space 0x348
ArtUnc_HCZWaterSplash2:	.space 0x780
ArtUnc_HCZWaterSplash:	.space 0xC00
ArtNem_HCZ2KnuxWall:	.space 0x11A
ArtNem_MGZMisc1:	.space 0xA3E

ArtNem_MGZMisc2:	.space 0x610

ArtNem_MGZSigns:	.space 0x23A

ArtNem_CNZMisc:	.space 0xDBE
ArtNem_CNZPlatform:	.space 0x16A
ArtNem_LBZMisc:	.space 0xB1E

ArtNem_LBZTubeTrans:	.space 0x264
ArtNem_LBZ2Misc:	.space 0x43C
ArtNem_2PArt_1:	.space 0x174

ArtNem_2PArt_2:	.space 0x1F2

ArtNem_2PArt_3:	.space 0x4F6

ArtNem_2PStartPost:	.space 0x178

ArtNem_2PTime:	.space 0x65A

ArtNem_2PLapNum:	.space 0x4FA

ArtNem_2PPosIcon:	.space 0x9A

ArtNem_BPZMisc:	.space 0x84A
ArtNem_DPZMisc:	.space 0xD16
ArtNem_CGZMisc:	.space 0x374
ArtNem_EMZMisc:	.space 0x292
ArtKosM_AIZ2Bombership2_8x8:.space 0xD54
ArtKosM_ResultsMILES:	.space 0x152
ArtKosM_ResultsTAILS:	.space 0x125E

ArtKosM_AIZTitleCard:.space 0x112
ArtKosM_HCZTitleCard:.space 0x152
ArtKosM_MGZTitleCard:.space 0x1C2
ArtKosM_CNZTitleCard:.space 0x2F4
ArtKosM_ICZTitleCard:.space 0xD2
ArtKosM_LBZTitleCard:.space 0x152
ArtKosM_ALZTitleCard:.space 0x1B2
ArtKosM_BPZTitleCard:.space 0x222
ArtKosM_CGZTitleCard:.space 0x242
ArtKosM_DPZTitleCard:.space 0x202
ArtKosM_EMZTitleCard:.space 0x344
Pal_SaveMenuBG:.space 0x20
Pal_CompetitionMenuBG:	.space 0x20
MapEni_S3MenuBG:.space 0x202
ArtKos_S3MenuBG:	.space 0x1C60
MapEni_CompetitionLevBorder:.space 0x4C
MapUnc_CompetitionTimeBorder:.space 0xD8









MapUnc_CompetitionBESTTIME:.space 0x24



MapEni_CompetitionLevImage:.space 0x120
MapEni_CompetitionLevName:.space 0x102
ArtKos_CompetitionMode:	.space 0x410
ArtKos_CompetitionLevel:	.space 0x1E40
ArtKos_CompetitionResults:	.space 0x430
Map_CompetitionPlayerSprite:	.space 0x42

ArtKos_CompetitionPlayer:	.space 0x4F0
MapEni_SaveScreen_Layout:.space 0xBE
MapUnc_SaveScreenNEW:.space 0x8C







MapPtrs_SaveScreenStatic:.space 0x240
































ArtKos_SaveScreenMisc:.space 0x13A0

AIZ1_16x16_Primary_Kos:.space 0x200
AIZ1_16x16_Secondary_Kos:.space 0xC40
AIZ1_16x16_MainLevel_Kos:.space 0x10E0
AIZ1_8x8_Primary_KosM:.space 0xE12
AIZ1_8x8_Secondary_KosM:.space 0x2FD2
AIZ1_8x8_MainLevel_KosM:.space 0x27F2
AIZ1_128x128_Kos:.space 0x3990
AIZ1_8x8_Flames_KosM:.space 0xA82

AIZ2_16x16_Primary_Kos:.space 0x8A0
AIZ2_16x16_Secondary_Kos:.space 0xA80
AIZ2_16x16_BomberShip_Kos:.space 0x260
AIZ2_8x8_Primary_KosM:.space 0x21B2
AIZ2_8x8_Secondary_KosM:.space 0x1142
AIZ2_8x8_BomberShip_KosM:.space 0x922
AIZ2_128x128_Kos:.space 0x4010

HCZ_16x16_Primary_Kos:.space 0x470
HCZ_8x8_Primary_KosM:.space 0xC42
HCZ_128x128_Primary_Kos:.space 0x340

HCZ1_16x16_Secondary_Kos:.space 0x890
HCZ1_8x8_Secondary_KosM:.space 0x2252
HCZ1_128x128_Secondary_Kos:.space 0x20B0

HCZ2_16x16_Secondary_Kos:.space 0x8F0
HCZ2_8x8_Secondary_KosM:.space 0x1E82
HCZ2_128x128_Secondary_Kos:.space 0x1C80

MGZ_16x16_Primary_Kos:.space 0x950
MGZ_8x8_Primary_KosM:.space 0x25A2
MGZ_128x128_Primary_Kos:.space 0x2300

MGZ1_16x16_Secondary_Kos:.space 0x310
MGZ1_8x8_Secondary_KosM:.space 0x9E2
MGZ1_128x128_Secondary_Kos:.space 0x880

MGZ2_16x16_Secondary_Kos:.space 0x460
MGZ2_8x8_Secondary_KosM:.space 0x1092
MGZ2_128x128_Secondary_Kos:.space 0x9F0
MGZ2_QuakeChunks:	.space 0x1080

CNZ_16x16_Kos:	.space 0x1040
CNZ_8x8_KosM:	.space 0x3222
CNZ_128x128_Kos:.space 0x3120

ICZ_16x16_Primary_Kos:.space 0x2E0
ICZ_8x8_Primary_KosM:.space 0x1412
ICZ_128x128_Primary_Kos:.space 0x2B0

ICZ1_16x16_Secondary_Kos:.space 0xB70
ICZ1_8x8_Secondary_KosM:.space 0x1F82
ICZ1_128x128_Secondary_Kos:.space 0x1E20

ICZ2_16x16_Secondary_Kos:.space 0xCA0
ICZ2_8x8_Secondary_KosM:.space 0x20B2
ICZ2_128x128_Secondary_Kos:.space 0x1AD0

LBZ_16x16_Primary_Kos:.space 0x540
LBZ1_16x16_Secondary_Kos:.space 0xAF0
LBZ_8x8_Primary_KosM:.space 0x1752
LBZ1_8x8_Secondary_KosM:.space 0x1D92
LBZ1_128x128_Kos:.space 0x2FD0

LBZ2_16x16_Secondary_Kos:.space 0xA40
LBZ2_16x16_DeathEgg_Kos:.space 0xE20
LBZ2_8x8_Secondary_KosM:.space 0x17A2
LBZ2_8x8_DeathEgg_KosM:.space 0x1F92
LBZ2_128x128_Kos:.space 0x24D0
LBZ2_128x128_DeathEgg_Kos:.space 0xCF0

ALZ_16x16_Kos:	.space 0xAC0
ALZ_8x8_KosM:	.space 0x2DB2
ALZ_128x128_Kos:.space 0x690

BPZ_16x16_Kos:	.space 0x8D0
BPZ_8x8_KosM:	.space 0x1FE2
BPZ_128x128_Kos:.space 0x6F0

DPZ_16x16_Kos:	.space 0x9E0
DPZ_8x8_KosM:	.space 0x1AF2
DPZ_128x128_Kos:.space 0x630

CGZ_16x16_Kos:	.space 0x750
CGZ_8x8_KosM:	.space 0x25A2
CGZ_128x128_Kos:.space 0x4C0

EMZ_16x16_Kos:	.space 0xAB0
EMZ_8x8_KosM:	.space 0x2C32
EMZ_128x128_Kos:.space 0x710

Gumball_16x16_Kos:.space 0x420
Gumball_8x8_KosM:.space 0xD52
Gumball_128x128_Kos:.space 0x480
