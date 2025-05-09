LockOnROM_Start:		.incbin "Lockon S3/Header.bin"
	.align 2

SSMagic_TestLoc_200114		= LockOnROM_Start+0x114
SSMagic_TestLoc_20011A		= LockOnROM_Start+0x11A
LockonDate			= LockOnROM_Start+0x11C
SSMagic_TestLoc_200150		= LockOnROM_Start+0x150
LockonSerialNumber		= LockOnROM_Start+0x180
SSMagic_TestLoc_2001A4		= LockOnROM_Start+0x1A4

Pal_Competition1:		.incbin "General/Competition Menu/Palettes/1.bin"
	.align 2
Map_CompetitionObject:		.include "General/Competition Menu/Map - Competition Objects.S"

MapUnc_CompetitionNumbers:	.incbin "General/Competition Menu/Uncompressed Map/Numbers.bin"
	.align 2
Pal_Competition2:		.incbin "General/Competition Menu/Palettes/2.bin"
	.align 2
Pal_Competition3:		.incbin "General/Competition Menu/Palettes/3.bin"
	.align 2
Pal_Competition4:		.incbin "General/Competition Menu/Palettes/4.bin"
	.align 2
Map_CompetitionSelect:		.include "General/Competition Menu/Map - Competition Select.S"

Pal_CompetitionResults:		.incbin "General/Competition Menu/Palettes/Results.bin"
	.align 2
MapEni_CompetitionResultsLED:	.incbin "General/Competition Menu/Enigma Map/Menu.bin"
	.align 2
MapUnc_CompetitionResultsLetters:.incbin "General/Competition Menu/Uncompressed Map/Results Letters.bin"
	.align 2
MapUnc_CompetitionResultsDividers:.incbin "General/Competition Menu/Uncompressed Map/Results Dividers.bin"
	.align 2
MapUnc_CompetitionResultsTOTAL:	.incbin "General/Competition Menu/Uncompressed Map/Results TOTAL.bin"
	.align 2
MapUnc_ResultsWin:		.incbin "General/Competition Menu/Uncompressed Map/Results Win.bin"
	.align 2
MapUnc_ResultsLose:		.incbin "General/Competition Menu/Uncompressed Map/Results Lose.bin"
	.align 2
MapUnc_ResultsTie:		.incbin "General/Competition Menu/Uncompressed Map/Results Tie.bin"
	.align 2
Pal_CompetitionTimeAttack:	.incbin "General/Competition Menu/Palettes/Time Attack.bin"
	.align 2
MapUnc_CompetitionLAPNum:	.incbin "General/Competition Menu/Uncompressed Map/LAP.bin"
	.align 2
MapUnc_CompetitionRECORDS:	.incbin "General/Competition Menu/Uncompressed Map/RECORDS.bin"
	.align 2
MapUnc_Competition1st2nd3rd:	.incbin "General/Competition Menu/Uncompressed Map/1ST 2ND 3RD.bin"
	.align 2
MapUnc_CompetitionAZURELAKE:	.incbin "General/Competition Menu/Uncompressed Map/AZURE LAKE.bin"
	.align 2
MapUnc_CompetitionBALLOONPARK:	.incbin "General/Competition Menu/Uncompressed Map/BALLOON PARK.bin"
	.align 2
MapUnc_CompetitionCHROMEGADGET:	.incbin "General/Competition Menu/Uncompressed Map/CHROME GADGET.bin"
	.align 2
MapUnc_CompetitionDESERTPALACE:	.incbin "General/Competition Menu/Uncompressed Map/DESERT PALACE.bin"
	.align 2
MapUnc_CompetitionENDLESSMINE:	.incbin "General/Competition Menu/Uncompressed Map/ENDLESS MINE.bin"
	.align 2
ArtKos_SaveScreenS3Zone:	.incbin "General/Save Menu/Kosinski Art/Zone Art.bin"
	.align 2
Map_AIZ1Tree:			.include "Levels/AIZ/Misc Object Data/Map - Act 1 Tree.S"

Map_AIZ1ZiplinePeg:		.include "Levels/AIZ/Misc Object Data/Map - Act 1 Zipline Peg.S"

Map_BreakableBar:		.include "Levels/HCZ/Misc Object Data/Map - Breakable Bar.S"

Map_HCZBlock:			.include "Levels/HCZ/Misc Object Data/Map - Block.S"

Map_AIZRock:			.include "Levels/AIZ/Misc Object Data/Map - Rock.S"

Map_AIZRock2:			.include "Levels/AIZ/Misc Object Data/Map - Rock 2.S"

Map_EMZRock:			.include "Levels/EMZ/Misc Object Data/Map - Rock.S"

Map_AIZCollapsingPlatform:	.include "Levels/AIZ/Misc Object Data/Map - Collapsing Platform.S"

Map_AIZCollapsingPlatform2:	.include "Levels/AIZ/Misc Object Data/Map - Collapsing Platform 2.S"

Map_LBZCollapsingBridge:	.include "Levels/LBZ/Misc Object Data/Map - Collapsing Bridge.S"

Map_LBZCollapsingLedge:		.include "Levels/LBZ/Misc Object Data/Map - Collapsing Ledge.S"

Map_HCZCollapsingBridge:	.include "Levels/HCZ/Misc Object Data/Map - Collapsing Bridge.S"

Map_MGZCollapsingBridge:	.include "Levels/MGZ/Misc Object Data/Map - Collapsing Bridge.S"

Map_ICZCollapsingBridge:	.include "Levels/ICZ/Misc Object Data/Map - Collapsing Bridge.S"

Map_AIZBreakableWall:		.include "Levels/AIZ/Misc Object Data/Map - Breakable Wall.S"

Map_MGZBreakableWall:		.include "Levels/MGZ/Misc Object Data/Map - Breakable Wall.S"

Map_HCZBreakableWall:		.include "Levels/HCZ/Misc Object Data/Map - Breakable Wall.S"

Map_LBZBreakableWall:		.include "Levels/LBZ/Misc Object Data/Map - Breakable Wall.S"

Map_AIZIntroWaves:		.include "Levels/AIZ/Misc Object Data/Map - Intro Waves.S"

Map_LBZUnusedElevator:		.include "Levels/LBZ/Misc Object Data/Map - Unused Elevator.S"

Map_LBZExplodingTrigger:	.include "Levels/LBZ/Misc Object Data/Map - Exploding Trigger.S"

Map_MGZDashTrigger:		.include "Levels/MGZ/Misc Object Data/Map - Dash Trigger.S"

Map_LBZTriggerBridge:		.include "Levels/LBZ/Misc Object Data/Map - Trigger Bridge.S"

Map_LBZPlayerLauncher:		.include "Levels/LBZ/Misc Object Data/Map - Player Launcher.S"

Map_LBZFlameThrower:		.include "Levels/LBZ/Misc Object Data/Map - Flame Thrower.S"

Map_LBZCupElevator:		.include "Levels/LBZ/Misc Object Data/Map - Cup Elevator.S"

Map_LBZUnusedUnknown:		.include "Levels/LBZ/Misc Object Data/Map - Unused Unknown.S"

Map_LBZPipePlug:		.include "Levels/LBZ/Misc Object Data/Map - PipePlug.S"

Map_LBZSpinLauncher:		.include "Levels/LBZ/Misc Object Data/Map - Spin Launcher.S"

Map_LBZLoweringGrapple:		.include "Levels/LBZ/Misc Object Data/Map - Lowering Grapple.S"

Map_LBZSmashingSpikes:		.include "Levels/LBZ/Misc Object Data/Map - Smashing Spikes.S"

Map_MGZSmashingPillar:		.include "Levels/MGZ/Misc Object Data/Map - Smashing Pillar.S"

Map_LBZGateLaser:		.include "Levels/LBZ/Misc Object Data/Map - Gate Laser.S"

Map_LBZTubeElevator:		.include "Levels/LBZ/Misc Object Data/Map - Tube Elevator.S"

Map_AIZDisappearingFloor:	.include "Levels/AIZ/Misc Object Data/Map - Disappearing Floor.S"

Map_AIZCorkFloor:		.include "Levels/AIZ/Misc Object Data/Map - Cork Floor.S"

Map_AIZCorkFloor2:		.include "Levels/AIZ/Misc Object Data/Map - Cork Floor 2.S"

Map_CNZCorkFloor:		.include "Levels/CNZ/Misc Object Data/Map - Cork Floor.S"

Map_ICZCorkFloor:		.include "Levels/ICZ/Misc Object Data/Map - Cork Floor.S"

Map_LBZCorkFloor:		.include "Levels/LBZ/Misc Object Data/Map - Cork Floor.S"

Map_AIZFlippingBridge:		.include "Levels/AIZ/Misc Object Data/Map - Flipping Bridge.S"

Map_AIZFallingLog2:		.include "Levels/AIZ/Misc Object Data/Map - Falling Log 2.S"

