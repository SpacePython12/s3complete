/*  simplifying macros and functions */
/*  nameless temporary symbols should NOT be used inside macros because they can interfere with the surrounding code */
/*  normal labels should be used instead (which automatically become local to the macro) */

/*  sign-extends a 32-bit integer to 64-bit */
/*  all RAM addresses are run through this function to allow them to work in both 16-bit and 32-bit addressing modes */
ramaddr function x,(-(x&0x80000000)<<1)|x

/*  makes a VDP command */
vdpComm function addr,type,rwd,(((type&rwd)&3)<<30)|((addr&0x3FFF)<<16)|(((type&rwd)&0xFC)<<2)|((addr&0xC000)>>14)

/*  values for the type argument */
VRAM = %100001
CRAM = %101011
VSRAM = %100101

/*  values for the rwd argument */
READ = %001100
WRITE = %000111
DMA = %100111

/*  tells the VDP to copy a region of 68k memory to VRAM or CRAM or VSRAM */
dma_68kToVDP macro source,dest,length,type
	lea	(VDP_control_port):l,%a5
	movel	#((0x9400|((((length)>>1)&0xFF00)>>8))<<16)|(0x9300|(((length)>>1)&0xFF)),(%a5)
	movel	#((0x9600|((((source)>>1)&0xFF00)>>8))<<16)|(0x9500|(((source)>>1)&0xFF)),(%a5)
	movew	#0x9700|(((((source)>>1)&0xFF0000)>>16)&0x7F),(%a5)
	movew	#((vdpComm(dest,type,DMA)>>16)&0xFFFF),(%a5)
	movew	#(vdpComm(dest,type,DMA)&0xFFFF),(DMA_trigger_word):w
	movew	(DMA_trigger_word):w,(%a5)
	/*  From '  § 7  DMA TRANSFER' of https://emu-docs.org/Genesis/sega2f.htm: */
	/*  */
	/*  "In the case of ROM to VRAM transfers, */
	/*  a hardware feature causes occasional failure of DMA unless the */
	/*  following two conditions are observed: */
	/*  */
	/*  --The destination address write (to address 0xC00004) must be a word */
	/*    write. */
	/*  */
	/*  --The final write must use the work RAM. */
	/*    There are two ways to accomplish this, by copying the DMA program */
	/*    into RAM or by doing a final "move.w ram address 0xC00004"" */
    endm

/*  tells the VDP to fill a region of VRAM with a certain byte */
dmaFillVRAM macro byte,addr,length
	lea	(VDP_control_port):l,%a5
	movew	#0x8F01,(%a5) /*  VRAM pointer increment: 0x0001 */
	movel	#((0x9400|((((length)-1)&0xFF00)>>8))<<16)|(0x9300|(((length)-1)&0xFF)),(%a5) /*  DMA length ... */
	movew	#0x9780,(%a5) /*  VRAM fill */
	movel	#0x40000080|(((addr)&0x3FFF)<<16)|(((addr)&0xC000)>>14),(%a5) /*  Start at ... */
	movew	#(byte)<<8,(VDP_data_port):l /*  Fill with byte */
loop:	movew	(%a5),%d1
	btst	#1,%d1
	bnes	loop	/*  busy loop until the VDP is finished filling... */
	movew	#0x8F02,(%a5) /*  VRAM pointer increment: 0x0002 */
    endm

/*  calculates initial loop counter value for a dbf loop */
/*  that writes n bytes total at 4 bytes per iteration */
bytesToLcnt function n,n>>2-1

/*  calculates initial loop counter value for a dbf loop */
/*  that writes n bytes total at 2 bytes per iteration */
bytesToWcnt function n,n>>1-1

/*  calculates initial loop counter value for a dbf loop */
/*  that writes n bytes total at x bytes per iteration */
bytesToXcnt function n,x,n/x-1

/*  fills a region of 68k RAM with 0 */
clearRAM macro addr,length
    if ((addr)&0x8000)==0
	lea	(addr):l,%a1
    else
	lea	(addr):w,%a1
    endif
	moveq	#0,%d0
    if ((addr)&1)
	moveb	%d0,(%a1)+
    endif
	movew	#bytesToLcnt(length - ((addr)&1)),%d1
.loop:	movel	%d0,(%a1)+
	dbf	%d1,.loop
    if ((length - ((addr)&1))&2)
	movew	%d0,(%a1)+
    endif
    if ((length - ((addr)&1))&1)
	moveb	%d0,(%a1)+
    endif
    endm

/*  tells the Z80 to stop, and waits for it to finish stopping (acquire bus) */
stopZ80 macro
	movew	#0x100,(Z80_bus_request):l /*  stop the Z80 */
loop:	btst	#0,(Z80_bus_request):l
	bnes	loop /*  loop until it says it's stopped */
    endm

