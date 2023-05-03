/*  ═══════════════════════════════════════════════════════════════════════════ */



LockOnROM_Start:ds.b 0x11
S3_Level_Solid_Data .equ 0x260000

byte_200011:	ds.b 0xAC
byte_2000BD:	ds.b 0x43
LockonHeader:	ds.b 0x14
SSMagic_TestLoc_200114:ds.b 6
SSMagic_TestLoc_20011A:ds.b 2
LockonDate:	ds.b 0x34
SSMagic_TestLoc_200150:ds.b 0x19
		ds.b 0x17
LockonSerialNumber:dsb	0x24
SSMagic_TestLoc_2001A4:ds.b 0x51
		ds.b 0x8C
byte_200281:	ds.b 0xAC
byte_20032D:	ds.b 0x94EB
Pal_Competition1:ds.b 0xA8
Map_CompetitionObject:ds.b 0x870
MapUnc_CompetitionNumbers:ds.b 0x42E


Pal_Competition2:	ds.b 0x20
Pal_Competition3:	ds.b 0x40
Pal_Competition4:	ds.b 0x126
Map_CompetitionSelect:ds.b 0x6A0

Pal_CompetitionResults:ds.b 0xDE
MapEni_CompetitionResultsLED:ds.b 0x1A
MapUnc_CompetitionResultsLetters:ds.b 0x28
MapUnc_CompetitionResultsDividers:ds.b 0x50
MapUnc_CompetitionResultsTOTAL:ds.b 0x14
MapUnc_ResultsWin:	ds.b 8
MapUnc_ResultsLose:	ds.b 8
MapUnc_ResultsTie:	ds.b 0x354
Pal_CompetitionTimeAttack:	ds.b 0xBA
MapUnc_CompetitionLAPNum:ds.b 0x64

MapUnc_CompetitionRECORDS:ds.b 0x1C

MapUnc_Competition1st2nd3rd:ds.b 0x44

MapUnc_CompetitionAZURELAKE:ds.b 0x34

MapUnc_CompetitionBALLOONPARK:ds.b 0x34

MapUnc_CompetitionCHROMEGADGET:ds.b 0x34

MapUnc_CompetitionDESERTPALACE:ds.b 0x34

MapUnc_CompetitionENDLESSMINE:ds.b 0x1326


ArtKos_SaveScreenS3Zone:ds.b 0xFC08
Map_AIZ1Tree:	ds.b 0x42
Map_AIZ1ZiplinePeg:	ds.b 0x9A0
Map_BreakableBar:ds.b 0x280

Map_HCZBlock:	ds.b 0xC92

Map_AIZRock:	ds.b 0x88

Map_AIZRock2:	ds.b 0x88

Map_EMZRock:	ds.b 0x8DC

Map_AIZCollapsingPlatform:ds.b 0xE4

Map_AIZCollapsingPlatform2:dsb	0xEA

Map_LBZCollapsingBridge:ds.b 0xFC

Map_LBZCollapsingLedge:ds.b 0x88

Map_HCZCollapsingBridge:ds.b 0x44E

Map_MGZCollapsingBridge:ds.b 0x48A

Map_ICZCollapsingBridge:ds.b 0xA60

Map_AIZBreakableWall:ds.b 0x1C6

Map_MGZBreakableWall:ds.b 0xC0

Map_HCZBreakableWall:ds.b 0x86

Map_LBZBreakableWall:ds.b 0x113C

Map_AIZIntroWaves:	ds.b 0x3750
Map_LBZUnusedElevator:	ds.b 0xBE
Map_LBZExplodingTrigger:ds.b 0x1E0

Map_MGZDashTrigger:dsb	0x25E

Map_LBZTriggerBridge:ds.b 0x566

Map_LBZPlayerLauncher:ds.b 0x102

Map_LBZFlameThrower:ds.b 0xD4C
Map_LBZCupElevator:dsb	0x346

Map_LBZUnusedUnknown:	ds.b 0x374

Map_LBZPipePlug:ds.b 0x136E

Map_LBZSpinLauncher:ds.b 0x1FA

Map_LBZLoweringGrapple:ds.b 0x47A

Map_LBZSmashingSpikes:ds.b 0x10

Map_MGZSmashingPillar:ds.b 0x14E

Map_LBZGateLaser:ds.b 0xE10

Map_LBZTubeElevator:ds.b 0x310

Map_AIZDisappearingFloor:ds.b 0xC

Map_AIZDisappearingFloor2:	ds.b 0x6A0
Map_AIZCorkFloor:ds.b 0x74

Map_AIZCorkFloor2:ds.b 0x74

Map_CNZCorkFloor:ds.b 0x98

Map_ICZCorkFloor:ds.b 0x208

Map_LBZCorkFloor:ds.b 0x428

Map_AIZFlippingBridge:ds.b 0xB10

