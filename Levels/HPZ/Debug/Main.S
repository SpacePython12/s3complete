	/*          Object			Mappings		Subtype Frame Arttile*/
	dbglistobj Obj_Ring,			Map_Ring,		   0,   0, ((1&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Monitor,			Map_Monitor,		   6,   0, ((0&1)<<15)+((0&3)<<13)+(ArtTile_Monitors&tile_mask)
	dbglistobj Obj_PathSwap,		Map_PathSwap,		   9,   1, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_PathSwap,		Map_PathSwap,		  0xD,   5, ((0&1)<<15)+((1&3)<<13)+(ArtTile_Ring&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,		 0x81,   0, ((0&1)<<15)+((0&3)<<13)+(0x4A4&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,		 0x90,   3, ((0&1)<<15)+((0&3)<<13)+(0x4B4&tile_mask)
	dbglistobj Obj_Spring,			Map_Spring,		 0xA0,   6, ((0&1)<<15)+((0&3)<<13)+(0x4A4&tile_mask)
	dbglistobj Obj_Spikes,			Map_Spikes,		   0,   0, ((0&1)<<15)+((0&3)<<13)+(0x49C&tile_mask)
	dbglistobj Obj_CollapsingBridge,	Map_HPZCollapsingBridge, 0x80,   0, ((0&1)<<15)+((2&3)<<13)+(0x001&tile_mask)
	dbglistobj Obj_SSZHPZTeleporter,	Map_SSZHPZTeleporter,	   0,  0xA, ((0&1)<<15)+((0&3)<<13)+(0x52E&tile_mask)
