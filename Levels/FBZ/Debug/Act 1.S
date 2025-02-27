	/*          Object			Mappings			Subtype Frame Arttile*/
	dbglistobj Obj_Ring,			Map_Ring,			   0,   0, ((1&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Monitor,			Map_Monitor,			   6,   0, ((0&1)<<15)+((0&3)<<13)+(ArtTile_Monitors&tile_mask)
	dbglistobj Obj_PathSwap,		Map_PathSwap,			   9,   1, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_PathSwap,		Map_PathSwap,			  0xD,   5, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,			 0x81,   0, ((0&1)<<15)+((0&3)<<13)+(0x4A4&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,			 0x90,   3, ((0&1)<<15)+((0&3)<<13)+(0x4B4&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,			 0xA0,   6, ((0&1)<<15)+((0&3)<<13)+(0x4A4&tile_mask)
	dbglistobj Obj_Spikes,			Map_Spikes,			   3,   0, ((0&1)<<15)+((0&3)<<13)+(0x200&tile_mask)
	dbglistobj Obj_Blaster,			Map_Blaster,			 0x80,   0, ((0&1)<<15)+((1&3)<<13)+(0x506&tile_mask)
	dbglistobj Obj_TechnoSqueek,		Map_TechnoSqueek,		   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x52E&tile_mask)
	dbglistobj Obj_TechnoSqueek,		Map_TechnoSqueek,		   2,   0, ((0&1)<<15)+((1&3)<<13)+(0x52E&tile_mask)
	dbglistobj Obj_TechnoSqueek,		Map_TechnoSqueek,		   4,   0, ((0&1)<<15)+((1&3)<<13)+(0x52E&tile_mask)
	dbglistobj Obj_FBZSpringPlunger,	Map_FBZEggCapsule,		   0,   5, ((0&1)<<15)+((0&3)<<13)+(0x000&tile_mask)
	dbglistobj Obj_FBZEggPrison,		Map_FBZEggCapsule,		   0,   0, ((0&1)<<15)+((0&3)<<13)+(0x000&tile_mask)
	dbglistobj Obj_FBZEggPrison,		Map_FBZEggCapsule,		   1,   0, ((0&1)<<15)+((0&3)<<13)+(0x000&tile_mask)
	dbglistobj Obj_FBZEggPrison,		Map_FBZEggCapsule,		   2,   0, ((0&1)<<15)+((0&3)<<13)+(0x000&tile_mask)
	dbglistobj Obj_FBZFloatingPlatform,	Map_FBZFloatingPlatform,	 0x10,   0, ((0&1)<<15)+((1&3)<<13)+(0x383&tile_mask)
	dbglistobj Obj_FBZFloatingPlatform,	Map_FBZFloatingPlatform,	 0x30,   0, ((0&1)<<15)+((1&3)<<13)+(0x383&tile_mask)
	dbglistobj Obj_FBZFloatingPlatform,	Map_FBZFloatingPlatform,	 0x40,   0, ((0&1)<<15)+((1&3)<<13)+(0x383&tile_mask)
	dbglistobj Obj_FBZ_ChainLink,		Map_FBZChainLink,		 0x1A,   0, ((0&1)<<15)+((2&3)<<13)+(0x379&tile_mask)
	dbglistobj Obj_StillSprite,		Map_StillSprites,		 0x27, 0x27, ((0&1)<<15)+((2&3)<<13)+(0x379&tile_mask)
	dbglistobj Obj_StillSprite,		Map_StillSprites,		 0x28, 0x28, ((0&1)<<15)+((2&3)<<13)+(0x379&tile_mask)
	dbglistobj Obj_StillSprite,		Map_StillSprites,		 0x29, 0x29, ((0&1)<<15)+((2&3)<<13)+(0x379&tile_mask)
	dbglistobj Obj_StillSprite,		Map_StillSprites,		 0x2A, 0x2A, ((0&1)<<15)+((2&3)<<13)+(0x379&tile_mask)
	dbglistobj Obj_StillSprite,		Map_StillSprites,		 0x2B, 0x2B, ((0&1)<<15)+((1&3)<<13)+(0x443&tile_mask)
	dbglistobj Obj_FBZMagneticSpikeBall,	Map_FBZMagneticSpikeBall,	   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x443&tile_mask)
	dbglistobj Obj_FBZMagneticSpikeBall,	Map_FBZMagneticSpikeBall,	 0x80,   1, ((1&1)<<15)+((1&3)<<13)+(0x443&tile_mask)
	dbglistobj Obj_FBZMagneticSpikeBall,	Map_FBZMagneticSpikeBall,	 0x81,   5, ((1&1)<<15)+((1&3)<<13)+(0x442&tile_mask)
	dbglistobj Obj_FBZMagneticPlatform,	Map_FBZMagneticPlatform,	 0x10,   4, ((0&1)<<15)+((1&3)<<13)+(0x443&tile_mask)
	dbglistobj Obj_CorkFloor,		Map_FBZCorkFloor,		   1,   0, ((0&1)<<15)+((1&3)<<13)+(0x43A&tile_mask)
	dbglistobj Obj_FBZBentPipe,		Map_FBZBentPipe,		   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x46B&tile_mask)
	dbglistobj Obj_FBZBentPipe,		Map_FBZBentPipe,		   1,   1, ((0&1)<<15)+((1&3)<<13)+(0x46B&tile_mask)
	dbglistobj Obj_FBZBentPipe,		Map_FBZBentPipe,		   2,   2, ((0&1)<<15)+((1&3)<<13)+(0x46B&tile_mask)
	dbglistobj Obj_FBZRotatingPlatform,	Map_FBZRotatingPlatform,	   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x46B&tile_mask)
	dbglistobj Obj_FBZDEZPlayerLauncher,	Map_FBZDEZPlayerLauncher,	   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x3B5&tile_mask)
	dbglistobj Obj_FBZDisappearingPlatform,	Map_FBZDisappearingPlatform,	   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x3BA&tile_mask)
	dbglistobj Obj_FBZScrewDoor,		Map_FBZScrewDoor,		   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x3D2&tile_mask)
	dbglistobj Obj_FBZScrewDoor,		Map_FBZScrewDoor,		 0x20,   4, ((0&1)<<15)+((1&3)<<13)+(0x3D2&tile_mask)
	dbglistobj Obj_FBZScrewDoor,		Map_FBZScrewDoor,		 0x40,   8, ((0&1)<<15)+((1&3)<<13)+(0x3D2&tile_mask)
	dbglistobj Obj_Button,			Map_Button,			   0,   2, ((0&1)<<15)+((0&3)<<13)+(0x500&tile_mask)
	dbglistobj Obj_FBZPropeller,		Map_FBZPropeller,		   0,   0, ((0&1)<<15)+((1&3)<<13)+(0x2E5&tile_mask)
	dbglistobj Obj_FBZPiston,		Map_FBZPiston,			 0x34,   0, ((0&1)<<15)+((1&3)<<13)+(0x31B&tile_mask)
	dbglistobj Obj_FBZPlatformBlocks,	Map_FBZPlatformBlocks,		 0x14,   1, ((0&1)<<15)+((2&3)<<13)+(0x40D&tile_mask)
	dbglistobj Obj_FBZMissileLauncher,	Map_FBZMissileLauncher,		   2,   0, ((1&1)<<15)+((1&3)<<13)+(0x32B&tile_mask)
	dbglistobj Obj_FBZWallMissile,		Map_FBZMissileLauncher,		 0x10,   4, ((0&1)<<15)+((1&3)<<13)+(0x32B&tile_mask)
	dbglistobj Obj_CollapsingBridge,	Map_FBZCollapsingBridge,	   8,   0, ((0&1)<<15)+((2&3)<<13)+(0x001&tile_mask)
	dbglistobj Obj_FBZMine,			Map_FBZMine,			   0,   0, ((0&1)<<15)+((0&3)<<13)+(0x40A&tile_mask)
	dbglistobj Obj_FBZFlamethrower,		Map_FBZFlameThrower,		   0,   1, ((0&1)<<15)+((0&3)<<13)+(0x41D&tile_mask)
	dbglistobj Obj_FBZFlamethrower,		Map_FBZFlameThrower,		 0xC0,   3, ((0&1)<<15)+((0&3)<<13)+(0x41D&tile_mask)
