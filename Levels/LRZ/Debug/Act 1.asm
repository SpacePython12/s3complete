	;          Object				Mappings			Subtype Frame Arttile
	dbglistobj Obj_Ring,				Map_Ring,			   0,   0, ((1&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Monitor,				Map_Monitor,			   6,   0, ((0&1)<<15)+((0&3)<<13)+(ArtTile_Monitors&tile_mask)
	dbglistobj Obj_PathSwap,			Map_PathSwap,			   9,   1, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_PathSwap,			Map_PathSwap,			  $D,   5, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Spring,				Map_Spring,			 $81,   0, ((0&1)<<15)+((0&3)<<13)+($4A4&tile_mask)
	dbglistobj Obj_Spring,				Map_Spring,			 $90,   3, ((0&1)<<15)+((0&3)<<13)+($4B4&tile_mask)
	dbglistobj Obj_Spring,				Map_Spring,			 $A0,   6, ((0&1)<<15)+((0&3)<<13)+($4A4&tile_mask)
	dbglistobj Obj_Spikes,				Map_Spikes,			   0,   0, ((0&1)<<15)+((0&3)<<13)+($49C&tile_mask)
	dbglistobj Obj_Toxomister,			Map_Toxomister,			   0,   0, ((0&1)<<15)+((0&3)<<13)+($562&tile_mask)
	dbglistobj Obj_Fireworm,			Map_FirewormSegments,		   0,   0, ((0&1)<<15)+((3&3)<<13)+($512&tile_mask)
	dbglistobj Obj_LRZExplodingRock,		Map_Iwamodoki,			   0,   0, ((0&1)<<15)+((0&3)<<13)+($530&tile_mask)
	dbglistobj Obj_LRZSpikeBall,			Map_LRZSpikeBall,		   0,   0, ((1&1)<<15)+((1&3)<<13)+($442&tile_mask)
	dbglistobj Obj_LRZSinkingRock,			Map_LRZSinkingRock,		   0,   0, ((0&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_LRZFallingSpike,			Map_LRZFallingSpike,		 $60,   0, ((0&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZDoor,				Map_LRZDoor,			   0,   0, ((0&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_Button,				Map_LRZButton,			   0,  $2, ((0&1)<<15)+((3&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZBigDoor,			Map_LRZBigDoor,			   0,   0, ((0&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZFireballLauncher,		Map_LRZFireballLauncher,	 $10,   2, ((0&1)<<15)+((3&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZButtonHorizontal,		Map_LRZButtonHorizontal,	   0,   0, ((0&1)<<15)+((3&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZShootingTrigger,		Map_LRZShootingTrigger,		 $10,   0, ((0&1)<<15)+((3&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZDashElevator,			Map_LRZDashElevator,		 $36,   0, ((0&1)<<15)+((0&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZSmashingSpikePlatform,	Map_LRZSmashingSpikePlatform,	 $18,   0, ((0&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZSwingingSpikeBall,		Map_LRZSwingingSpikeBall,	   8,   1, ((1&1)<<15)+((0&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_LRZLavaFall,			Map_LRZLavaFall,		 $3C,   0, ((0&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_AnimatedStillSprite,		Map_AnimatedStillSprites,	   2,   9, ((1&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $1F, $1F, ((1&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $20, $20, ((1&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $21, $21, ((1&1)<<15)+((2&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $22, $22, ((1&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_LRZCollapsingBridge,		Map_LRZCollapsingBridge,	   0,   8, ((1&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_AIZLRZEMZRock,			Map_LRZBreakableRock,		 $44,   8, ((0&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_AIZLRZEMZRock,			Map_LRZBreakableRock,		 $51,   9, ((0&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_AIZLRZEMZRock,			Map_LRZBreakableRock,		 $68,  $A, ((0&1)<<15)+((2&3)<<13)+($0D3&tile_mask)
	dbglistobj Obj_TensionBridge,			Map_TensionBridge,		  $E,   0, ((1&1)<<15)+((3&3)<<13)+($113&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $23, $23, ((1&1)<<15)+((1&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $24, $24, ((1&1)<<15)+((1&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $25, $25, ((1&1)<<15)+((1&3)<<13)+($3A1&tile_mask)
	dbglistobj Obj_StillSprite,			Map_StillSprites,		 $26, $26, ((1&1)<<15)+((1&3)<<13)+($3A1&tile_mask)
