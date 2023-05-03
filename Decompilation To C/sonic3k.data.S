    .section .rodata

.global VDPInitValues
VDPInitValues:	/* values for VDP registers */
    .byte 0x04		// Command 0x8004 - HInt off, Enable HV counter read
    .byte 0x14		// Command 0x8114 - Display off, VInt off, DMA on, PAL off
    .byte 0x30		// Command 0x8230 - Scroll A Address 0xC000
    .byte 0x3C		// Command 0x833C - Window Address 0xF000
    .byte 0x07	    // Command 0x8407 - Scroll B Address 0xE000
    .byte 0x6C		// Command 0x856C - Sprite Table Addres 0xD800
    .byte 0x00		// Command 0x8600 - Null
    .byte 0x00		// Command 0x8700 - Background color Pal 0 Color 0
    .byte 0x00		// Command 0x8800 - Null
    .byte 0x00		// Command 0x8900 - Null
    .byte 0xFF		// Command 0x8AFF - Hint timing 0xFF scanlines
    .byte 0x00		// Command 0x8B00 - Ext Int off, VScroll full, HScroll full
    .byte 0x81		// Command 0x8C81 - 40 cell mode, shadow/highlight off, no interlace
    .byte 0x37		// Command 0x8D37 - HScroll Table Address 0xDC00
    .byte 0x00		// Command 0x8E00 - Null
    .byte 0x01		// Command 0x8F01 - VDP auto increment 1 byte
    .byte 0x01		// Command 0x9001 - 64x32 cell scroll size
    .byte 0x00		// Command 0x9100 - Window H left side, Base Point 0
    .byte 0x00		// Command 0x9200 - Window V upside, Base Point 0
    .byte 0xFF		// Command 0x93FF - DMA Length Counter 0xFFFF
    .byte 0xFF		// Command 0x94FF - See above
    .byte 0x00		// Command 0x9500 - DMA Source Address 0x0
    .byte 0x00		// Command 0x9600 - See above
    .byte 0x80		// Command 0x9700	- See above + VRAM fill mode

.global Z80StartupCodeBegin, Z80StartupCodeEnd
Z80StartupCodeBegin:
    .word 0xAF01
    .word 0xD91F
    .word 0x1127
    .word 0x0021
    .word 0x2600
    .word 0xF977
    .word 0xEDB0
    .word 0xDDE1
    .word 0xFDE1
    .word 0xED47
    .word 0xED4F
    .word 0xD1E1
    .word 0xF108
    .word 0xD9C1
    .word 0xD1E1
    .word 0xF1F9
    .word 0xF3ED
    .word 0x5636
    .word 0xE9E9
Z80StartupCodeEnd:

.global PSGInitValues,PSGInitValues_End
PSGInitValues:
    .byte 0x9F
    .byte 0xBF
    .byte 0xDF
    .byte 0xFF