Map_AIZFallingLog:		.include "Levels/AIZ/Misc Object Data/Map - Falling Log.S"

Map_AIZFallingLogSplash2:	.include "Levels/AIZ/Misc Object Data/Map - Falling Log Splash 2.S"

Map_AIZFallingLogSplash:	.include "Levels/AIZ/Misc Object Data/Map - Falling Log Splash.S"

Map_AIZSpikedLog:		.include "Levels/AIZ/Misc Object Data/Map - Spiked Log.S"

Map_AIZForegroundPlant:		.include "Levels/AIZ/Misc Object Data/Map - Foreground Plant.S"

Map_Button2:			.include "General/Sprites/Buttons/Map - Button 2.S"

Map_CNZButton:			.include "Levels/CNZ/Misc Object Data/Map - Button.S"

Map_2PButton:			.include "General/2P Zone/Map - 2P Button.S"

Map_HCZWaterRush:		.include "Levels/HCZ/Misc Object Data/Map - Water Rush.S"

Map_HCZWaterRushBlock:		.include "Levels/HCZ/Misc Object Data/Map - Water Rush Block.S"

Map_HCZWaterWall:		.include "Levels/HCZ/Misc Object Data/Map - Waterfall.S"

Map_HCZWaterWallDebris:		.include "Levels/HCZ/Misc Object Data/Map - Water Wall Debris.S"

Map_HCZFan:			.include "Levels/HCZ/Misc Object Data/Map - Fan.S"

Map_HCZLargeFan:		.include "Levels/HCZ/Misc Object Data/Map - Large Fan.S"

Map_CGZFan:			.include "Levels/CGZ/Misc Object Data/Map - Fan.S"

Map_HCZHandLauncher:		.include "Levels/HCZ/Misc Object Data/Map - Hand Launcher.S"

Map_HCZConveyorSpike:		.include "Levels/HCZ/Misc Object Data/Map - Conveyor Spike.S"

Map_CNZBalloon:			.include "Levels/CNZ/Misc Object Data/Map - Balloon.S"

Map_CNZCannon:			.include "General/Sprites/CNZ Cannon/Map - CNZ Cannon.S"

Map_CNZRisingPlatform:		.include "Levels/CNZ/Misc Object Data/Map - Rising Platform.S"

Map_CNZTrapDoor:		.include "Levels/CNZ/Misc Object Data/Map - Trap Door.S"

Map_CNZLightBulb:		.include "Levels/CNZ/Misc Object Data/Map - Light Bulb.S"

Map_CNZHoverFan:		.include "Levels/CNZ/Misc Object Data/Map - Hover Fan.S"

Map_CNZCylinder:		.include "Levels/CNZ/Misc Object Data/Map - Cylinder.S"

Map_HCZSpinningColumn:		.include "Levels/HCZ/Misc Object Data/Map - Spinning Column.S"

Map_Bumper:			.include "General/Sprites/Level Misc/Map - Bumper.S"

Map_2PBumper:			.include "General/2P Zone/Map - 2P Bumper.S"

Map_MGZSwingingPlatform:	.include "Levels/MGZ/Misc Object Data/Map - Swinging Platform.S"

Map_MGZSwingingSpikeBall:	.include "Levels/MGZ/Misc Object Data/Map - Swinging Spike Ball.S"

Map_MGZHeadTrigger:		.include "Levels/MGZ/Misc Object Data/Map - Head Trigger.S"

Map_MGZTriggerPlatform:		.include "Levels/MGZ/Misc Object Data/Map - Trigger Platform.S"

Map_MGZMovingSpikePlatform:	.include "Levels/MGZ/Misc Object Data/Map - Moving Spike Platform.S"

Map_MGZPulley:			.include "Levels/MGZ/Misc Object Data/Map - Pulley.S"

Map_HCZWaterDrop:		.include "Levels/HCZ/Misc Object Data/Map - Water Drop.S"

Map_HCZWaterSplash:		.include "Levels/HCZ/Misc Object Data/Map - Water Splash.S"

Map_HCZWaterSplash2:		.include "Levels/HCZ/Misc Object Data/Map - Water Splash 2.S"

	.include "Lockon S3/Screen Events.S"

Map_S3EndingGraphics:		.include "General/Ending/Map - S3 Ending Graphics.S"

ArtNem_S3EndingGraphics:	.incbin "General/Ending/Nemesis Art/S3 Ending Graphics.bin"
	.align 2
SStageLayoutPtrs:		.long SStage1_Layout
				.long SStage2_Layout
				.long SStage3_Layout
				.long SStage4_Layout
				.long SStage5_Layout
				.long SStage6_Layout
				.long SStage7_Layout
				.long SStage8_Layout

SStage1_Layout:			.incbin "General/Special Stage/Layout/S3 1.bin"
	.align 2
SStage2_Layout:			.incbin "General/Special Stage/Layout/S3 2.bin"
	.align 2
SStage3_Layout:			.incbin "General/Special Stage/Layout/S3 3.bin"
	.align 2
SStage4_Layout:			.incbin "General/Special Stage/Layout/S3 4.bin"
	.align 2
SStage5_Layout:			.incbin "General/Special Stage/Layout/S3 5.bin"
	.align 2
SStage6_Layout:			.incbin "General/Special Stage/Layout/S3 6.bin"
	.align 2
SStage7_Layout:			.incbin "General/Special Stage/Layout/S3 7.bin"
	.align 2
SStage8_Layout:			.incbin "General/Special Stage/Layout/S3 8.bin"
	.align 2
HCZ_WaterlineScroll_Data:	.incbin "Levels/HCZ/Misc/HCZ Waterline Scroll Data.bin"
	.align 2
LBZ_WaterlineScroll_Data:	.incbin "Levels/LBZ/Misc/LBZ Waterline Scroll Data.bin"
	.align 2
Solid_AIZ1:			.incbin "Levels/AIZ/Collision/1.bin"
	.align 2
Solid_AIZ2:			.incbin "Levels/AIZ/Collision/2.bin"
	.align 2
Solid_HCZ1:			.incbin "Levels/HCZ/Collision/1.bin"
	.align 2
Solid_HCZ2:			.incbin "Levels/HCZ/Collision/2.bin"
	.align 2
Solid_MGZ1:			.incbin "Levels/MGZ/Collision/1.bin"
	.align 2
Solid_MGZ2:			.incbin "Levels/MGZ/Collision/2.bin"
	.align 2
Solid_CNZ:			.incbin "Levels/CNZ/Collision/1.bin"
	.align 2
Solid_ICZ1:			.incbin "Levels/ICZ/Collision/1.bin"
	.align 2
Solid_ICZ2:			.incbin "Levels/ICZ/Collision/2.bin"
	.align 2
Solid_LBZ1:			.incbin "Levels/LBZ/Collision/1.bin"
	.align 2
Solid_LBZ2:			.incbin "Levels/LBZ/Collision/2.bin"
	.align 2
Solid_ALZ:			.incbin "Levels/ALZ/Collision/1.bin"
	.align 2
Solid_BPZ:			.incbin "Levels/BPZ/Collision/1.bin"
	.align 2
Solid_DPZ:			.incbin "Levels/DPZ/Collision/1.bin"
	.align 2
Solid_CGZ:			.incbin "Levels/CGZ/Collision/1.bin"
	.align 2
Solid_EMZ:			.incbin "Levels/EMZ/Collision/1.bin"
	.align 2
Solid_Gumball_Special:		.incbin "Levels/Gumball/Collision/1.bin"
	.align 2
Layout_AIZ1:			.incbin "Levels/AIZ/Layout/1.bin"
	.align 2
Layout_AIZ2:			.incbin "Levels/AIZ/Layout/2.bin"
	.align 2
Layout_HCZ1:			.incbin "Levels/HCZ/Layout/1.bin"
	.align 2
Layout_HCZ2:			.incbin "Levels/HCZ/Layout/2.bin"
	.align 2
Layout_MGZ1:			.incbin "Levels/MGZ/Layout/1.bin"
	.align 2
Layout_MGZ2:			.incbin "Levels/MGZ/Layout/2.bin"
	.align 2
Layout_CNZ1:			.incbin "Levels/CNZ/Layout/1.bin"
	.align 2
Layout_CNZ2:			.incbin "Levels/CNZ/Layout/2.bin"
	.align 2
Layout_ICZ1:			.incbin "Levels/ICZ/Layout/1.bin"
	.align 2
Layout_ICZ2:			.incbin "Levels/ICZ/Layout/2.bin"
	.align 2
Layout_LBZ1:			.incbin "Levels/LBZ/Layout/1.bin"
	.align 2
Layout_LBZ2:			.incbin "Levels/LBZ/Layout/2.bin"
	.align 2
Layout_ALZ:			.incbin "Levels/ALZ/Layout/1.bin"
	.align 2