Map_AIZFallingLog2:dsb	0x10

Map_AIZFallingLog:ds.b 0x10

Map_AIZFallingLogSplash2:	ds.b 0x70
Map_AIZFallingLogSplash:	ds.b 0x240
Map_AIZSpikedLog:ds.b 0x7FC

Map_AIZForegroundPlant:ds.b 0x42E

Map_Button2:	ds.b 0x30

Map_CNZButton:	ds.b 0x30

Map_2PButton:	ds.b 0x2892

Map_HCZWaterRush:	ds.b 0x160
Map_HCZWaterRushBlock:	ds.b 0x6A4

Map_HCZWaterWall:ds.b 0xFE

Map_HCZWaterWallDebris:	ds.b 0x49C

Map_HCZFan:	ds.b 0x6E

Map_HCZLargeFan:ds.b 0x208

Map_CGZFan:	ds.b 0x378

Map_HCZHandLauncher:ds.b 0x9C6

Map_HCZConveyorSpike:ds.b 0x1A4

Map_CNZBalloon:	ds.b 0x530

Map_CNZCannon:	ds.b 0x2AA

Map_CNZRisingPlatform:ds.b 0xF0

Map_CNZTrapDoor:ds.b 0x86

Map_CNZLightBulb:ds.b 0x1BE

Map_CNZHoverFan:ds.b 0x7A0

Map_CNZCylinder:ds.b 0x33E

Map_HCZSpinningColumn:ds.b 0x7E0

Map_Bumper:	ds.b 0x20

Map_2PBumper:	ds.b 0x102A

Map_MGZSwingingPlatform:ds.b 0x25A

Map_MGZSwingingSpikeBall:ds.b 0x2A0

Map_MGZHeadTrigger:dsb	0x1A0

Map_MGZTriggerPlatform:ds.b 0x1E6

Map_MGZMovingSpikePlatform:dsb	0x528

Map_MGZPulley:	ds.b 0x388E

Map_HCZWaterDrop:ds.b 0x312

Map_HCZWaterSplash:dsb	0x1A

Map_HCZWaterSplash2:	ds.b 0x29C2

Comp_ScreenInit:ds.b 0x4E
Comp_ScreenEvent:ds.b 0x22
CGZ_ScreenEvent:ds.b 0x20
ALZ_BackgroundInit:ds.b 6
BPZ_BackgroundInit:	ds.b 6
DPZ_BackgroundInit:ds.b 6
CGZ_BackgroundInit:ds.b 0x38
EMZ_BackgroundInit:ds.b 0x28
ALZ_BackgroundEvent:ds.b 0xA
BPZ_BackgroundEvent:ds.b 0xA
CGZ_BackgroundEvent:ds.b 0xA
EMZ_BackgroundEvent:ds.b 0x3A
DPZ_BackgroundEvent:ds.b 0x400
AIZ_TreeReveal:	ds.b 0xB4
AIZ_TreeRevealArray:	ds.b 0x388
AIZ1_IntroDeform:	ds.b 0x6C
AIZ1_Deform:	ds.b 0x96
AIZ1_ApplyDeformWater:	ds.b 0x7E
AIZ1_FireRise:	ds.b 0x28
AIZTrans_WavyFlame:	ds.b 0x7C
AIZ1_IntroDrawArray:	ds.b 0x14
AIZ1_IntroDeformArray:	ds.b 0x4A
AIZ1_BGDrawArray:	ds.b 0x3D2
AIZ2_Deform:	ds.b 0x5A
AIZ2_ApplyDeform:	ds.b 0x9DA
Pal_AIZBattleship:	ds.b 0x20
Pal_AIZBossSmall:	ds.b 0x1C
AIZBattleShip_BobbingMotion:	ds.b 0x10
AIZBattleship_BombScript:	ds.b 0x56
AIZBombExplodeDat:	ds.b 0x40
AIZMakeTreeScript:	ds.b 0x46
Map_AIZShipPropeller:	ds.b 0x28
Ani_AIZShipPropeller:	ds.b 8
Map_AIZ2BombExplode:	ds.b 0x78

