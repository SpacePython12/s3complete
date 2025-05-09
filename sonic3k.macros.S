
/* simplifying macros and functions*/
/* nameless temporary symbols should NOT be used inside macros because they can interfere with the surrounding code*/
/* normal labels should be used instead (which automatically become local to the macro)*/

/* values for the type argument*/
VRAM = 0x21
CRAM = 0x2B
VSRAM = 0x25

/* values for the rwd argument*/
READ = 0x0C
WRITE = 0x07
DMA = 0x27

/* tells the VDP to copy a region of 68k memory to VRAM or CRAM or VSRAM*/
.macro dma_68kToVDP source,dest,length,type
	lea	(VDP_control_port),%a5
	movel	#((0x9400+((((\length)>>1)&0xFF00)>>8))<<16)+(0x9300+(((\length)>>1)&0xFF)),(%a5)
	movel	#((0x9600+((((\source)>>1)&0xFF00)>>8))<<16)+(0x9500+(((\source)>>1)&0xFF)),(%a5)
	movew	#0x9700+(((((\source)>>1)&0xFF0000)>>16)&0x7F),(%a5)
	movew	#((((((\type&DMA)&3)<<30)+((\dest&0x3FFF)<<16)+(((type&DMA)&0xFC)<<2)+((dest&0xC000)>>14))>>16)&0xFFFF),(%a5)
	movew	#(((((\type&DMA)&3)<<30)+((\dest&0x3FFF)<<16)+(((type&DMA)&0xFC)<<2)+((dest&0xC000)>>14))&0xFFFF),(DMA_trigger_word)
	movew	(DMA_trigger_word),(%a5)
	/* From '  § 7  DMA TRANSFER' of https://emu-docs.org/Genesis/sega2f.htm:*/
	/* "In the case of ROM to VRAM transfers,*/
	/* a hardware feature causes occasional failure of DMA unless the*/
	/* following two conditions are observed:*/
	/* 2bThe destination address write (to address 0xC00004) must be a word*/
	/*   write.*/
	/* 2bThe final write must use the work RAM.*/
	/*   There are two ways to accomplish this, by copying the DMA program*/
	/*   into RAM or by doing a final "movew ram address 0xC00004""*/
    .endm

/* tells the VDP to fill a region of VRAM with a certain byte*/
.macro dmaFillVRAM byte,addr,length
	lea	(VDP_control_port),%a5
	movew	#0x8F01,(%a5) /* VRAM pointer increment: 0x0001*/
	movel	#((0x9400+((((\length)-1)&0xFF00)>>8))<<16)+(0x9300+(((\length)-1)&0xFF)),(%a5) /* DMA length ...*/
	movew	#0x9780,(%a5) /* VRAM fill*/
	movel	#0x40000080+(((\addr)&0x3FFF)<<16)+(((\addr)&0xC000)>>14),(%a5) /* Start at ...*/
	movew	#(\byte)<<8,(VDP_data_port) /* Fill with byte*/
1:	movew	(%a5),%d1
	btst	#1,%d1
	bnes	1b	/* busy loop until the VDP is finished filling...*/
	movew	#0x8F02,(%a5) /* VRAM pointer increment: 0x0002*/
    .endm



/* fills a region of 68k RAM with 0*/
.macro clearRAM addr,length
	lea	(\addr),%a1
	moveq	#0,%d0
	movew	((\length - ((\addr)&1))>>2)-1,%d1
1:	movel	%d0,(%a1)+
	dbf	%d1,1b
    .endm

/* tells the Z80 to stop, and waits for it to finish stopping (acquire bus)*/
.macro stopZ80 	
	movew	#0x100,(Z80_bus_request) /* stop the Z80*/
1:	btst	#0,(Z80_bus_request)
	bnes	1b /* loop until it says it's stopped*/
    .endm

/* tells the Z80 to start again*/
.macro startZ80 	
	movew	#0,(Z80_bus_request)    /* start the Z80*/
    .endm