Layout_BPZ:			.incbin "Levels/BPZ/Layout/1.bin"
	.align 2
Layout_DPZ:			.incbin "Levels/DPZ/Layout/1.bin"
	.align 2
Layout_CGZ:			.incbin "Levels/CGZ/Layout/1.bin"
	.align 2
Layout_EMZ:			.incbin "Levels/EMZ/Layout/1.bin"
	.align 2
Layout_Gumball_Special:		.incbin "Levels/Gumball/Layout/1.bin"
	.align 2
ArtUnc_CNZCannon:		.incbin "General/Sprites/CNZ Cannon/CNZ Cannon.bin"
	.align 2
ArtUnc_SStageTails:		.incbin "General/Sprites/Tails/Art/SStage Tails.bin"
	.align 2
Map_SStageTails:		.include "General/Sprites/Tails/Map - SStage Tails.S"

ArtUnc_SStageTailstails:	.incbin "General/Sprites/Tails/Art/SStage Tails tails.bin"
	.align 2
Map_SStageTailstails:		.include "General/Sprites/Tails/Map - SStage Tails tails.S"

Map_Sonic2P:			.include "General/Sprites/Sonic/Map - Sonic 2P.S"

PLC_Sonic2P:			.include "General/Sprites/Sonic/DPLC - Sonic 2P.S"

Map_Tails2P:			.include "General/Sprites/Tails/Map - Tails 2P.S"

Map_Tails2P_Tail:		.include "General/Sprites/Tails/Map - Tails tail 2P.S"

PLC_Tails2P:			.include "General/Sprites/Tails/DPLC - Tails 2P.S"

DPLC_Tails2P_Tail:		.include "General/Sprites/Tails/DPLC - Tails tails 2P.S"

Map_Knuckles2P:			.include "General/Sprites/Knuckles/Map - Knuckles 2P.S"

PLC_Knuckles2P:			.include "General/Sprites/Knuckles/DPLC - Knuckles 2P.S"
	.align 0x20
ArtUnc_AniAIZ1_0:		.incbin "Levels/AIZ/Animated Tiles/Act1 0.bin"
	.align 2
ArtUnc_AniAIZ1_1:		.incbin "Levels/AIZ/Animated Tiles/Act1 1.bin"
	.align 2
ArtUnc_AniAIZ2_1:		.incbin "Levels/AIZ/Animated Tiles/Act2 1.bin"
	.align 2
ArtUnc_AniAIZ2_0:		.incbin "Levels/AIZ/Animated Tiles/Act2 0.bin"
	.align 2
ArtUnc_AniAIZ2_3:		.incbin "Levels/AIZ/Animated Tiles/Act2 3.bin"
	.align 2
ArtUnc_AniAIZ2_2:		.incbin "Levels/AIZ/Animated Tiles/Act2 2.bin"
	.align 2
ArtUnc_AniAIZ2_FirstTree:	.incbin "Levels/AIZ/Animated Tiles/Act2 First Tree.bin"
	.align 2
ArtUnc_AniHCZ1_0:		.incbin "Levels/HCZ/Animated Tiles/Act1 0.bin"
	.align 2
ArtUnc_AniHCZ1_WaterlineBelow:	.incbin "Levels/HCZ/Animated Tiles/Act1 Water Below 1.bin"
	.align 2
ArtUnc_FixHCZ1_UpperBG1:	.incbin "Levels/HCZ/Animated Tiles/Act1 Upper BG 1.bin"
	.align 2
ArtUnc_AniHCZ1_WaterlineAbove:	.incbin "Levels/HCZ/Animated Tiles/Act1 Water Above 1.bin"
	.align 2
ArtUnc_FixHCZ1_LowerBG1:	.incbin "Levels/HCZ/Animated Tiles/Act1 Lower BG 1.bin"
	.align 2
ArtUnc_AniHCZ1_WaterlineBelow2:	.incbin "Levels/HCZ/Animated Tiles/Act1 Water Below 2.bin"
	.align 2
ArtUnc_FixHCZ1_UpperBG2:	.incbin "Levels/HCZ/Animated Tiles/Act1 Upper BG 2.bin"
	.align 2
ArtUnc_AniHCZ1_WaterlineAbove2:	.incbin "Levels/HCZ/Animated Tiles/Act1 Water Above 2.bin"
	.align 2
ArtUnc_FixHCZ1_LowerBG2:	.incbin "Levels/HCZ/Animated Tiles/Act1 Lower BG 2.bin"
	.align 2
ArtUnc_AniHCZ__1:		.incbin "Levels/HCZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniHCZ2_0:		.incbin "Levels/HCZ/Animated Tiles/Act2 0.bin"
	.align 2
ArtUnc_AniHCZ2_SmallBGLine:	.incbin "Levels/HCZ/Animated Tiles/Act2 1.bin"
	.align 2
ArtUnc_AniHCZ2_2:		.incbin "Levels/HCZ/Animated Tiles/Act2 2.bin"
	.align 2
ArtUnc_AniHCZ2_3:		.incbin "Levels/HCZ/Animated Tiles/Act2 3.bin"
	.align 2
ArtUnc_AniHCZ2_4:		.incbin "Levels/HCZ/Animated Tiles/Act2 4.bin"
	.align 2
ArtUnc_AniMGZ__0:		.incbin "Levels/MGZ/Animated Tiles/MGZ Animated 0.bin"
	.align 2
ArtUnc_AniMGZ__1:		.incbin "Levels/MGZ/Animated Tiles/MGZ Animated 1.bin"
	.align 2
ArtUnc_AniCNZ__0:		.incbin "Levels/CNZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniCNZ__1:		.incbin "Levels/CNZ/Animated Tiles/1.bin"
	.align 2
ArtUnc_AniCNZ__2:		.incbin "Levels/CNZ/Animated Tiles/2.bin"
	.align 2
ArtUnc_AniCNZ__3:		.incbin "Levels/CNZ/Animated Tiles/3.bin"
	.align 2
ArtUnc_AniCNZ__4:		.incbin "Levels/CNZ/Animated Tiles/4.bin"
	.align 2
ArtUnc_AniCNZ__6:		.incbin "Levels/CNZ/Animated Tiles/6.bin"
	.align 2
ArtUnc_AniCNZ__5:		.incbin "Levels/CNZ/Animated Tiles/5.bin"
	.align 2
ArtUnc_AniICZ__1:		.incbin "Levels/ICZ/Animated Tiles/1.bin"
	.align 2
ArtUnc_AniICZ__2:		.incbin "Levels/ICZ/Animated Tiles/2.bin"
	.align 2
ArtUnc_AniICZ__3:		.incbin "Levels/ICZ/Animated Tiles/3.bin"
	.align 2
ArtUnc_AniICZ__4:		.incbin "Levels/ICZ/Animated Tiles/4.bin"
	.align 2
ArtUnc_AniICZ__5:		.incbin "Levels/ICZ/Animated Tiles/5.bin"
	.align 2
ArtUnc_AniICZ__0:		.incbin "Levels/ICZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniLBZ1_0:		.incbin "Levels/LBZ/Animated Tiles/Act1 0.bin"
	.align 2
ArtUnc_AniLBZ1_1:		.incbin "Levels/LBZ/Animated Tiles/Act1 1.bin"
	.align 2
ArtUnc_AniLBZ1_2:		.incbin "Levels/LBZ/Animated Tiles/Act1 2.bin"
	.align 2
ArtUnc_AniLBZ2_2:		.incbin "Levels/LBZ/Animated Tiles/Act2 2.bin"
	.align 2
ArtUnc_AniLBZ2_WaterlineBelow:	.incbin "Levels/LBZ/Animated Tiles/Act2 Water Below.bin"
	.align 2
ArtUnc_AniLBZ2_LowerBG:		.incbin "Levels/LBZ/Animated Tiles/Act2 Lower BG.bin"
	.align 2
ArtUnc_AniLBZ2_WaterlineAbove:	.incbin "Levels/LBZ/Animated Tiles/Act2 Water Above.bin"
	.align 2
ArtUnc_AniLBZ2_UpperBG:		.incbin "Levels/LBZ/Animated Tiles/Act2 Upper BG.bin"
	.align 2
ArtUnc_AniLBZ__0:		.incbin "Levels/LBZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniLBZ2_0:		.incbin "Levels/LBZ/Animated Tiles/Act2 0.bin"
	.align 2
ArtUnc_AniLBZ2_1:		.incbin "Levels/LBZ/Animated Tiles/Act2 1.bin"
	.align 2
ArtUnc_AniALZ:			.incbin "Levels/ALZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniBPZ__0:		.incbin "Levels/BPZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniBPZ__1:		.incbin "Levels/BPZ/Animated Tiles/1.bin"
	.align 2
ArtUnc_AniBPZ__2:		.incbin "Levels/BPZ/Animated Tiles/2.bin"
	.align 2