Ani_AIZ2BombExplode:	ds.b 0x1E
Map_AIZ2BGTree:	ds.b 0x1C
Map_AIZ2BossSmall:	ds.b 0x32C
HCZ1_BGDeformArray:	ds.b 0x242
HCZ2_BGDeformArray:	ds.b 0x2E
HCZ2_BGDeformIndex:	ds.b 0x170
MGZ1_Deform:	ds.b 0x88
MGZ1_BGDeformArray:	ds.b 0x560
MGZ2_QuakeEventArray:	ds.b 0x24
MGZ2_ChunkEventArray:	ds.b 0x24
MGZ2_ScreenRedrawArray:	ds.b 0x5C
MGZ2_ChunkReplaceArray:	ds.b 0x60
MGZ2_CollapseScrollDelay:	ds.b 0x14
MGZ2_FGVScrollArray:	ds.b 0x160
MGZ2_BGDeform:	ds.b 0x2C4
MGZ2_BGDrawArray:	ds.b 4
MGZ2_BGDeformArray:	ds.b 0x9EE
ICZ1_SetIntroPal:	ds.b 0x40
ICZ1_SetIndoorPal:	ds.b 0x34
ICZ1_IntroBGDeformArray:	ds.b 0x1C8
ICZ2_OutDeform:	ds.b 0x78
ICZ2_InDeform:	ds.b 0x70
ICZ2_SetOutdoorsPal:	ds.b 0x30
ICZ2_SetIndoorsPal:	ds.b 0x34
ICZ2_SetICZ1Pal:	ds.b 0x30
ICZ2_OutBGDeformArray:	ds.b 8
ICZ2_InBGDeformArray:	ds.b 0x212
LBZ1_CheckLayoutMod:	ds.b 0x78
LBZ1_DoMod4:	ds.b 0x1C
LBZ1_DoMod3:	ds.b 0x1A
LBZ1_DoMod2:	ds.b 0x20
LBZ1_DoMod1:	ds.b 0x72
LBZ1_FGVScrollArray:	ds.b 0x38
LBZ1_LayoutModExitRange:	ds.b 0x10
LBZ1_CollapseScrollSpeed:	ds.b 0x176
LBZ1_Deform:	ds.b 0x78A
LBZ2_BGDeformArray:	ds.b 0x24
LBZ2_DEBGDeformArray:	ds.b 0x30
LBZ2_CloudDeformArray:	ds.b 0x1A
LBZ2_BGUWDeformRange:	ds.b 0xA
Gumball_ScreenInit:dsb	0x4A
Gumball_ScreenEvent:ds.b 0x4A
Gumball_BackgroundInit:ds.b 0x12
Gumball_BackgroundEvent:ds.b 0x278C

Map_S3EndingGraphics:	ds.b 0x1D6
ArtNem_S3EndingGraphics:	ds.b 0x1C978
SStageLayoutPtrs:ds.b 0xED28
HCZ_WaterlineScroll_Data:ds.b 0x2460
LBZ_WaterlineScroll_Data:ds.b 0x5300

Solid_AIZ1:	ds.b 0xC00
Solid_AIZ2:	ds.b 0xC00
Solid_HCZ1:	ds.b 0xC00
Solid_HCZ2:	ds.b 0xC00
Solid_MGZ1:	ds.b 0xC00
Solid_MGZ2:	ds.b 0xC00
Solid_CNZ:	ds.b 0xC00
Solid_ICZ1:	ds.b 0xC00
Solid_ICZ2:	ds.b 0xC00
Solid_LBZ1:	ds.b 0xC00
Solid_LBZ2:	ds.b 0xC00
Solid_ALZ:	ds.b 0xC00
Solid_BPZ:	ds.b 0xC00
Solid_DPZ:	ds.b 0xC00
Solid_CGZ:	ds.b 0xC00
Solid_EMZ:	ds.b 0xC00
Solid_Gumball_Special:ds.b 0xCC0
Layout_AIZ1:	ds.b 0x84C
Layout_AIZ2:	ds.b 0xD66
Layout_HCZ1:	ds.b 0xB28
Layout_HCZ2:	ds.b 0xEA8
Layout_MGZ1:	ds.b 0xC90
Layout_MGZ2:	ds.b 0xDB0
Layout_CNZ1:	ds.b 0xBCA
Layout_CNZ2:	ds.b 0xF8E
Layout_ICZ1:	ds.b 0xFC8
Layout_ICZ2:	ds.b 0xE50
Layout_LBZ1:	ds.b 0xFAC
Layout_LBZ2:	ds.b 0xF28
Layout_ALZ:	ds.b 0x1CC
Layout_BPZ:	ds.b 0x154
Layout_DPZ:	ds.b 0xF8
Layout_CGZ:	ds.b 0xF8
Layout_EMZ:	ds.b 0xF8
Layout_Gumball_Special:ds.b 0x1246
ArtUnc_CNZCannon:	ds.b 0x2AE6
ArtUnc_SStageTails:ds.b 0xF60

Map_SStageTails:	ds.b 0x18

PLC_SStageTails:ds.b 0x116

ArtUnc_SStageTailstails:	ds.b 0x700
Map_SStageTailstails:	ds.b 0x1E

PLC_SStageTailstails:	ds.b 0xEB34

Map_Sonic2P:	ds.b 0x1AA

PLC_Sonic2P:	ds.b 0x102
Map_Tails2P:	ds.b 0x1BE
Map_Tails2P_Tail:ds.b 0x9A
PLC_Tails2P:	ds.b 0x10E
DPLC_Tails2P_Tail:ds.b 0x5E
Map_Knuckles2P:	ds.b 0x1EE