/*  tells the Z80 to start again */
startZ80 macro
	movew	#0,(Z80_bus_request):l    /*  start the Z80 */
    endm

/*  function to make a little-endian 16-bit pointer for the Z80 sound driver */
z80_ptr function x,(x)<<8&0xFF00|(x)>>8&0x7F|0x80

/*  macro to declare a little-endian 16-bit pointer for the Z80 sound driver */
rom_ptr_z80 macro addr
	.word z80_ptr(addr)
    endm

/*  macros to convert from tile index to art tiles, block mapping or VRAM address. */
make_art_tile function addr,pal,pri,((pri&1)<<15)|((pal&3)<<13)|(addr&tile_mask)
tiles_to_bytes function addr,((addr&0x7FF)<<5)

/*  function to calculate the location of a tile in plane mappings with a width of 40 cells */
planeLocH28 function col,line,((0x50 * line) + (2 * col))

/*  macro for generating water palette transition tables */
watertransheader macro {INTLABEL}
__LABEL__ label *
	/*  Number of entries in list minus one */
	.word (((__LABEL___End - __LABEL__ - 2) / 2) - 1)
	endm

/*  macro for generating level select strings */
levselstr macro str
	save
	codepage	LEVELSELECT
	.byte strlen(str)-1, str
	restore
    endm

/*  codepage for level select */
	save
	codepage LEVELSELECT
	charset '0','9', 16
	charset 'A','Z', 30
	charset 'a','z', 30
	charset '*', 26
	charset 0xA9, 27	/*  '?' */
	charset ':', 28
	charset '.', 29
	charset ' ',  0
	restore

/*  macros for defining animated PLC script lists */
zoneanimstart macro {INTLABEL}
__LABEL__ label *
zoneanimcount := 0
zoneanimcur := "__LABEL__"
	.word zoneanimcount___LABEL__	/*  Number of scripts for a zone (-1) */
    endm

zoneanimend macro
zoneanimcount_{"\{zoneanimcur}"} = zoneanimcount-1
    endm

zoneanimdeclanonid := 0

zoneanimdecl macro duration,artaddr,vramaddr,numentries,numvramtiles
zoneanimdeclanonid := zoneanimdeclanonid + 1
start:
	.long (duration&0xFF)<<24|artaddr
	.word tiles_to_bytes(vramaddr)
	.byte numentries, numvramtiles
zoneanimcount := zoneanimcount + 1
    endm

/*  macro for declaring a "main level load block" (MLLB) */
levartptrs macro plc1,plc2,palette,art1,art2,map16x161,map16x162,map128x1281,map128x1282
	.long (plc1<<24)|art1
	.long (plc2<<24)|art2
	.long (palette<<24)|map16x161
	.long (palette<<24)|map16x162
	.long map128x1281
	.long map128x1282
    endm

/*  macro for a pattern load request list header */
/*  must be on the same line as a label that has a corresponding _End label later */
plrlistheader macro {INTLABEL}
__LABEL__ label *
	.word (((__LABEL___End - __LABEL__Plc) / 6) - 1)
__LABEL__Plc:
    endm

/*  macro for a pattern load request */
plreq macro toVRAMaddr,fromROMaddr
	.long	fromROMaddr
	.word	tiles_to_bytes(toVRAMaddr)
    endm

/*  macro for a debug object list header */
/*  must be on the same line as a label that has a corresponding _End label later */
dbglistheader macro {INTLABEL}
__LABEL__ label *
	.word ((__LABEL___End - __LABEL__ - 2) / 0xA)
    endm

/*  macro to define debug list object data */
dbglistobj macro   obj, mapaddr, subtype, frame, vram
	.long frame<<24|obj
	.long subtype<<24|mapaddr
	.word vram
    endm

tribyte macro val
	if "val"<>""
		.byte (val >> 16)&0xFF,(val>>8)&0xFF,val&0xFF
		shift
		tribyte ALLARGS
	endif
    endm

/*  macro to define a palette script pointer */
palscriptptr	macro header, data
	.word data-header, 0
	.long header
._headpos :=	header
    endm

/*  macro to define a palette script header */
palscripthdr	macro palette, entries, value
	.word (palette)&0xFFFF
	.byte entries-1, value
    endm

/*  macro to define a palette script data */
palscriptdata	macro frames, data
.framec :=	frames-1
	shift
	.word ALLARGS
	.word .framec
    endm

/*  macro to repeat script from start */
palscriptrept	macro header
	.word -4
    endm

/*  macro to define loop from start for x number of times, then initialize with new header */
palscriptloop	macro header
	.word -8, header-._headpos
._headpos :=	header
    endm

/*  macro to run the custom script routine */
palscriptrun	macro header
	.word -0xC
    endm