ArtUnc_AniBPZ__3:		.incbin "Levels/BPZ/Animated Tiles/3.bin"
	.align 2
ArtUnc_AniDPZ:			.incbin "Levels/DPZ/Animated Tiles/0.bin"
	.align 2
ArtUnc_AniDPZ__BG:		.incbin "Levels/DPZ/Animated Tiles/BG 0.bin"
	.align 2
ArtUnc_AniGumball:		.incbin "Levels/Gumball/Animated Tiles/0.bin"
	.align 2
ArtUnc_SplashDrown:		.incbin "General/Sprites/Dash Dust/Splash Drown.bin"
	.align 2
ArtNem_Title_SonicSprites:	.incbin "General/Title/Nemesis Art/S3 Sonic Sprites.bin"
	.align 2
DemoDat_AIZ:			.incbin "Levels/AIZ/Demodata/1.bin"
	.align 2
DemoDat_HCZ:			.incbin "Levels/HCZ/Demodata/1.bin"
	.align 2
DemoDat_MGZ:			.incbin "Levels/MGZ/Demodata/1.bin"
	.align 2
ArtUnc_Tails:			.incbin "General/Sprites/Tails/Art/Tails.bin"
	.align 2
ArtUnc_Tails_Tail:		.incbin "General/Sprites/Tails/Art/Tails tails.bin"
	.align 2
ArtUnc_Sonic2P:			.incbin "General/Sprites/Sonic/Art/Sonic 2P.bin"
	.align 2
ArtUnc_Tails2P:			.incbin "General/Sprites/Tails/Art/Tails 2P.bin"
	.align 2
ArtUnc_Tails2P_Tail:		.incbin "General/Sprites/Tails/Art/Tails tails 2P.bin"
	.align 2
ArtUnc_Knuckles2P:		.incbin "General/Sprites/Knuckles/Art/Knuckles 2P.bin"
	.align 2
Map_Tails_Tail:			.include "General/Sprites/Tails/Map - Tails tails.S"

PLC_Tails_Tail:			.include "General/Sprites/Tails/Tails tails pattern load cues.S"

ICZSnowboard_Slope1:		.incbin "Levels/ICZ/Misc/ICZ Snowboard Slope 1.bin"
	.align 2
ICZSnowboard_Slope2:		.incbin "Levels/ICZ/Misc/ICZ Snowboard Slope 2.bin"
	.align 2
ArtUnc_SonicSnowboard:		.incbin "General/Sprites/Sonic/Art/Sonic Snowboarding.bin"
	.align 2
ArtUnc_Snowboard:		.incbin "General/Sprites/Snowboard/Snowboard.bin"
	.align 2
Map_SonicSnowboard:		.include "General/Sprites/Sonic/Map - Sonic Snowboarding.S"

DPLC_SonicSnowboard:		.include "General/Sprites/Sonic/DPLC - Sonic Snowboarding.S"

Map_Snowboard:			.include "General/Sprites/Snowboard/Map - Snowboard.S"

DPLC_Snowboard:			.include "General/Sprites/Snowboard/DPLC - Snowboard.S"

ArtNem_AIZIntroSprites:		.incbin "Levels/AIZ/Nemesis Art/Intro Waves.bin"
	.align 2
ArtNem_2PDashdust:		.incbin "General/2P Zone/Nemesis Art/Spindash Dust.bin"
	.align 2
MapEni_S3TitleSonic1:		.incbin "General/Title/Enigma Map/S3 Sonic 1.bin"
	.align 2
MapEni_S3TitleSonic2:		.incbin "General/Title/Enigma Map/S3 Sonic 2.bin"
	.align 2
MapEni_S3TitleSonic3:		.incbin "General/Title/Enigma Map/S3 Sonic 3.bin"
	.align 2
MapEni_S3TitleSonic4:		.incbin "General/Title/Enigma Map/S3 Sonic 4.bin"
	.align 2
MapEni_S3TitleSonic5:		.incbin "General/Title/Enigma Map/S3 Sonic 5.bin"
	.align 2
MapEni_S3TitleSonic6:		.incbin "General/Title/Enigma Map/S3 Sonic 6.bin"
	.align 2
MapEni_S3TitleSonic7:		.incbin "General/Title/Enigma Map/S3 Sonic 7.bin"
	.align 2
MapEni_S3TitleSonic8:		.incbin "General/Title/Enigma Map/S3 Sonic 8.bin"
	.align 2
MapEni_S3TitleSonic9:		.incbin "General/Title/Enigma Map/S3 Sonic 9.bin"
	.align 2
MapEni_S3TitleSonicA:		.incbin "General/Title/Enigma Map/S3 Sonic A.bin"
	.align 2
MapEni_S3TitleSonicB:		.incbin "General/Title/Enigma Map/S3 Sonic B.bin"
	.align 2
MapEni_S3TitleSonicC:		.incbin "General/Title/Enigma Map/S3 Sonic C.bin"
	.align 2
MapEni_S3TitleSonicD:		.incbin "General/Title/Enigma Map/S3 Sonic D.bin"
	.align 2
MapEni_S3TitleBg:		.incbin "General/Title/Enigma Map/S3 BG.bin"
	.align 2
Map_S3TitleBanner:		.include "General/Title/Map - S3 Banner.S"

ArtNem_Title_S3Banner:		.incbin "General/Title/Nemesis Art/S3 Banner.bin"
	.align 2
ArtKos_S3TitleSonic1:		.incbin "General/Title/Kosinski Art/S3 Sonic 1.bin"
	.align 2
ArtKos_S3TitleSonic8:		.incbin "General/Title/Kosinski Art/S3 Sonic 8.bin"
	.align 2
ArtKos_S3TitleSonic9:		.incbin "General/Title/Kosinski Art/S3 Sonic 9.bin"
	.align 2
ArtKos_S3TitleSonicA:		.incbin "General/Title/Kosinski Art/S3 Sonic A.bin"
	.align 2
ArtKos_S3TitleSonicB:		.incbin "General/Title/Kosinski Art/S3 Sonic B.bin"
	.align 2
ArtKos_S3TitleSonicC:		.incbin "General/Title/Kosinski Art/S3 Sonic C.bin"
	.align 2
ArtKos_S3TitleSonicD:		.incbin "General/Title/Kosinski Art/S3 Sonic D.bin"
	.align 2
ArtNem_TailsLifeIcon:		.incbin "General/Sprites/HUD Icon/Tails Life Icon.bin"
	.align 2
Map_LBZMiniboss:		.include "Levels/LBZ/Misc Object Data/Map - Miniboss.S"

Map_LBZMinibossBox:		.include "Levels/LBZ/Misc Object Data/Map - Miniboss Box.S"

Map_SnaleBlaster:		.include "General/Sprites/Snail Blaster/Map - Snail Blaster.S"

Map_Orbinaut:			.include "General/Sprites/Orbinaut/Map - Orbinaut.S"

Map_Ribot:			.include "General/Sprites/Ribot/Map - Ribot.S"

Map_Corkey:			.include "General/Sprites/Corkey/Map - Corkey.S"

Map_Flybot767:			.include "General/Sprites/Flybot/Map - Flybot.S"

DPLC_Flybot:			.include "General/Sprites/Flybot/DPLC - Flybot.S"

Map_LBZEndBoss:			.include "Levels/LBZ/Misc Object Data/Map - End Boss.S"

Map_CNZEndBoss:			.include "Levels/CNZ/Misc Object Data/Map - End Boss.S"

CNZEndBossMagnet_AngleX:	.byte    0,   1,   2,   3,   4,   5,   6,   8,   9,  0xA,  0xB,  0xC,  0xD,  0xE,  0xF, 0x10
				.byte  0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x18, 0x19, 0x1A, 0x-, 0x1C, 0x1D, 0x1E, 0x1E
				.byte  0x1F, 0x20, 0x21, 0x21, 0x22, 0x23, 0x23, 0x24, 0x25, 0x25, 0x26, 0x26, 0x27, 0x27, 0x28, 0x28
				.byte  0x29, 0x29, 0x29, 0x2A, 0x2A, 0x2A, 0x2B, 0x2B, 0x2B, 0x2B, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C
LBZFinalBoss2_CircleLookup:	.byte    0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  0xA,  0xB,  0xC,  0xD,  0xD,  0xE
				.byte   0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x15, 0x16, 0x17, 0x18, 0x19, 0x19, 0x1A, 0x-, 0x1C
				.byte  0x1C, 0x1D, 0x1E, 0x1E, 0x1F, 0x20, 0x20, 0x21, 0x21, 0x22, 0x22, 0x23, 0x23, 0x24, 0x24, 0x25
				.byte  0x25, 0x25, 0x26, 0x26, 0x26, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28

Map_Blastoid:			.include "General/Sprites/Blastoid/Map - Blastoid.S"

Map_Poindexter:			.include "General/Sprites/Pointdexter/Map - Pointdexter.S"