PLC_Knuckles2P:	ds.b 0x24A8
ArtUnc_AniAIZ1_0:ds.b 0x900

ArtUnc_AniAIZ1_1:ds.b 0x3C0
ArtUnc_AniAIZ2_1:ds.b 0x900

ArtUnc_AniAIZ2_0:ds.b 0xB80
ArtUnc_AniAIZ2_3:ds.b 0xC00
ArtUnc_AniAIZ2_2:ds.b 0x200
ArtUnc_AniAIZ2_FirstTree:ds.b 0x460
ArtUnc_AniHCZ1_0:ds.b 0xD80
ArtUnc_AniHCZ1_WaterlineBelow:ds.b 0x180

ArtUnc_FixHCZ1_UpperBG1:ds.b 0x180
ArtUnc_AniHCZ1_WaterlineAbove:ds.b 0x180

ArtUnc_FixHCZ1_LowerBG1:ds.b 0x180
ArtUnc_AniHCZ1_WaterlineBelow2:	ds.b 0x180
ArtUnc_FixHCZ1_UpperBG2:ds.b 0x180
ArtUnc_AniHCZ1_WaterlineAbove2:ds.b 0x180
ArtUnc_FixHCZ1_LowerBG2:ds.b 0x180
ArtUnc_AniHCZ__1:ds.b 0x6C0

ArtUnc_AniHCZ2_0:ds.b 0xA80
ArtUnc_AniHCZ2_SmallBGLine:dsb	0x400
ArtUnc_AniHCZ2_2:ds.b 0x800
ArtUnc_AniHCZ2_3:ds.b 0x1000
ArtUnc_AniHCZ2_4:ds.b 0x3000
ArtUnc_AniMGZ__0:ds.b 0x2400
ArtUnc_AniMGZ__1:ds.b 0x60
ArtUnc_AniCNZ__0:ds.b 0x1200

ArtUnc_AniCNZ__1:ds.b 0x2000
ArtUnc_AniCNZ__2:ds.b 0x2000
ArtUnc_AniCNZ__3:ds.b 0x1000
ArtUnc_AniCNZ__4:ds.b 0x180
ArtUnc_AniCNZ__6:ds.b 0x2000
ArtUnc_AniCNZ__5:ds.b 0xA00
ArtUnc_AniICZ__1:ds.b 0x1000
ArtUnc_AniICZ__2:ds.b 0x200
ArtUnc_AniICZ__3:ds.b 0x100
ArtUnc_AniICZ__4:ds.b 0x80
ArtUnc_AniICZ__5:ds.b 0x40
ArtUnc_AniICZ__0:	ds.b 0x400
ArtUnc_AniLBZ1_0:	ds.b 0x500
ArtUnc_AniLBZ1_1:ds.b 0x1400
ArtUnc_AniLBZ1_2:ds.b 0x100
ArtUnc_AniLBZ2_2:ds.b 0x400
ArtUnc_AniLBZ2_WaterlineBelow:ds.b 0x200

ArtUnc_AniLBZ2_LowerBG:ds.b 0x200
ArtUnc_AniLBZ2_WaterlineAbove:ds.b 0x200
ArtUnc_AniLBZ2_UpperBG:ds.b 0x200
ArtUnc_AniLBZ__0:ds.b 0x2000

ArtUnc_AniLBZ2_0:ds.b 0x280

ArtUnc_AniLBZ2_1:ds.b 0x300

ArtUnc_AniALZ:	ds.b 0x600
ArtUnc_AniBPZ__0:ds.b 0x540
ArtUnc_AniBPZ__1:ds.b 0x500
ArtUnc_AniBPZ__2:ds.b 0xC0
ArtUnc_AniBPZ__3:ds.b 0x40
ArtUnc_AniDPZ:	ds.b 0x780
ArtUnc_AniDPZ__BG:ds.b 0x2000

ArtUnc_AniGumball:ds.b 0x100
ArtUnc_SplashDrown:dsb	0x274C

ArtNem_Title_SonicSprites:	ds.b 0xC58
DemoDat_AIZ:	ds.b 0x780
DemoDat_HCZ:	ds.b 0x780
DemoDat_MGZ:	ds.b 0x1ADC

/*  KiS2 */
/* byte_2E8C80:	ds.b 0x114 */
/* byte_2E8D94:	ds.b 0x249C */
/* byte_2EB230:	ds.b 0x24 */
/* byte_2EB254:	ds.b 0x98A */
/* byte_2EBBDE:	ds.b 0x16E */
/* byte_2EBD4C:	ds.b 0x142B4 */
/* S2KStartup:	ds.b 0x200E0 */

