Map_HUD_:	dc.w word_DBC2-Map_HUD_
		dc.w word_DC00-Map_HUD_
		dc.w word_DC32-Map_HUD_
		dc.w word_DC6A-Map_HUD_
		dc.w word_DC96-Map_HUD_
		dc.w word_DCB6-Map_HUD_
word_DBC2:	dc.w $A
		dc.b $80, $D, 0,  0,  0,  0
		dc.b $80, $D, 0,$18,  0,$20
		dc.b $80, $D, 0,$20,  0,$40
		dc.b $90, $D, 0,$10,  0,  0
		dc.b $90, $D, 0,$28,  0,$28
		dc.b $A0, $D, 0,  8,  0,  0
		dc.b $A0,  1, 0,  0,  0,$20
		dc.b $A0,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
word_DC00:	dc.w 8
		dc.b $80, $D, 0,  0,  0,  0
		dc.b $80, $D, 0,$18,  0,$20
		dc.b $80, $D, 0,$20,  0,$40
		dc.b $90, $D, 0,$10,  0,  0
		dc.b $90, $D, 0,$28,  0,$28
		dc.b $A0,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
word_DC32:	dc.w 9
		dc.b $80, $D, 0,  0,  0,  0
		dc.b $80, $D, 0,$18,  0,$20
		dc.b $80, $D, 0,$20,  0,$40
		dc.b $90, $D, 0,$28,  0,$28
		dc.b $A0, $D, 0,  8,  0,  0
		dc.b $A0,  1, 0,  0,  0,$20
		dc.b $A0,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
word_DC6A:	dc.w 7
		dc.b $80, $D, 0,  0,  0,  0
		dc.b $80, $D, 0,$18,  0,$20
		dc.b $80, $D, 0,$20,  0,$40
		dc.b $90, $D, 0,$28,  0,$28
		dc.b $A0,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
word_DC96:	dc.w 5
		dc.b $80, $D, 0,  8,  0,  0
		dc.b $80,  1, 0,  0,  0,$20
		dc.b $80,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
word_DCB6:	dc.w 3
		dc.b $80,  9, 0,$30,  0,$30
		dc.b $40,  5, 1, $A,  0,  0
		dc.b $40, $D, 1, $E,  0,$10