Map_Buggernaut:			.include "General/Sprites/Buggernaut/Map - Buggernaut.S"

Map_MegaChomper:		.include "General/Sprites/Mega Chomper/Map - Mega Chomper.S"

Map_TurboSpiker:		.include "General/Sprites/Turbo Spiker/Map - Turbo Spiker.S"

Map_Jawz:			.include "General/Sprites/Jawz/Map - Jawz.S"

DPLC_RhinoBot:			.include "General/Sprites/Rhino/DPLC - RhinoBot.S"

Map_RhinoBot:			.include "General/Sprites/Rhino/Map - RhinoBot.S"

Map_AIZMinibossFlame:		.include "Levels/AIZ/Misc Object Data/Map - Miniboss Flame.S"

Map_Tulipon:			.include "General/Sprites/Tulipon/Map - Tulipon.S"

Map_MonkeyDude:			.include "General/Sprites/Monkey Dude/Map - Monkey Dude.S"

Map_MGZMiniBoss:		.include "Levels/MGZ/Misc Object Data/Map - Miniboss.S"

Map_CaterKillerJr:		.include "General/Sprites/Caterkiller Jr/Map - Caterkiller Jr.S"

DPLC_Clamer:			.include "General/Sprites/Clamer/DPLC - Clamer.S"

Map_Clamer:			.include "General/Sprites/Clamer/Map - Clamer.S"

Map_CNZBlastoid:		.include "Levels/CNZ/Misc Object Data/Map - Blastoid.S"

Map_Batbot:			.include "General/Sprites/Batbot/Map - Batbot.S"

DPLC_BubblesBadnik:		.include "General/Sprites/Bubbles Badnik/DPLC - Bubbles Badnik.S"

Map_BubblesBadnik:		.include "General/Sprites/Bubbles Badnik/Map - Bubbles Badnik.S"

Map_Spiker:			.include "General/Sprites/Spiker/Map - Spiker.S"

Map_Mantis:			.include "General/Sprites/Mantis/Map - Mantis.S"

DPLC_Penguinator:		.include "General/Sprites/Penguinator/DPLC - Penguinator.S"

Map_Penguinator:		.include "General/Sprites/Penguinator/Map - Penguinator.S"

Map_ICZSnowdust:		.include "Levels/ICZ/Misc Object Data/Map - Snowdust.S"

Map_StarPointer:		.include "General/Sprites/Star Pointer/Map - Star Pointer.S"

Map_AIZEndBoss:			.include "Levels/AIZ/Misc Object Data/Map - End Boss.S"

Map_AIZMiniboss:		.include "Levels/AIZ/Misc Object Data/Map - Miniboss.S"

Map_AIZMinibossSmall:		.include "Levels/AIZ/Misc Object Data/Map - Miniboss Small.S"

Map_MGZEndBoss:			.include "Levels/MGZ/Misc Object Data/Map - End Boss.S"

HCZMiniboss_RocketTwistLookup:	.byte  0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x17, 0x17, 0x17, 0x17, 0x17, 0x17, 0x16
				.byte  0x16, 0x16, 0x16, 0x15, 0x15, 0x15, 0x15, 0x14, 0x14, 0x14, 0x13, 0x13, 0x13, 0x12, 0x12, 0x11
				.byte  0x11, 0x11, 0x10, 0x10,  0xF,  0xF,  0xE,  0xE,  0xD,  0xD,  0xC,  0xC,  0xB,  0xB,  0xA,  0xA
				.byte    9,   9,   8,   8,   7,   6,   6,   5,   5,   4,   4,   3,   2,   2,   1,   1
				.byte    0, 0xFF, 0xFF, 0xFE, 0xFE, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xFA, 0xF9, 0xF8, 0xF8, 0xF7
				.byte  0xF7, 0xF6, 0xF6, 0xF5, 0xF5, 0xF4, 0xF4, 0xF3, 0xF3, 0xF2, 0xF2, 0xF1, 0xF1, 0xF0, 0xF0, 0xEF
				.byte  0xEF, 0xEF, 0xEE, 0xEE, 0xED, 0xED, 0xED, 0xEC, 0xEC, 0xEC, 0xEB, 0xEB, 0xEB, 0xEB, 0xEA, 0xEA
				.byte  0xEA, 0xEA, 0xE9, 0xE9, 0xE9, 0xE9, 0xE9, 0xE9, 0xE8, 0xE8, 0xE8, 0xE8, 0xE8, 0xE8, 0xE8, 0xE8
LBZ2FinalBoss2_CircleLookup2:	.byte    0,   0,   1,   1,   2,   2,   3,   3,   4,   4,   5,   5,   6,   6,   7,   7
				.byte    8,   8,   9,   9,   9,  0xA,  0xA,  0xB,  0xB,  0xC,  0xC,  0xC,  0xD,  0xD,  0xD,  0xE
				.byte   0xE,  0xE,  0xF,  0xF,  0xF, 0x10, 0x10, 0x10, 0x11, 0x11, 0x11, 0x11, 0x12, 0x12, 0x12, 0x12
				.byte  0x12, 0x13, 0x13, 0x13, 0x13, 0x13, 0x13, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14

Map_HCZMiniboss:		.include "Levels/HCZ/Misc Object Data/Map - Miniboss.S"

Map_HCZMinibossSplash:		.include "Levels/HCZ/Misc Object Data/Map - Miniboss Splash.S"

DPLC_HCZMinibossSplash:		.include "Levels/HCZ/Misc Object Data/DPLC - Miniboss Splash.S"

Map_ICZEndBoss:			.include "Levels/ICZ/Misc Object Data/Map - End Boss.S"

Map_CNZMiniboss:		.include "Levels/CNZ/Misc Object Data/Map - Miniboss.S"

ICZMiniboss_OrbAngleLookup:	.byte    0,   1,   2,   4,   5,   6,   7,   8,   9,  0xB,  0xC,  0xD,  0xE,  0xF, 0x10, 0x11
				.byte  0x12, 0x13, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x-, 0x1C, 0x1D, 0x1E, 0x1E, 0x1F, 0x20, 0x21
				.byte  0x22, 0x23, 0x24, 0x24, 0x25, 0x26, 0x27, 0x27, 0x28, 0x29, 0x29, 0x2A, 0x2A, 0x2B, 0x2B, 0x2C
				.byte  0x2C, 0x2D, 0x2D, 0x2E, 0x2E, 0x2E, 0x2F, 0x2F, 0x2F, 0x2F, 0x2F, 0x30, 0x30, 0x30, 0x30, 0x30

Map_ICZMiniboss:		.include "Levels/ICZ/Misc Object Data/Map - Miniboss.S"

Map_HCZEndBoss:			.include "Levels/HCZ/Misc Object Data/Map - End Boss.S"

Map_MGZEndBossDebris:		.include "Levels/MGZ/Misc Object Data/Map - End Boss Debris.S"

Map_ICZWallAndColumn:		.include "Levels/ICZ/Misc Object Data/Map - Wall and Column.S"

Map_ICZPlatforms:		.include "Levels/ICZ/Misc Object Data/Map - Platforms.S"

Map_LBZKnuxBomb:		.include "Levels/LBZ/Misc Object Data/Map - Knuckles Bomb.S"

Map_CutsceneKnux:		.include "General/Sprites/Knuckles/Cutscene/Map - Cutscene Knuckles.S"

DPLC_CutsceneKnux:		.include "General/Sprites/Knuckles/Cutscene/DPLC - Cutscene Knuckles.S"

Map_AIZIntroPlane:		.include "Levels/AIZ/Misc Object Data/Map - Intro Plane.S"

Map_AIZIntroEmeralds:		.include "Levels/AIZ/Misc Object Data/Map - Intro Emeralds.S"

Map_LBZFinalBoss1:		.include "Levels/LBZ/Misc Object Data/Map - Final Boss 1.S"

Map_LBZDeathEggSmall:		.include "Levels/LBZ/Misc Object Data/Map - Death Egg Small.S"

Pal_MGZFadeCNZ:			.incbin "Levels/Misc/Palettes/MGZ Fade to CNZ.bin"
	.align 2
Map_LBZFinalBoss2:		.include "Levels/LBZ/Misc Object Data/Map - Final Boss 2.S"

ArtNem_AIZMiniboss:		.incbin "Levels/AIZ/Nemesis Art/Miniboss.bin"
	.align 2
ArtKosM_AIZEndBoss:		.incbin "Levels/AIZ/KosinskiM Art/End Boss.bin"
	.align 2
ArtNem_AIZMinibossSmall:	.incbin "Levels/AIZ/Nemesis Art/Miniboss Small.bin"
	.align 2
ArtUnc_AIZRhino:		.incbin "General/Sprites/Rhino/Rhino.bin"
	.align 2
ArtKosM_AIZ_Tulipon:		.incbin "General/Sprites/Tulipon/Tulipon.bin"
	.align 2