ArtUnc_Tails:	ds.b 0x16540
ArtUnc_Tails_Tail:ds.b 0x1160
ArtUnc_Sonic2P:	ds.b 0x30C0
ArtUnc_Tails2P:	ds.b 0x2DA0
ArtUnc_Tails2P_Tail:ds.b 0x580
ArtUnc_Knuckles2P:ds.b 0x150E
byte_33F06E:	ds.b 0x6DE
byte_33F74C:	ds.b 0x546C
Map_Tails_Tail:	ds.b 0x1BC
PLC_Tails_Tail:	ds.b 0x10C
ICZSnowboard_Slope1:	ds.b 0xC8
ICZSnowboard_Slope2:	ds.b 0xC8
ArtUnc_SonicSnowboard:	ds.b 0x2840
ArtUnc_Snowboard:	ds.b 0x5E0
Map_SonicSnowboard:	ds.b 0x15A
DPLC_SonicSnowboard:	ds.b 0x96
Map_Snowboard:	ds.b 0x108
DPLC_Snowboard:	ds.b 0x78
ArtNem_AIZIntroSprites:ds.b 0x7442
ArtNem_2PDashdust:	ds.b 0xBE

MapEni_S3TitleSonic1:dsb	0xBC
MapEni_S3TitleSonic2:dsb	0xC2
MapEni_S3TitleSonic3:dsb	0xC4
MapEni_S3TitleSonic4:dsb	0xC4
MapEni_S3TitleSonic5:dsb	0xC4
MapEni_S3TitleSonic6:dsb	0xC6
MapEni_S3TitleSonic7:dsb	0xFE
MapEni_S3TitleSonic8:dsb	0xEA
MapEni_S3TitleSonic9:dsb	0xCE
MapEni_S3TitleSonicA:dsb	0xC4
MapEni_S3TitleSonicB:dsb	0x9E
MapEni_S3TitleSonicC:dsb	0xD0
MapEni_S3TitleSonicD:dsb	0xFA

MapEni_S3TitleBg:	ds.b 0xCE
Map_S3TitleBanner:ds.b 0x8C

ArtNem_Title_S3Banner:	ds.b 0xABA
ArtKos_S3TitleSonic1:dsb	0xF60

ArtKos_S3TitleSonic8:dsb	0x2660

ArtKos_S3TitleSonic9:dsb	0x2300
ArtKos_S3TitleSonicA:dsb	0x14E0
ArtKos_S3TitleSonicB:dsb	0x1320
ArtKos_S3TitleSonicC:dsb	0x11E0
ArtKos_S3TitleSonicD:dsb	0x3038

ArtNem_TailsLifeIcon:ds.b 0x32CA
Map_LBZMiniboss:	ds.b 0xA2
Map_LBZMinibossBox:	ds.b 0x96
Map_SnaleBlaster:ds.b 0xA4

Map_Orbinaut:	ds.b 0x14

Map_Ribot:	ds.b 0x10A

Map_Corkey:	ds.b 0x98

Map_Flybot767:	ds.b 0x192

DPLC_Flybot:	ds.b 0xAA
Map_LBZEndBoss:	ds.b 0x114

Map_CNZEndBoss:	ds.b 0x11E

CNZEndBossMagnet_AngleX:	ds.b 0x40
LBZFinalBoss2_CircleLookup:	ds.b 0x2C8

Map_Blastoid:	ds.b 0xA2

Map_Poindexter:	ds.b 0x42

Map_Buggernaut:	ds.b 0x72

Map_MegaChomper:ds.b 0x2EC

Map_TurboSpiker:ds.b 0x152

Map_Jawz:	ds.b 0x20A

DPLC_RhinoBot:	ds.b 0x3A
Map_RhinoBot:	ds.b 0xB4

Map_AIZMinibossFlame:	ds.b 0x64
Map_Tulipon:	ds.b 0xB6

Map_MonkeyDude:	ds.b 0x1FC

Map_MGZMiniBoss:ds.b 0xA6

Map_CaterKillerJr:ds.b 0x60

DPLC_Clamer:	ds.b 0x44
Map_Clamer:	ds.b 0x78

Map_CNZBlastoid:ds.b 0x9C

Map_Batbot:	ds.b 0x70

DPLC_BubblesBadnik:	ds.b 0x28
Map_BubblesBadnik:ds.b 0x50

Map_Spiker:	ds.b 0x6E

Map_Mantis:	ds.b 0x128

DPLC_Penguinator:	ds.b 0x42
Map_Penguinator:ds.b 0x7E

Map_ICZSnowdust:	ds.b 0xA0
Map_StarPointer:ds.b 0x28

Map_AIZEndBoss:	ds.b 0x4FA

Map_AIZMiniboss:	ds.b 0x11A
Map_AIZMinibossSmall:	ds.b 0x1E
Map_MGZEndBoss:	ds.b 0x298
HCZMiniboss_RocketTwistLookup:	ds.b 0x100

















LBZ2FinalBoss2_CircleLookup2:	ds.b 0x40




Map_HCZMiniboss:	ds.b 0x244