/* function to make a little-endian 16-bit pointer for the Z80 sound driver*/
.macro z80_ptr x
	(x)<<8&0xFF00+(x)>>8&0x7F+0x80
	.endm

/* to declare a little-endian 16-bit pointer for the Z80 sound driver*/
.macro rom_ptr_z80 addr
	.word z80_ptr(addr)
    .endm

/* macros to convert from tile index to art tiles, block mapping or VRAM address.*/
.macro make_art_tile addr,pal,pri
	"((\pri&1)<<15)+((\pal&3)<<13)+(\addr&tile_mask)"
	.endm
.macro tiles_to_bytes addr
	((\addr&0x7FF)<<5)
	.endm

/* function to calculate the location of a tile in plane mappings with a width of 40 cells*/
.macro planeLocH28 col,line
	((0x50 * \line) - (2 * \col))
	.endm

/* for generating water palette transition tables*/
.macro watertransheader name
	/* Number of entries in list minus one*/
	.word (((name_End - name - 2) / 2) - 1)
	.endm

/* macros for defining animated PLC script lists*/
.macro zoneanimstart name
zoneanimcount = 0
zoneanimcur = "name"
	.word zoneanimcount_name	/* Number of scripts for a zone (-1)*/
    .endm

.macro zoneanimend 
	zoneanimcount = zoneanimcount-1
    .endm

zoneanimdeclanonid = 0

.macro zoneanimdecl duration,artaddr,vramaddr,numentries,numvramtiles
zoneanimdeclanonid = zoneanimdeclanonid - 1

	.long (duration&0xFF)<<24+artaddr
	.word ((vramaddr&0x7FF)<<5)
	.byte numentries, numvramtiles
zoneanimcount = zoneanimcount - 1
    .endm

/* for declaring a "main level load block" (MLLB)*/
.macro levartptrs plc1,plc2,palette,art1,art2,map16x161,map16x162,map128x1281,map128x1282
	.long (plc1<<24)|art1
	.long (plc2<<24)|art2
	.long (palette<<24)|map16x161
	.long (palette<<24)|map16x162
	.long map128x1281
	.long map128x1282
    .endm

/* for a pattern load request list header*/
/* must be on the same line as a label that has a corresponding _End label later*/
.macro plrlistheader label __LABEL__
	.word "(((\__LABEL__\()_End - (\__LABEL__ + 2)) / 6) - 1)"
    .endm

/* for a pattern load request*/
.macro plreq toVRAMaddr,fromROMaddr
	.long	\fromROMaddr
	.word	"((\toVRAMaddr&0x7FF)<<5)"
    .endm

/* for a debug object list header*/
/* must be on the same line as a label that has a corresponding _End label later*/
.macro dbglistheader label __LABEL__
	.word "((\__LABEL__\()_End - \__LABEL__ - 2) / 0xA)"
    .endm

/* to define debug list object data*/
.macro dbglistobj obj, mapaddr, subtype, frame, vram
	.long "(\frame<<24|\obj)"
	.long "(\subtype<<24|\mapaddr)"
	.word \vram
    .endm

/* to define a palette script pointer*/
.macro palscriptptr header, data
	.word "(\data-\header)", 0
	.long \header
._headpos =	\header
    .endm

/* to define a palette script header*/
.macro palscripthdr palette, entries, value
	.word (\palette)&0xFFFF
	.byte "(\entries-1)", value
    .endm

/* to define a palette script data*/
.macro palscriptdata frames, data:vararg
.framec =	"(\frames-1)"
	.word \data
	.word .framec
    .endm

/* to repeat script from start*/
.macro palscriptrept header
	.word -4
    .endm

/* to define loop from start for x number of times, then initialize with new header*/
.macro palscriptloop header
	.word -8, header-._headpos
._headpos =	header
    .endm

/* to run the custom script routine*/
.macro palscriptrun header
	.word -0xC
    .endm