ArtKosM_AIZ_MonkeyDude:		.incbin "General/Sprites/Monkey Dude/Monkey Dude.bin"
	.align 2
ArtKosM_AIZ_CaterkillerJr:	.incbin "General/Sprites/Caterkiller Jr/Caterkiller Jr.bin"
	.align 2
ArtNem_HCZMiniboss:		.incbin "Levels/HCZ/Nemesis Art/Miniboss.bin"
	.align 2
ArtNem_HCZEndBoss:		.incbin "Levels/HCZ/Nemesis Art/End Boss.bin"
	.align 2
ArtNem_HCZDragonfly:		.incbin "Levels/HCZ/Nemesis Art/Dragonfly.bin"
	.align 2
ArtKosM_Jawz:			.incbin "General/Sprites/Jawz/Jawz.bin"
	.align 2
ArtKosM_MegaChopper:		.incbin "General/Sprites/Mega Chopper/Mega Chopper.bin"
	.align 2
ArtKosM_Blastoid:		.incbin "General/Sprites/Blastoid/Blastoid.bin"
	.align 2
ArtKosM_TurboSpiker:		.incbin "General/Sprites/Turbo Spiker/Turbo Spiker.bin"
	.align 2
ArtKosM_Pointdexter:		.incbin "General/Sprites/Pointdexter/Pointdexter.bin"
	.align 2
ArtKosM_MGZMiniboss:		.incbin "Levels/MGZ/KosinskiM Art/Miniboss.bin"
	.align 2
ArtNem_MGZSpire:		.incbin "Levels/MGZ/Nemesis Art/Spire.bin"
	.align 2
ArtKosM_MGZEndBoss:		.incbin "Levels/MGZ/KosinskiM Art/End Boss.bin"
	.align 2
ArtScaled_MGZEndBoss:		.incbin "Levels/MGZ/Misc/MGZ End Boss Scaled.bin"
	.align 2
ArtKosM_MGZEndBossDebris:	.incbin "Levels/MGZ/KosinskiM Art/End Boss Debris.bin"
	.align 2
ArtUnc_BubblesBadnik:		.incbin "General/Sprites/Bubbles Badnik/Bubbles Badnik.bin"
	.align 2
ArtKosM_Spiker:			.incbin "General/Sprites/Spiker/Spiker.bin"
	.align 2
ArtKosM_Mantis:			.incbin "General/Sprites/Mantis/Mantis.bin"
	.align 2
ArtNem_CNZMiniboss:		.incbin "Levels/CNZ/Nemesis Art/Miniboss.bin"
	.align 2
ArtNem_CNZEndBoss:		.incbin "Levels/CNZ/Nemesis Art/End Boss.bin"
	.align 2
ArtUnc_Clamer:			.incbin "General/Sprites/Clamer/Clamer.bin"
	.align 2
ArtKosM_ClamerShot:		.incbin "General/Sprites/Clamer/Clamer Shot.bin"
	.align 2
ArtKosM_Sparkle:		.incbin "General/Sprites/Sparkle/Sparkle.bin"
	.align 2
ArtKosM_Batbot:			.incbin "General/Sprites/Batbot/Batbot.bin"
	.align 2
ArtKosM_CNZBalloon:		.incbin "Levels/CNZ/KosinskiM Art/Balloon.bin"
	.align 2
ArtNem_ICZMisc1:		.incbin "Levels/ICZ/Nemesis Art/Misc Art 1.bin"
	.align 2
ArtNem_ICZIntroSprites:		.incbin "Levels/ICZ/Nemesis Art/Intro Sprites.bin"
	.align 2
ArtNem_ICZMisc2:		.incbin "Levels/ICZ/Nemesis Art/Misc Art 2.bin"
	.align 2
ArtNem_ICZEndBoss:		.incbin "Levels/ICZ/Nemesis Art/End Boss.bin"
	.align 2
ArtNem_ICZMiniboss:		.incbin "Levels/ICZ/Nemesis Art/Miniboss.bin"
	.align 2
ArtUnc_Penguinator:		.incbin "General/Sprites/Penguinator/Penguinator.bin"
	.align 2
ArtKosM_ICZSnowdust:		.incbin "Levels/ICZ/KosinskiM Art/Snowdust.bin"
	.align 2
ArtKosM_StarPointer:		.incbin "General/Sprites/Star Pointer/Star Pointer.bin"
	.align 2
ArtKosM_LBZMiniboss:		.incbin "Levels/LBZ/KosinskiM Art/Miniboss.bin"
	.align 2
ArtKosM_LBZMinibossBox:		.incbin "Levels/LBZ/KosinskiM Art/Miniboss Box.bin"
	.align 2
ArtNem_LBZFinalBoss1:		.incbin "Levels/LBZ/Nemesis Art/Final Boss 1.bin"
	.align 2
ArtKosM_LBZEndBoss:		.incbin "Levels/LBZ/KosinskiM Art/End Boss.bin"
	.align 2
ArtKosM_LBZFinalBoss2:		.incbin "Levels/LBZ/KosinskiM Art/Final Boss 2.bin"
	.align 2
ArtKosM_SnailBlaster:		.incbin "General/Sprites/Snail Blaster/Snail Blaster.bin"
	.align 2
ArtKosM_Ribot:			.incbin "General/Sprites/Ribot/Ribot.bin"
	.align 2
ArtKosM_Orbinaut:		.incbin "General/Sprites/Orbinaut/Orbinaut.bin"
	.align 2
ArtKosM_Corkey:			.incbin "General/Sprites/Corkey/Corkey.bin"
	.align 2
ArtUnc_Flybot:			.incbin "General/Sprites/Flybot/Flybot.bin"
	.align 2
ArtNem_LBZKnuxBomb:		.incbin "Levels/LBZ/Nemesis Art/Knuckles Bomb.bin"
	.align 2
ArtKosM_LBZ2DeathEggSmall:	.incbin "Levels/LBZ/KosinskiM Art/Act 2 Death Egg Small.bin"
	.align 2
ArtScaled_FleeingRobotnik:	.incbin "General/Sprites/Robotnik/Robotnik Fly Scaled.bin"
	.align 2
ArtKosM_LBZ2DeathEgg2_8x8:	.incbin "Levels/LBZ/Tiles/Act 2 Death Egg 2.bin"
	.align 2
ArtNem_AIZBossFire:		.incbin "Levels/AIZ/Nemesis Art/Miniboss Fire.bin"
	.align 2
ArtKosM_AIZIntroPlane:		.incbin "Levels/AIZ/KosinskiM Art/Intro Plane.bin"
	.align 2
ArtUnc_CutsceneKnux:		.incbin "General/Sprites/Knuckles/Cutscene/Cutscene Main.bin"
	.align 2
ArtKosM_AIZIntroEmeralds:	.incbin "Levels/AIZ/KosinskiM Art/Intro Emeralds.bin"
	.align 2
ArtKosM_TailsEndPose:		.incbin "General/Ending/KosinskiM Art/Tails Ending Pose.bin"
	.align 2
ArtNem_S38x16Font:		.incbin "General/Ending/Nemesis Art/S3 8x16 Font.bin"
	.align 2
ArtNem_AIZCorkFloor:		.incbin "Levels/AIZ/Nemesis Art/Cork Floor 1.bin"
	.align 2
ArtNem_AIZCorkFloor2:		.incbin "Levels/AIZ/Nemesis Art/Cork Floor 2.bin"
	.align 2
ArtNem_AIZSwingVine:		.incbin "Levels/AIZ/Nemesis Art/Swing Vine.bin"
	.align 2
ArtNem_AIZSlideRope:		.incbin "Levels/AIZ/Nemesis Art/Zip Vine.bin"
	.align 2
ArtNem_AIZBackgroundTree:	.incbin "Levels/AIZ/Nemesis Art/BG Tree.bin"
	.align 2
ArtNem_AIZMisc1:		.incbin "Levels/AIZ/Nemesis Art/Misc Art 1.bin"
	.align 2
ArtNem_AIZFallingLog:		.incbin "Levels/AIZ/Nemesis Art/Falling Log.bin"
	.align 2
ArtNem_AIZMisc2:		.incbin "Levels/AIZ/Nemesis Art/Misc Art 2.bin"
	.align 2
ArtNem_HCZSpikeBall:		.incbin "Levels/HCZ/Nemesis Art/Spike Ball.bin"
	.align 2
ArtNem_HCZWaveSplash:		.incbin "Levels/HCZ/Nemesis Art/Wave Splash.bin"
	.align 2
ArtNem_HCZButton:		.incbin "Levels/HCZ/Nemesis Art/Button.bin"
	.align 2
ArtNem_HCZMisc:			.incbin "Levels/HCZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtNem_HCZWaterRush:		.incbin "Levels/HCZ/Nemesis Art/Water Rush.bin"
	.align 2