Map_HCZMinibossSplash:	ds.b 0x5A
DPLC_HCZMinibossSplash:	ds.b 0x36
Map_ICZEndBoss:	ds.b 0x220

Map_CNZMiniboss:	ds.b 0x430

ICZMiniboss_OrbAngleLookup:	ds.b 0x40






Map_ICZMiniboss:	ds.b 0x190

Map_HCZEndBoss:	ds.b 0x302

Map_MGZEndBossDebris:	ds.b 0x1EA

Map_ICZWallAndColumn:ds.b 0x284

Map_ICZPlatforms:ds.b 0x3C8

Map_LBZKnuxBomb:	ds.b 0xA
Map_CutsceneKnux:	ds.b 0x2F8
DPLC_CutsceneKnux:	ds.b 0x162
Map_AIZIntroPlane:	ds.b 0xF2

Map_AIZIntroEmeralds:	ds.b 0x46
Map_LBZFinalBoss1:	ds.b 0x264

Map_LBZDeathEggSmall:	ds.b 0x8A

Pal_MGZFadeCNZ:	ds.b 0x200
Map_LBZFinalBoss2:	ds.b 0x15C

ArtNem_AIZMiniboss:	ds.b 0x66E
ArtKosM_AIZEndBoss:	ds.b 0x1F42
ArtNem_AIZMinibossSmall:	ds.b 0x188
ArtUnc_AIZRhino:	ds.b 0xAA0
ArtKosM_AIZ_Tulipon:ds.b 0x242
ArtKosM_AIZ_MonkeyDude:ds.b 0x1F2
ArtKosM_AIZ_CaterkillerJr:ds.b 0x202
ArtNem_HCZMiniboss:	ds.b 0xE9E
ArtNem_HCZEndBoss:	ds.b 0x1142
ArtNem_HCZDragonfly:	ds.b 0x172

ArtKosM_Jawz:ds.b 0x172
ArtKosM_MegaChopper:dsb	0x102

ArtKosM_Blastoid:ds.b 0x1A2
ArtKosM_TurboSpiker:dsb	0x422

ArtKosM_Pointdexter:	ds.b 0x2A2

ArtKosM_MGZMiniboss:ds.b 0x2A2
ArtNem_MGZSpire:	ds.b 0x72
ArtKosM_MGZEndBoss:	ds.b 0x1232

ArtScaled_MGZEndBoss:	ds.b 0x1000
ArtKosM_MGZEndBossDebris:ds.b 0x132

ArtUnc_BubblesBadnik:	ds.b 0xA20
ArtKosM_Spiker:dsb	0x212

ArtKosM_Mantis:ds.b 0x272

ArtNem_CNZMiniboss:	ds.b 0x4BC
ArtNem_CNZEndBoss:	ds.b 0x514
ArtUnc_Clamer:	ds.b 0x1140
ArtKosM_ClamerShot:dsb	0x72
ArtKosM_Sparkle:dsb	0x322
ArtKosM_Batbot:dsb	0x222
ArtKosM_CNZBalloon:dsb	0x1500
ArtNem_ICZMisc1:	ds.b 0xC24

ArtNem_ICZIntroSprites:	ds.b 0x482
ArtNem_ICZMisc2:	ds.b 0x36A
ArtNem_ICZEndBoss:	ds.b 0xDAE
ArtNem_ICZMiniboss:	ds.b 0x488
ArtUnc_Penguinator:	ds.b 0xFE0
ArtKosM_ICZSnowdust:dsb	0x92
ArtKosM_StarPointer:dsb	0x192
ArtKosM_LBZMiniboss:	ds.b 0x322
ArtKosM_LBZMinibossBox:	ds.b 0x322

ArtNem_LBZFinalBoss1:	ds.b 0xBA6
ArtKosM_LBZEndBoss:	ds.b 0x332
ArtKosM_LBZFinalBoss2:	ds.b 0x1122
ArtKosM_SnailBlaster:dsb	0x252
ArtKosM_Ribot:dsb	0x132
ArtKosM_Orbinaut:dsb	0xE2
ArtKosM_Corkey:dsb	0xC2
ArtUnc_Flybot:	ds.b 0x1320
ArtNem_LBZKnuxBomb:	ds.b 0x3E
ArtKosM_LBZ2DeathEggSmall:	ds.b 0x64D2
ArtKosM_LBZ2DeathEgg2_8x8:ds.b 0x462
ArtNem_AIZBossFire:	ds.b 0x2AD4
ArtKosM_AIZIntroPlane:	ds.b 0x7A2
ArtUnc_CutsceneKnux:	ds.b 0x4EE0
ArtKosM_AIZIntroEmeralds:	ds.b 0x44F4
ArtKosM_TailsEndPose:	ds.b 0x1246
ArtNem_S38x16Font:	ds.b 0x1A6
ArtNem_AIZCorkFloor:ds.b 0x1A4
ArtNem_AIZCorkFloor2:	ds.b 0x192