ArtKosM_HCZLargeFan:		.incbin "Levels/HCZ/KosinskiM Art/Large Fan.bin"
	.align 2
ArtKosM_HCZGeyserHorz:		.incbin "Levels/HCZ/KosinskiM Art/Geyser Horizontal.bin"
	.align 2
ArtKosM_HCZGeyserVert:		.incbin "Levels/HCZ/KosinskiM Art/Geyser Vertical.bin"
	.align 2
ArtNem_HCZ2Slide:		.incbin "Levels/HCZ/Nemesis Art/Act 2 Slide.bin"
	.align 2
ArtNem_HCZ2BlockPlat:		.incbin "Levels/HCZ/Nemesis Art/Act 2  Block Platform.bin"
	.align 2
ArtUnc_HCZWaterSplash2:		.incbin "Levels/HCZ/Animated Tiles/Water Splash 2.bin"
	.align 2
ArtUnc_HCZWaterSplash:		.incbin "Levels/HCZ/Animated Tiles/Water Splash.bin"
	.align 2
ArtNem_HCZ2KnuxWall:		.incbin "Levels/HCZ/Nemesis Art/Act 2  Knuckles Wall.bin"
	.align 2
ArtNem_MGZMisc1:		.incbin "Levels/MGZ/Nemesis Art/Misc Art 1.bin"
	.align 2
ArtNem_MGZMisc2:		.incbin "Levels/MGZ/Nemesis Art/Misc Art 2.bin"
	.align 2
ArtNem_MGZSigns:		.incbin "Levels/MGZ/Nemesis Art/Direction Signs.bin"
	.align 2
ArtNem_CNZMisc:			.incbin "Levels/CNZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtNem_CNZPlatform:		.incbin "Levels/CNZ/Nemesis Art/Platform.bin"
	.align 2
ArtNem_LBZMisc:			.incbin "Levels/LBZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtNem_LBZTubeTrans:		.incbin "Levels/LBZ/Nemesis Art/Tube Transport.bin"
	.align 2
ArtNem_LBZ2Misc:		.incbin "Levels/LBZ/Nemesis Art/Act 2 Misc Art.bin"
	.align 2
ArtNem_2PArt_1:			.incbin "General/2P Zone/Nemesis Art/Misc Art 1.bin"
	.align 2
ArtNem_2PArt_2:			.incbin "General/2P Zone/Nemesis Art/Misc Art 2.bin"
	.align 2
ArtNem_2PArt_3:			.incbin "General/2P Zone/Nemesis Art/Misc Art 3.bin"
	.align 2
ArtNem_2PStartPost:		.incbin "General/2P Zone/Nemesis Art/Start Post.bin"
	.align 2
ArtNem_2PTime:			.incbin "General/2P Zone/Nemesis Art/Time Display.bin"
	.align 2
ArtNem_2PLapNum:		.incbin "General/2P Zone/Nemesis Art/Lap Numbers.bin"
	.align 2
ArtNem_2PPosIcon:		.incbin "General/2P Zone/Nemesis Art/Position Icons.bin"
	.align 2
ArtNem_BPZMisc:			.incbin "Levels/BPZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtNem_DPZMisc:			.incbin "Levels/DPZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtNem_CGZMisc:			.incbin "Levels/CGZ/Nemesis Art/Platform.bin"
	.align 2
ArtNem_EMZMisc:			.incbin "Levels/EMZ/Nemesis Art/Misc Art.bin"
	.align 2
ArtKosM_AIZ2Bombership2_8x8:	.incbin "Levels/AIZ/Tiles/Act 2 Bombership 2.bin"
	.align 2
ArtKosM_ResultsMILES:		.incbin "General/Sprites/Results/Results MILES.bin"
	.align 2
ArtKosM_ResultsTAILS:		.incbin "General/Sprites/Results/Results TAILS.bin"
	.align 2
ArtKosM_AIZTitleCard:		.incbin "Levels/AIZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_HCZTitleCard:		.incbin "Levels/HCZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_MGZTitleCard:		.incbin "Levels/MGZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_CNZTitleCard:		.incbin "Levels/CNZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_ICZTitleCard:		.incbin "Levels/ICZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_LBZTitleCard:		.incbin "Levels/LBZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_ALZTitleCard:		.incbin "Levels/ALZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_BPZTitleCard:		.incbin "Levels/BPZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_CGZTitleCard:		.incbin "Levels/CGZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_DPZTitleCard:		.incbin "Levels/DPZ/KosinskiM Art/Title Card.bin"
	.align 2
ArtKosM_EMZTitleCard:		.incbin "Levels/EMZ/KosinskiM Art/Title Card.bin"
	.align 2
Pal_SaveMenuBG:			.incbin "General/Save Menu/Palettes/BG.bin"
	.align 2
Pal_CompetitionMenuBG:		.incbin "General/Competition Menu/Palettes/BG.bin"
	.align 2
MapEni_S3MenuBG:		.incbin "General/Title/Enigma Map/S3 Menu BG.bin"
	.align 2
ArtKos_S3MenuBG:		.incbin "General/Save Menu/Kosinski Art/Menu BG.bin"
	.align 2
MapEni_CompetitionLevBorder:	.incbin "General/Competition Menu/Enigma Map/Level Border.bin"
	.align 2
MapUnc_CompetitionTimeBorder:	.incbin "General/Competition Menu/Uncompressed Map/Time Border.bin"
	.align 2
MapUnc_CompetitionBESTTIME:	.incbin "General/Competition Menu/Uncompressed Map/Time Text.bin"
	.align 2
MapEni_CompetitionLevImage:	.incbin "General/Competition Menu/Enigma Map/Level Images.bin"
	.align 2
MapEni_CompetitionLevName:	.incbin "General/Competition Menu/Enigma Map/Level Names.bin"
	.align 2
ArtKos_CompetitionMode:		.incbin "General/Competition Menu/Kosinski Art/Mode Select.bin"
	.align 2
ArtKos_CompetitionLevel:	.incbin "General/Competition Menu/Kosinski Art/Level Select.bin"
	.align 2
ArtKos_CompetitionResults:	.incbin "General/Competition Menu/Kosinski Art/Results.bin"
	.align 2
Map_CompetitionPlayerSprite:	.include "General/Competition Menu/Map - Competition Player Sprites.S"

ArtKos_CompetitionPlayer:	.incbin "General/Competition Menu/Kosinski Art/Player Sprites.bin"
	.align 2
MapEni_SaveScreen_Layout:	.incbin "General/Save Menu/Enigma Map/Save Screen Layout.bin"
	.align 2
MapUnc_SaveScreenNEW:		.incbin "General/Save Menu/Uncompressed Map/NEW.bin"
	.align 2
MapPtrs_SaveScreenStatic:	.long MapUnc_SaveScreenStatic1
				.long MapUnc_SaveScreenStatic2
				.long MapUnc_SaveScreenStatic3
				.long MapUnc_SaveScreenStatic4

MapUnc_SaveScreenStatic1:	.incbin "General/Save Menu/Uncompressed Map/Static 1.bin"
	.align 2
MapUnc_SaveScreenStatic2:	.incbin "General/Save Menu/Uncompressed Map/Static 2.bin"
	.align 2
MapUnc_SaveScreenStatic3:	.incbin "General/Save Menu/Uncompressed Map/Static 3.bin"
	.align 2
MapUnc_SaveScreenStatic4:	.incbin "General/Save Menu/Uncompressed Map/Static 4.bin"
	.align 2
ArtKos_SaveScreenMisc:		.incbin "General/Save Menu/Kosinski Art/Misc.bin"
	.align 2

	/*org 0x2F8000*/
AIZ1_16x16_Primary_Kos:		.incbin "Levels/AIZ/Blocks/Act 1 Primary.bin"
	.align 2
AIZ1_16x16_Secondary_Kos:	.incbin "Levels/AIZ/Blocks/Act 1 Secondary.bin"
	.align 2
AIZ1_16x16_MainLevel_Kos:	.incbin "Levels/AIZ/Blocks/Act 1 Main Level.bin"
	.align 2
AIZ1_8x8_Primary_KosM:		.incbin "Levels/AIZ/Tiles/Act 1 Primary.bin"
	.align 2
AIZ1_8x8_Secondary_KosM:	.incbin "Levels/AIZ/Tiles/Act 1 Secondary.bin"
	.align 2
AIZ1_8x8_MainLevel_KosM:	.incbin "Levels/AIZ/Tiles/Act 1 Main Level.bin"
	.align 2
AIZ1_128x128_Kos:		.incbin "Levels/AIZ/Chunks/Act 1.bin"
	.align 2
AIZ1_8x8_Flames_KosM:		.incbin "Levels/AIZ/Tiles/Act 1 Fire Overlay.bin"
	.align 2
AIZ2_16x16_Primary_Kos:		.incbin "Levels/AIZ/Blocks/Act 2 Primary.bin"
	.align 2
AIZ2_16x16_Secondary_Kos:	.incbin "Levels/AIZ/Blocks/Act 2 Secondary.bin"
	.align 2
AIZ2_16x16_BomberShip_Kos:	.incbin "Levels/AIZ/Blocks/Act 2 BomberShip.bin"
	.align 2
AIZ2_8x8_Primary_KosM:		.incbin "Levels/AIZ/Tiles/Act 2 Primary.bin"
	.align 2
AIZ2_8x8_Secondary_KosM:	.incbin "Levels/AIZ/Tiles/Act 2 Secondary.bin"
	.align 2
AIZ2_8x8_BomberShip_KosM:	.incbin "Levels/AIZ/Tiles/Act 2 Bombership.bin"
	.align 2
AIZ2_128x128_Kos:		.incbin "Levels/AIZ/Chunks/Act 2.bin"
	.align 2
HCZ_16x16_Primary_Kos:		.incbin "Levels/HCZ/Blocks/Primary.bin"
	.align 2
HCZ_8x8_Primary_KosM:		.incbin "Levels/HCZ/Tiles/Primary.bin"
	.align 2
HCZ_128x128_Primary_Kos:	.incbin "Levels/HCZ/Chunks/Primary.bin"
	.align 2
HCZ1_16x16_Secondary_Kos:	.incbin "Levels/HCZ/Blocks/Act 1 Secondary.bin"
	.align 2
HCZ1_8x8_Secondary_KosM:	.incbin "Levels/HCZ/Tiles/Act 1 Secondary.bin"
	.align 2
HCZ1_128x128_Secondary_Kos:	.incbin "Levels/HCZ/Chunks/Act 1 Secondary.bin"
	.align 2
HCZ2_16x16_Secondary_Kos:	.incbin "Levels/HCZ/Blocks/Act 2 Secondary.bin"
	.align 2
HCZ2_8x8_Secondary_KosM:	.incbin "Levels/HCZ/Tiles/Act 2 Secondary.bin"
	.align 2
HCZ2_128x128_Secondary_Kos:	.incbin "Levels/HCZ/Chunks/Act 2 Secondary.bin"
	.align 2
MGZ_16x16_Primary_Kos:		.incbin "Levels/MGZ/Blocks/Primary.bin"
	.align 2
MGZ_8x8_Primary_KosM:		.incbin "Levels/MGZ/Tiles/Primary.bin"
	.align 2
MGZ_128x128_Primary_Kos:	.incbin "Levels/MGZ/Chunks/Primary.bin"
	.align 2
MGZ1_16x16_Secondary_Kos:	.incbin "Levels/MGZ/Blocks/Act 1 Secondary.bin"
	.align 2
MGZ1_8x8_Secondary_KosM:	.incbin "Levels/MGZ/Tiles/Act 1 Secondary.bin"
	.align 2
MGZ1_128x128_Secondary_Kos:	.incbin "Levels/MGZ/Chunks/Act 1 Secondary.bin"
	.align 2
MGZ2_16x16_Secondary_Kos:	.incbin "Levels/MGZ/Blocks/Act 2 Secondary.bin"
	.align 2
MGZ2_8x8_Secondary_KosM:	.incbin "Levels/MGZ/Tiles/Act 2 Secondary.bin"
	.align 2
MGZ2_128x128_Secondary_Kos:	.incbin "Levels/MGZ/Chunks/Act 2 Secondary.bin"
	.align 2
MGZ2_QuakeChunks:		.incbin "Levels/MGZ/Misc/Act 2 Quake Chunks.bin"
	.align 2
CNZ_16x16_Kos:			.incbin "Levels/CNZ/Blocks/Primary.bin"
	.align 2
CNZ_8x8_KosM:			.incbin "Levels/CNZ/Tiles/Primary.bin"
	.align 2
CNZ_128x128_Kos:		.incbin "Levels/CNZ/Chunks/Primary.bin"
	.align 2
ICZ_16x16_Primary_Kos:		.incbin "Levels/ICZ/Blocks/Primary.bin"
	.align 2
ICZ_8x8_Primary_KosM:		.incbin "Levels/ICZ/Tiles/Primary.bin"
	.align 2
ICZ_128x128_Primary_Kos:	.incbin "Levels/ICZ/Chunks/Primary.bin"
	.align 2
ICZ1_16x16_Secondary_Kos:	.incbin "Levels/ICZ/Blocks/Act 1 Secondary.bin"
	.align 2
ICZ1_8x8_Secondary_KosM:	.incbin "Levels/ICZ/Tiles/Act 1 Secondary.bin"
	.align 2
ICZ1_128x128_Secondary_Kos:	.incbin "Levels/ICZ/Chunks/Act 1 Secondary.bin"
	.align 2
ICZ2_16x16_Secondary_Kos:	.incbin "Levels/ICZ/Blocks/Act 2 Secondary.bin"
	.align 2
ICZ2_8x8_Secondary_KosM:	.incbin "Levels/ICZ/Tiles/Act 2 Secondary.bin"
	.align 2
ICZ2_128x128_Secondary_Kos:	.incbin "Levels/ICZ/Chunks/Act 2 Secondary.bin"
	.align 2
LBZ_16x16_Primary_Kos:		.incbin "Levels/LBZ/Blocks/Primary.bin"
	.align 2
LBZ1_16x16_Secondary_Kos:	.incbin "Levels/LBZ/Blocks/Act 1 Secondary.bin"
	.align 2
LBZ_8x8_Primary_KosM:		.incbin "Levels/LBZ/Tiles/Primary.bin"
	.align 2
LBZ1_8x8_Secondary_KosM:	.incbin "Levels/LBZ/Tiles/Act 1 Secondary.bin"
	.align 2
LBZ1_128x128_Kos:		.incbin "Levels/LBZ/Chunks/Act 1.bin"
	.align 2
LBZ2_16x16_Secondary_Kos:	.incbin "Levels/LBZ/Blocks/Act 2 Secondary.bin"
	.align 2
LBZ2_16x16_DeathEgg_Kos:	.incbin "Levels/LBZ/Blocks/Act 2 Death Egg.bin"
	.align 2
LBZ2_8x8_Secondary_KosM:	.incbin "Levels/LBZ/Tiles/Act 2 Secondary.bin"
	.align 2
LBZ2_8x8_DeathEgg_KosM:		.incbin "Levels/LBZ/Tiles/Act 2 Death Egg.bin"
	.align 2
LBZ2_128x128_Kos:		.incbin "Levels/LBZ/Chunks/Act 2.bin"
	.align 2
LBZ2_128x128_DeathEgg_Kos:	.incbin "Levels/LBZ/Chunks/Act 2 Death Egg.bin"
	.align 2
ALZ_16x16_Kos:			.incbin "Levels/ALZ/Blocks/Primary.bin"
	.align 2
ALZ_8x8_KosM:			.incbin "Levels/ALZ/Tiles/Primary.bin"
	.align 2
ALZ_128x128_Kos:		.incbin "Levels/ALZ/Chunks/Primary.bin"
	.align 2
BPZ_16x16_Kos:			.incbin "Levels/BPZ/Blocks/Primary.bin"
	.align 2
BPZ_8x8_KosM:			.incbin "Levels/BPZ/Tiles/Primary.bin"
	.align 2
BPZ_128x128_Kos:		.incbin "Levels/BPZ/Chunks/Primary.bin"
	.align 2
DPZ_16x16_Kos:			.incbin "Levels/DPZ/Blocks/Primary.bin"
	.align 2
DPZ_8x8_KosM:			.incbin "Levels/DPZ/Tiles/Primary.bin"
	.align 2
DPZ_128x128_Kos:		.incbin "Levels/DPZ/Chunks/Primary.bin"
	.align 2
CGZ_16x16_Kos:			.incbin "Levels/CGZ/Blocks/Primary.bin"
	.align 2
CGZ_8x8_KosM:			.incbin "Levels/CGZ/Tiles/Primary.bin"
	.align 2
CGZ_128x128_Kos:		.incbin "Levels/CGZ/Chunks/Primary.bin"
	.align 2
EMZ_16x16_Kos:			.incbin "Levels/EMZ/Blocks/Primary.bin"
	.align 2
EMZ_8x8_KosM:			.incbin "Levels/EMZ/Tiles/Primary.bin"
	.align 2
EMZ_128x128_Kos:		.incbin "Levels/EMZ/Chunks/Primary.bin"
	.align 2
Gumball_16x16_Kos:		.incbin "Levels/Gumball/Blocks/Primary.bin"
	.align 2
Gumball_8x8_KosM:		.incbin "Levels/Gumball/Tiles/Gumball.bin"
	.align 2
Gumball_128x128_Kos:		.incbin "Levels/Gumball/Chunks/Primary.bin"
	.align 2