ArtNem_AIZSwingVine:ds.b 0x166

ArtNem_AIZSlideRope:ds.b 0x124
ArtNem_AIZBackgroundTree:ds.b 0x14A

ArtNem_AIZMisc1:	ds.b 0x848
ArtNem_AIZFallingLog:ds.b 0x288
ArtNem_AIZMisc2:dsb	0x138C

ArtNem_HCZSpikeBall:	ds.b 0xC8

ArtNem_HCZWaveSplash:	ds.b 0x120

ArtNem_HCZButton:	ds.b 0xB4

ArtNem_HCZMisc:	ds.b 0x5C0

ArtNem_HCZWaterRush:	ds.b 0x5B8
ArtKosM_HCZLargeFan:	ds.b 0x302
ArtKosM_HCZGeyserHorz:	ds.b 0x792
ArtKosM_HCZGeyserVert:	ds.b 0x7A2

ArtNem_HCZ2Slide:	ds.b 0x516
ArtNem_HCZ2BlockPlat:	ds.b 0x348
ArtUnc_HCZWaterSplash2:	ds.b 0x780
ArtUnc_HCZWaterSplash:	ds.b 0xC00
ArtNem_HCZ2KnuxWall:	ds.b 0x11A
ArtNem_MGZMisc1:	ds.b 0xA3E

ArtNem_MGZMisc2:	ds.b 0x610

ArtNem_MGZSigns:	ds.b 0x23A

ArtNem_CNZMisc:	ds.b 0xDBE
ArtNem_CNZPlatform:	ds.b 0x16A
ArtNem_LBZMisc:	ds.b 0xB1E

ArtNem_LBZTubeTrans:	ds.b 0x264
ArtNem_LBZ2Misc:	ds.b 0x43C
ArtNem_2PArt_1:	ds.b 0x174

ArtNem_2PArt_2:	ds.b 0x1F2

ArtNem_2PArt_3:	ds.b 0x4F6

ArtNem_2PStartPost:	ds.b 0x178

ArtNem_2PTime:	ds.b 0x65A

ArtNem_2PLapNum:	ds.b 0x4FA

ArtNem_2PPosIcon:	ds.b 0x9A

ArtNem_BPZMisc:	ds.b 0x84A
ArtNem_DPZMisc:	ds.b 0xD16
ArtNem_CGZMisc:	ds.b 0x374
ArtNem_EMZMisc:	ds.b 0x292
ArtKosM_AIZ2Bombership2_8x8:ds.b 0xD54
ArtKosM_ResultsMILES:	ds.b 0x152
ArtKosM_ResultsTAILS:	ds.b 0x125E

ArtKosM_AIZTitleCard:ds.b 0x112
ArtKosM_HCZTitleCard:ds.b 0x152
ArtKosM_MGZTitleCard:ds.b 0x1C2
ArtKosM_CNZTitleCard:ds.b 0x2F4
ArtKosM_ICZTitleCard:ds.b 0xD2
ArtKosM_LBZTitleCard:ds.b 0x152
ArtKosM_ALZTitleCard:ds.b 0x1B2
ArtKosM_BPZTitleCard:ds.b 0x222
ArtKosM_CGZTitleCard:ds.b 0x242
ArtKosM_DPZTitleCard:ds.b 0x202
ArtKosM_EMZTitleCard:ds.b 0x344
Pal_SaveMenuBG:ds.b 0x20
Pal_CompetitionMenuBG:	ds.b 0x20
MapEni_S3MenuBG:ds.b 0x202
ArtKos_S3MenuBG:	ds.b 0x1C60
MapEni_CompetitionLevBorder:dsb	0x4C
MapUnc_CompetitionTimeBorder:ds.b 0xD8









MapUnc_CompetitionBESTTIME:ds.b 0x24



MapEni_CompetitionLevImage:dsb	0x120
MapEni_CompetitionLevName:dsb	0x102
ArtKos_CompetitionMode:	ds.b 0x410
ArtKos_CompetitionLevel:	ds.b 0x1E40
ArtKos_CompetitionResults:	ds.b 0x430
Map_CompetitionPlayerSprite:	ds.b 0x42

ArtKos_CompetitionPlayer:	ds.b 0x4F0
MapEni_SaveScreen_Layout:dsb	0xBE
MapUnc_SaveScreenNEW:dsb	0x8C







MapPtrs_SaveScreenStatic:ds.b 0x240
































ArtKos_SaveScreenMisc:dsb	0x13A0

AIZ1_16x16_Primary_Kos:ds.b 0x200
AIZ1_16x16_Secondary_Kos:ds.b 0xC40
AIZ1_16x16_MainLevel_Kos:ds.b 0x10E0
AIZ1_8x8_Primary_KosM:ds.b 0xE12
AIZ1_8x8_Secondary_KosM:ds.b 0x2FD2
AIZ1_8x8_MainLevel_KosM:ds.b 0x27F2
AIZ1_128x128_Kos:ds.b 0x3990
AIZ1_8x8_Flames_KosM:dsb	0xA82

AIZ2_16x16_Primary_Kos:ds.b 0x8A0
AIZ2_16x16_Secondary_Kos:ds.b 0xA80
AIZ2_16x16_BomberShip_Kos:ds.b 0x260
AIZ2_8x8_Primary_KosM:ds.b 0x21B2
AIZ2_8x8_Secondary_KosM:ds.b 0x1142
AIZ2_8x8_BomberShip_KosM:ds.b 0x922
AIZ2_128x128_Kos:ds.b 0x4010

HCZ_16x16_Primary_Kos:ds.b 0x470
HCZ_8x8_Primary_KosM:ds.b 0xC42
HCZ_128x128_Primary_Kos:ds.b 0x340

HCZ1_16x16_Secondary_Kos:ds.b 0x890
HCZ1_8x8_Secondary_KosM:ds.b 0x2252
HCZ1_128x128_Secondary_Kos:dsb	0x20B0

HCZ2_16x16_Secondary_Kos:ds.b 0x8F0
HCZ2_8x8_Secondary_KosM:ds.b 0x1E82
HCZ2_128x128_Secondary_Kos:dsb	0x1C80

MGZ_16x16_Primary_Kos:ds.b 0x950
MGZ_8x8_Primary_KosM:ds.b 0x25A2
MGZ_128x128_Primary_Kos:ds.b 0x2300

MGZ1_16x16_Secondary_Kos:ds.b 0x310
MGZ1_8x8_Secondary_KosM:ds.b 0x9E2
MGZ1_128x128_Secondary_Kos:dsb	0x880

MGZ2_16x16_Secondary_Kos:ds.b 0x460
MGZ2_8x8_Secondary_KosM:ds.b 0x1092
MGZ2_128x128_Secondary_Kos:dsb	0x9F0
MGZ2_QuakeChunks:	ds.b 0x1080

CNZ_16x16_Kos:	ds.b 0x1040
CNZ_8x8_KosM:	ds.b 0x3222
CNZ_128x128_Kos:ds.b 0x3120

ICZ_16x16_Primary_Kos:ds.b 0x2E0
ICZ_8x8_Primary_KosM:ds.b 0x1412
ICZ_128x128_Primary_Kos:ds.b 0x2B0

ICZ1_16x16_Secondary_Kos:ds.b 0xB70
ICZ1_8x8_Secondary_KosM:ds.b 0x1F82
ICZ1_128x128_Secondary_Kos:dsb	0x1E20

ICZ2_16x16_Secondary_Kos:ds.b 0xCA0
ICZ2_8x8_Secondary_KosM:ds.b 0x20B2
ICZ2_128x128_Secondary_Kos:dsb	0x1AD0

LBZ_16x16_Primary_Kos:ds.b 0x540
LBZ1_16x16_Secondary_Kos:ds.b 0xAF0
LBZ_8x8_Primary_KosM:ds.b 0x1752
LBZ1_8x8_Secondary_KosM:ds.b 0x1D92
LBZ1_128x128_Kos:ds.b 0x2FD0

LBZ2_16x16_Secondary_Kos:ds.b 0xA40
LBZ2_16x16_DeathEgg_Kos:ds.b 0xE20
LBZ2_8x8_Secondary_KosM:ds.b 0x17A2
LBZ2_8x8_DeathEgg_KosM:ds.b 0x1F92
LBZ2_128x128_Kos:ds.b 0x24D0
LBZ2_128x128_DeathEgg_Kos:ds.b 0xCF0

ALZ_16x16_Kos:	ds.b 0xAC0
ALZ_8x8_KosM:	ds.b 0x2DB2
ALZ_128x128_Kos:ds.b 0x690

BPZ_16x16_Kos:	ds.b 0x8D0
BPZ_8x8_KosM:	ds.b 0x1FE2
BPZ_128x128_Kos:ds.b 0x6F0

DPZ_16x16_Kos:	ds.b 0x9E0
DPZ_8x8_KosM:	ds.b 0x1AF2
DPZ_128x128_Kos:ds.b 0x630

CGZ_16x16_Kos:	ds.b 0x750
CGZ_8x8_KosM:	ds.b 0x25A2
CGZ_128x128_Kos:ds.b 0x4C0

EMZ_16x16_Kos:	ds.b 0xAB0
EMZ_8x8_KosM:	ds.b 0x2C32
EMZ_128x128_Kos:ds.b 0x710

Gumball_16x16_Kos:ds.b 0x420
Gumball_8x8_KosM:ds.b 0xD52
Gumball_128x128_Kos:ds.b 0x480
