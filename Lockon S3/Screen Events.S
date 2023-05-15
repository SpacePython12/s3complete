
AIZ1_WaterFGDeformDelta:
		.word   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
		.word  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
		.word   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
		.word  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
		.word   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
		.word  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
		.word   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
		.word  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
		.word   1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  0
		.word   0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
AIZ1_WaterBGDeformDelta:
		.word   0,  0, -1, -1, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1,  1,  1
		.word   1,  0,  0,  0, -1, -1, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1
		.word   1,  1,  1,  0,  0,  0, -1, -1, -1, -1, -1, -1,  0,  0,  0,  1
		.word   1,  1,  1,  1,  1,  0, -1, -2, -2, -1,  0,  2,  2,  2,  2,  0
		.word   0,  0, -1, -1, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1,  1,  1
		.word   1,  0,  0,  0, -1, -1, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1
/* 75b*/

Comp_ScreenInit:
		jsr	(Update_CameraPositionP2)
		movew	(Camera_X_pos_copy),%d0
		movew	%d0,(Events_fg_0)
		movew	%d0,(Events_fg_1)
		movew	(Camera_X_pos_P2_copy),%d0
		movew	%d0,(Events_fg_2)
		movew	%d0,(_unkEEBA)
		moveq	#0,%d0
		moveb	(Current_zone_and_act),%d0
		lslw	#4,%d0
		lea	Comp_ScreenInitArray-0xE0(%pc),%a1
		addaw	%d0,%a1
		movew	(%a1)+,(Screen_X_wrap_value)
		movew	(%a1)+,(Screen_Y_wrap_value)
		movew	(%a1)+,(Camera_Y_pos_mask)
		movew	(%a1)+,(Layout_row_index_mask)
		movew	(%a1)+,(_unkEEB0)
		movew	(%a1)+,%d0
		movew	(%a1)+,%d2
		movew	(%a1)+,%d6
		moveq	#0,%d1
		movew	#0x8000,%d7
		jmp	(Refresh_PlaneFull_Competition)
/* 75b*/

Comp_ScreenEvent:
		jsr	(Update_CameraPositionP2)
		movew	(Screen_X_wrap_value),%d2
		addqw	#1,%d2
		movew	%d2,%d3
		lsrw	#1,%d2
		lea	(Events_fg_0),%a1
		movew	(Camera_X_pos_copy),%d0
		jsr	(Adjust_BGDuringLoop)
		movew	(Camera_X_pos_P2_copy),%d0
		jmp	(Adjust_BGDuringLoop)
/* 75b*/

CGZ_ScreenEvent:
		bsrs	Comp_ScreenEvent
		movew	(Screen_Y_wrap_value),%d2
		addqw	#1,%d2
		movew	%d2,%d3
		lsrw	#1,%d2
		lea	(Events_bg+0x00),%a1
		movew	(Camera_Y_pos_copy),%d0
		jsr	(Adjust_BGDuringLoop)
		movew	(Camera_Y_pos_P2_copy),%d0
		jmp	(Adjust_BGDuringLoop)
/* 75b*/

ALZ_BackgroundInit:
		jsr	ALZ_BackgroundEvent(%pc)
		bras	Comp_BackgroundInit
/* 75b*/

BPZ_BackgroundInit:
		jsr	BPZ_BackgroundEvent(%pc)
		bras	Comp_BackgroundInit
/* 75b*/

DPZ_BackgroundInit:
		jsr	DPZ_BackgroundEvent(%pc)
		bras	Comp_BackgroundInit
/* 75b*/

CGZ_BackgroundInit:
		movew	(Camera_Y_pos_copy),%d0
		movew	%d0,(Events_bg+0x00)
		movew	%d0,(Events_bg+0x02)
		movew	(Camera_Y_pos_P2_copy),%d0
		movew	%d0,(Events_bg+0x04)
		movew	%d0,(Events_bg+0x06)
		moveq	#0,%d0
		moveb	(_unkFEDA),%d0
		addqw	#1,%d0
		lslw	#8,%d0
		subiw	#0x70,%d0
		movel	#0x900000,%d1
		divuw	%d0,%d1
		movew	%d1,(Events_bg+0x08)
		jsr	CGZ_BackgroundEvent(%pc)
		bras	Comp_BackgroundInit
/* 75b*/

EMZ_BackgroundInit:
		jsr	EMZ_BackgroundEvent(%pc)

Comp_BackgroundInit:
		movel	(V_scroll_value_P2),(V_scroll_value_P2_copy)
		moveq	#0,%d0
		moveb	(Current_zone_and_act),%d0
		lslw	#4,%d0
		lea	Comp_ScreenInitArray-0xD4(%pc),%a1
		addaw	%d0,%a1
		movew	(%a1)+,%d2
		movew	(%a1)+,%d6
		moveq	#0,%d0
		moveq	#0,%d1
		movew	#0xA000,%d7
		jmp	(Refresh_PlaneFull_Competition)
/* 75b*/

ALZ_BackgroundEvent:
		jsr	ALZ_Deformation(%pc)
		lea	ALZ_BGDeformArray(%pc),%a4
		bras	loc_23A764
/* 75b*/

BPZ_BackgroundEvent:
		jsr	BPZ_Deformation(%pc)
		lea	BPZ_DeformArray(%pc),%a4
		bras	loc_23A764
/* 75b*/

CGZ_BackgroundEvent:
		jsr	CGZ_Deformation(%pc)
		lea	CGZ_DeformArray(%pc),%a4
		bras	loc_23A764
/* 75b*/

EMZ_BackgroundEvent:
		jsr	EMZ_Deformation(%pc)
		lea	EMZ_DeformArray(%pc),%a4

loc_23A764:
		lea	(H_scroll_buffer),%a1
		moveal %a4,%a6
		lea	(HScroll_table),%a5
		movew	(Camera_Y_pos_BG_copy),%d0
		movew	(Camera_X_pos_copy),%d3
		moveq	#0x6B,%d1
		jsr	(ApplyDeformation2)
		moveal %a6,%a4
		lea	(HScroll_table+0x100),%a5
		movew	(_unkEE74),%d0
		subqw	#4,%d0
		movew	(Camera_X_pos_P2_copy),%d3
		moveq	#0x73,%d1
		jsr	(ApplyDeformation2)
		jmp	(Update_VScrollValueP2)
/* 75b*/

DPZ_BackgroundEvent:
		jsr	DPZ_Deformation(%pc)
		lea	(H_scroll_buffer),%a1
		movew	(Camera_X_pos_copy),%d0
		movew	(Camera_X_pos_BG_copy),%d1
		moveq	#0x1A,%d2
		bsrs	sub_23A7BA
		movew	(Camera_X_pos_P2_copy),%d0
		movew	(_unkEE70),%d1
		moveq	#0x1C,%d2
		bsrs	sub_23A7BA
		jmp	(Update_VScrollValueP2)
/* 75b*/

sub_23A7BA:
		negw	%d0
		swap	%d0
		negw	%d1
		movew	%d1,%d0

loc_23A7C2:
		movel	%d0,(%a1)+
		movel	%d0,(%a1)+
		movel	%d0,(%a1)+
		movel	%d0,(%a1)+
		dbf	%d2,loc_23A7C2
		rts
/* 75b*/

ALZ_Deformation:
		movew	(Camera_Y_pos_copy),%d0
		bsrs	sub_23A808
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_Y_pos_P2_copy),%d0
		bsrs	sub_23A808
		movew	%d0,(_unkEE74)
		addqw	#3,(Events_bg+0x00)
		addil	#0x1000,(Events_bg+0x02)
		lea	ALZ_AIZ2_BGDeformDelta(%pc),%a4
		lea	(HScroll_table),%a1
		movew	(Events_fg_1),%d0
		bsrs	sub_23A81E
		lea	(HScroll_table+0x100),%a1
		movew	(_unkEEBA),%d0
		bras	sub_23A81E
/* 75b*/

sub_23A808:
		subiw	#0x148,%d0
		swap	%d0
		clrw	%d0
		movel	%d0,%d1
		asrl	#2,%d1
		subl	%d1,%d0
		swap	%d0
		addiw	#0x48,%d0
		rts
/* 75b*/

sub_23A81E:
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,0x90(%a1)
		asrl	#3,%d0
		lea	0xC(%a1),%a5
		movel	%d0,%d1
		asrl	#2,%d1
		movel	%d1,%d2
		movel	(Events_bg+0x02),%d3
		moveq	#5,%d4

loc_23A83A:
		addl	%d3,%d1
		swap	%d1
		movew	%d1,-(%a5)
		swap	%d1
		addl	%d2,%d1
		dbf	%d4,loc_23A83A
		movemw (%a5),%d1-%d6
		movew	%d2,(%a5)+
		movew	%d6,(%a5)+
		movew	%d1,(%a5)+
		movew	%d4,(%a5)+
		movew	%d3,(%a5)+
		movew	%d5,(%a5)
		lea	0xC(%a1),%a5
		movel	%d0,%d1
		movel	%d1,%d2
		asrl	#1,%d2
		moveq	#2,%d3

loc_23A864:
		swap	%d1
		movew	%d1,(%a5)+
		swap	%d1
		addl	%d2,%d1
		dbf	%d3,loc_23A864
		movew	(Events_bg+0x00),%d1
		lsrw	#3,%d1
		andiw	#0x3E,%d1
		lea	(%a4,%d1:w),%a6
		swap	%d0
		moveq	#0x3E,%d1

loc_23A882:
		movew	(%a6)+,%d2
		addw	%d0,%d2
		movew	%d2,(%a5)+
		dbf	%d1,loc_23A882
		rts
/* 75b*/

BPZ_Deformation:
		movew	(Camera_Y_pos_copy),%d0
		bsrs	sub_23A8B6
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_Y_pos_P2_copy),%d0
		bsrs	sub_23A8B6
		movew	%d0,(_unkEE74)
		lea	(HScroll_table+0x00E),%a1
		movew	(Events_fg_1),%d0
		bsrs	sub_23A8C2
		lea	(HScroll_table+0x10E),%a1
		movew	(_unkEEBA),%d0
		bsrs	sub_23A8C2

sub_23A8B6:
		subiw	#0x2C8,%d0
		asrw	#1,%d0
		addiw	#0x90,%d0
		rts
/* 75b*/

sub_23A8C2:
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#3,%d1
		moveq	#6,%d2

loc_23A8CE:
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		subl	%d1,%d0
		dbf	%d2,loc_23A8CE
		rts
/* 75b*/

DPZ_Deformation:
		movew	(Camera_Y_pos_copy),%d0
		bsrs	sub_23A912
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_Y_pos_P2_copy),%d0
		bsrs	sub_23A912
		addiw	#0x80,%d0
		movew	%d0,(_unkEE74)
		movew	(Events_fg_1),%d0
		bsrs	sub_23A91C
		movew	%d0,(Camera_X_pos_BG_copy)
		movew	%d1,(Events_bg+0x10)
		movew	(_unkEEBA),%d0
		bsrs	sub_23A91C
		movew	%d0,(_unkEE70)
		movew	%d1,(Events_bg+0x12)
		rts
/* 75b*/

sub_23A912:
		subiw	#0x148,%d0
		asrw	#4,%d0
		addqw	#8,%d0
		rts
/* 75b*/

sub_23A91C:
		asrw	#1,%d0
		movew	%d0,%d1
		asrw	#2,%d1
		rts
/* 75b*/

CGZ_Deformation:
		movew	(Events_bg+0x02),%d0
		bsrs	sub_23A94C
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Events_bg+0x06),%d0
		bsrs	sub_23A94C
		movew	%d0,(_unkEE74)
		lea	(HScroll_table+0x00A),%a1
		movew	(Events_fg_1),%d0
		bsrs	sub_23A95C
		lea	(HScroll_table+0x10A),%a1
		movew	(_unkEEBA),%d0
		bsrs	sub_23A95C

sub_23A94C:
		bmis	loc_23A958
		movew	(Events_bg+0x08),%d1
		muluw	%d1,%d0
		swap	%d0
		rts
/* 75b*/

loc_23A958:
		moveq	#0,%d0
		rts
/* 75b*/

sub_23A95C:
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#2,%d1
		moveq	#3,%d2

loc_23A968:
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		subl	%d1,%d0
		dbf	%d2,loc_23A968
		asrl	#2,%d1
		swap	%d1
		addiw	#0x100,%d1
		movew	%d1,-(%a1)
		rts
/* 75b*/

EMZ_Deformation:
		movew	(Camera_Y_pos_copy),%d0
		bsrs	sub_23A9A8
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_Y_pos_P2_copy),%d0
		bsrs	sub_23A9A8
		movew	%d0,(_unkEE74)
		lea	(HScroll_table),%a1
		movew	(Events_fg_1),%d0
		bsrs	sub_23A9BE
		lea	(HScroll_table+0x100),%a1
		movew	(_unkEEBA),%d0
		bsrs	sub_23A9BE

sub_23A9A8:
		subiw	#0x148,%d0
		swap	%d0
		clrw	%d0
		movel	%d0,%d1
		asrl	#2,%d1
		subl	%d1,%d0
		swap	%d0
		addiw	#0x48,%d0
		rts
/* 75b*/

sub_23A9BE:
		swap	%d0
		clrw	%d0
		asrl	#3,%d0
		movel	%d0,%d1
		swap	%d0
		movew	%d0,0xE(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,0xC(%a1)
		movew	%d0,0x10(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,6(%a1)
		movew	%d0,0xA(%a1)
		movew	%d0,0x12(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,(%a1)
		movew	%d0,4(%a1)
		movew	%d0,8(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,2(%a1)
		rts
/* 75b*/
Comp_ScreenInitArray:
		.word  0x3FF, 0x1FF, 0x1F0,   0xC, 0x100, 0x100,   0xF,  0x40
		.word  0x1FF, 0x3FF, 0x3F0,  0x1C,  0x80, 0x200,  0x1F,  0x20
		.word  0x3FF, 0x1FF, 0x1F0,   0xC, 0x100, 0x100,   0xF,  0x40
		.word  0x3FF,  0xFF,  0xF0,    4, 0x100, 0x100,   0xF,  0x40
		.word  0x3FF, 0x1FF, 0x1F0,   0xC, 0x100, 0x100,   0xF,  0x40
ALZ_BGDeformArray:
		.word  0x18,   8,   8,   8,   8,   8, 0x2E,   6,  0xD,0x803F,0x7FFF
BPZ_DeformArray:.word  0x88, 0x16,  0xA, 0x28, 0x10,   8,0x7FFF
CGZ_DeformArray:.word  0x50,   8, 0x10, 0x10,0x7FFF
EMZ_DeformArray:.word  0x10, 0x10, 0x10, 0x10,   8,  0xC, 0x24, 0x38, 0x20,0x7FFF
/* 75b*/

AIZ_TreeReveal:
		asrw	#4,%d1
		movew	%d1,%d2
		asrw	#3,%d1
		addw	%d2,%d2
		andiw	#0xE,%d2
		addqw	#4,%a0
		moveal %a0,%a1
		lea	0x40(%a0),%a0
		jsr	(Get_LevelAddrChunkRow)

loc_23ABAE:
		movew	(%a5,%d2:w),%d3
		movew	%d3,%d4
		andiw	#0x3FF,%d3
		lslw	#3,%d3
		movel	(%a2,%d3:w),%d5
		movel	4(%a2,%d3:w),%d3
		btst	#0xB,%d4
		beqs	loc_23ABD6
		eoril	#0x10001000,%d5
		eoril	#0x10001000,%d3
		exg	%d3,%d5

loc_23ABD6:
		btst	#0xA,%d4
		beqs	loc_23ABEC
		eoril	#0x8000800,%d5
		eoril	#0x8000800,%d3
		swap	%d5
		swap	%d3

loc_23ABEC:
		tstb	(%a6)+
		beqs	loc_23ABF2
		movel	%d5,(%a1)

loc_23ABF2:
		addqw	#4,%a1
		tstb	0xF(%a6)
		beqs	loc_23ABFC
		movel	%d3,(%a0)

loc_23ABFC:
		addqw	#4,%a0
		addqw	#2,%d2
		andiw	#0xE,%d2
		bnes	loc_23AC0C
		addqw	#1,%d1
		jsr	(Get_ChunkRow)

loc_23AC0C:
		dbf	%d6,loc_23ABAE
		clrw	(%a0)
		rts
/* 75b*/
AIZ_TreeRevealArray:
		.byte  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		.byte  0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0
		.byte  0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0
		.byte  0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0
		.byte  0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
		.byte  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		.byte  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
/* 75b*/

AIZ1_IntroDeform:
		movew	(Camera_Y_pos_copy),(Camera_Y_pos_BG_copy)
		movew	(Events_fg_1),%d0
		bmis	loc_23AFE2
		movew	(Camera_X_pos_copy),%d0

loc_23AFE2:
		asrw	#1,%d0
		lea	(HScroll_table+0x028),%a1
		cmpiw	#0x580,%d0
		blts	loc_23AFF8
		moveq	#0x24,%d1

loc_23AFF0:
		movew	%d0,(%a1)+
		dbf	%d1,loc_23AFF0
		bras	loc_23B018
/* 75b*/

loc_23AFF8:
		movew	%d0,(%a1)+
		subiw	#0x580,%d0
		swap	%d0
		clrw	%d0
		movel	%d0,%d1
		asrl	#5,%d1
		moveq	#0x23,%d2

loc_23B008:
		addl	%d1,%d0
		movel	%d0,%d3
		swap	%d3
		addiw	#0x580,%d3
		movew	%d3,(%a1)+
		dbf	%d2,loc_23B008

loc_23B018:
		lea	(HScroll_table+0x028),%a1
		lea	(HScroll_table),%a5
		movew	(%a1)+,%d0
		bpls	loc_23B026
		moveq	#0,%d0

loc_23B026:
		movew	%d0,(%a5)
		addqw	#4,%a5
		moveq	#8,%d0

loc_23B02C:
		movew	(%a1),%d1
		bpls	loc_23B032
		moveq	#0,%d1

loc_23B032:
		movew	%d1,(%a5)
		addqw	#8,%a1
		addqw	#4,%a5
		dbf	%d0,loc_23B02C
		rts
/* 75b*/

AIZ1_Deform:
		movew	(Camera_Y_pos_copy),%d0
		asrw	#1,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_X_pos_copy),%d0
		subiw	#0x1300,%d0
		swap	%d0
		clrw	%d0
		asrl	#5,%d0
		movel	%d0,%d2
		addl	%d0,%d0
		movel	%d0,%d1
		lsll	#3,%d0
		subl	%d1,%d0
		lea	(HScroll_table+0x030),%a1
		swap	%d0
		movew	%d0,(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,-0x2C(%a1)
		movew	%d0,2(%a1)
		movew	%d0,0xA(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,4(%a1)
		movew	%d0,8(%a1)
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,6(%a1)
		lea	(HScroll_table+0x016),%a1
		movel	%d2,%d0
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		movel	(HScroll_table+0x03C),%d3
		addil	#0x2000,(HScroll_table+0x03C)
		asrl	#1,%d0
		moveq	#5,%d1

loc_23B0AE:
		addl	%d3,%d0
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		addl	%d2,%d0
		dbf	%d1,loc_23B0AE
		lea	(HScroll_table+0x016),%a1
		movel	%d2,%d0
		asrl	#3,%d2
		moveq	#0xC,%d1

loc_23B0C6:
		addl	%d2,%d0
		swap	%d0
		movew	%d0,(%a1)+
		swap	%d0
		dbf	%d1,loc_23B0C6
		rts
/* 75b*/

AIZ1_ApplyDeformWater:
		lea	AIZ1_DeformArray(%pc),%a4
		lea	(HScroll_table+0x008),%a5
		movew	(Water_level),%d1
		subw	(Camera_Y_pos_copy),%d1
		cmpiw	#0xE0,%d1
		blts	loc_23B0EE
		jmp	(ApplyDeformation)
/* 75b*/

loc_23B0EE:
		subqw	#1,%d1
		jsr	(ApplyDeformation3)
		movel	%a1,-(%sp)
		lea	(HScroll_table+0x040),%a1
		lea	AIZ1_WaterFGDeformDelta(%pc),%a6
		movew	(Water_level),%d0
		subiw	#0xDE,%d1
		negw	%d1
		movew	(Level_frame_counter),%d2
		addw	%d0,%d2
		addw	%d0,%d2
		andiw	#0x7E,%d2
		addaw	%d2,%a6
		movew	(Camera_X_pos_copy),%d6
		negw	%d6
		jsr	(MakeFGDeformArray)
		moveal (%sp)+,%a1
		lea	(HScroll_table+0x040),%a2
		lea	AIZ1_DeformArray(%pc),%a4
		lea	(HScroll_table+0x008),%a5
		lea	AIZ1_WaterBGDeformDelta(%pc),%a6
		movew	(Water_level),%d0
		subw	(Camera_Y_pos_copy),%d0
		addw	(Camera_Y_pos_BG_copy),%d0
		movew	(Level_frame_counter),%d2
		asrw	#1,%d2
		addw	%d0,%d2
		addw	%d0,%d2
		andiw	#0x7E,%d2
		addaw	%d2,%a6
		jmp	(ApplyFGandBGDeformation)
/* 75b*/

AIZ1_FireRise:
		cmpib	#6,(Player_1+routine)
		bccs	locret_23B178
		moveq	#0,%d0
		movew	(Events_bg+0x02),%d0
		addiw	#0x280,%d0
		cmpiw	#0xA000,%d0
		bcss	loc_23B16E
		movew	#0xA000,%d0

loc_23B16E:
		movew	%d0,(Events_bg+0x02)
		lsll	#4,%d0
		addl	%d0,(Camera_Y_pos_BG_copy)

locret_23B178:
		rts
/* 75b*/

AIZTrans_WavyFlame:
		cmpib	#6,(Player_1+routine)
		bccs	locret_23B1C4
		addqw	#6,(_unkEE8E)
		movew	(_unkEE8E),%d0
		andiw	#0x60,%d0
		addiw	#0x1000,%d0
		movew	%d0,(Camera_X_pos_BG_copy)
		lea	(Vscroll_buffer),%a1
		lea	AIZ_FlameVScroll(%pc),%a5
		movew	(Camera_Y_pos_copy),%d0
		swap	%d0
		movew	(Camera_Y_pos_BG_copy),%d1
		movew	(Level_frame_counter),%d2
		asrw	#2,%d2
		moveq	#0x13,%d3

loc_23B-0:
		addqw	#2,%d2
		andiw	#0xF,%d2
		moveb	(%a5,%d2:w),%d0
		extw	%d0
		addw	%d1,%d0
		movel	%d0,(%a1)+
		dbf	%d3,loc_23B-0

locret_23B1C4:
		rts
/* 75b*/
AIZ1_IntroDrawArray:
		.word 0x3E0, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x7FFF
AIZ1_IntroDeformArray:
		.word 0x3E0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
		.word 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0x7FFF
AIZ1_BGDrawArray:.word 0x220, 0x7FFF
AIZ1_DeformArray:.word 0xD0, 0x20, 0x30, 0x30, 0x10, 0x10, 0x10, 0x800D, 0xF, 6, 0xE, 0x50, 0x20, 0x7FFF
AIZ_FlameVScroll:.byte 0, 0xFF, 0xFE, 0xFB, 0xF8, 0xF6, 0xF3, 0xF2, 0xF1, 0xF2, 0xF3, 0xF6, 0xF9, 0xFB, 0xFE, 0xFF
/* 75b*/

AIZ2_Deform:
		movew	(Camera_Y_pos_copy),%d0
		movew	(Screen_shake_offset),%d1
		subw	%d1,%d0
		asrw	#1,%d0
		addw	%d1,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)
		cmpiw	#0x10,(Events_routine_bg)
		bcss	loc_23B648
		movew	(Events_bg+0x16),%d0
		addw	%d0,(Camera_Y_pos_BG_copy)

loc_23B648:
		movew	(Events_fg_1),%d0
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#5,%d1
		movel	%d1,%d2
		addl	%d1,%d1
		addl	%d2,%d1
		lea	(HScroll_table+0x1C0),%a1
		lea	AIZ2_BGDeformMake(%pc),%a5
		moveq	#0,%d2

loc_23B666:
		moveb	(%a5)+,%d3
		bmis	locret_23B67E
		extw	%d3
		swap	%d0

loc_23B66E:
		moveb	(%a5)+,%d2
		movew	%d0,(%a1,%d2:w)
		dbf	%d3,loc_23B66E
		swap	%d0
		addl	%d1,%d0
		bras	loc_23B666
/* 75b*/

locret_23B67E:
		rts
/* 75b*/

AIZ2_ApplyDeform:
		lea	(HScroll_table),%a1
		lea	AIZ2_FGDeformDelta(%pc),%a6
		movew	(Camera_Y_pos_copy),%d0
		movew	#0xDF,%d1
		movew	(Level_frame_counter),%d2
		addw	%d0,%d2
		addw	%d0,%d2
		moveq	#0x3E,%d3
		movew	(Camera_X_pos_copy),%d6
		negw	%d6
		movew	(Water_level),%d4
		subw	%d0,%d4
		blss	loc_23B6CA			/* If completely underwater, only do water deformation*/
		cmpw	%d1,%d4
		bhis	loc_23B6D0			/* If water isn't showing at all, only do non-water deformation*/
		movew	%d4,%d1				/* Otherwise, just do both*/
		subqw	#1,%d1
		andw	%d3,%d2
		addaw	%d2,%a6
		jsr	(MakeFGDeformArray)
		movew	(Water_level),%d0
		subiw	#0xDE,%d1
		negw	%d1
		movew	(Level_frame_counter),%d2
		addw	%d0,%d2
		addw	%d0,%d2

loc_23B6CA:
		lea	AIZ1_WaterFGDeformDelta(%pc),%a6
		moveq	#0x7E,%d3

loc_23B6D0:
		andw	%d3,%d2
		addaw	%d2,%a6
		jsr	(MakeFGDeformArray)
		lea	(H_scroll_buffer),%a1
		lea	(HScroll_table),%a2
		lea	AIZ2_BGDeformArray(%pc),%a4
		lea	(HScroll_table+0x1C0),%a5
		lea	ALZ_AIZ2_BGDeformDelta(%pc),%a6
		movew	(Camera_Y_pos_BG_copy),%d0
		movew	#0xDF,%d1
		movew	(Level_frame_counter),%d2
		asrw	#1,%d2
		addw	%d0,%d2
		addw	%d0,%d2
		moveq	#0x3E,%d3
		movew	(Water_level),%d4
		subw	(Camera_Y_pos_copy),%d4
		blss	loc_23B73E			/* Same as above, .if completely underwater only apply water deformation*/
		cmpw	%d1,%d4
		bhis	loc_23B744			/* Same as above, .if no water is showing, only do above-ground deformation*/
		movew	%d4,%d1				/* Otherwise, just do both*/
		subqw	#1,%d1
		andw	%d3,%d2
		addaw	%d2,%a6
		jsr	(ApplyFGandBGDeformation)
		lea	AIZ2_BGDeformArray(%pc),%a4
		lea	(HScroll_table+0x1C0),%a5
		movew	(Water_level),%d0
		subw	(Camera_Y_pos_copy),%d0
		addw	(Camera_Y_pos_BG_copy),%d0
		subiw	#0xDE,%d1
		negw	%d1
		movew	(Level_frame_counter),%d2
		asrw	#1,%d2
		addw	%d0,%d2
		addw	%d0,%d2

loc_23B73E:
		lea	AIZ1_WaterBGDeformDelta(%pc),%a6
		moveq	#0x7E,%d3

loc_23B744:
		andw	%d3,%d2
		addaw	%d2,%a6
		jsr	(ApplyFGandBGDeformation)
		tstw	(Events_bg+0x04)
		beqs	locret_23B772
		lea	(H_scroll_buffer),%a1		/* This is for what I assume to be the flying battleship sequence.*/
		movew	(_unkEE98),%d0			/* Nullifies the top 8 tiles worth of FG waviness for this effect*/
		negw	%d0						/* And replaces it with position data from the second BG camera.*/
		moveq	#0xF,%d1

loc_23B75E:
		movew	%d0,(%a1)
		addqw	#4,%a1
		movew	%d0,(%a1)
		addqw	#4,%a1
		movew	%d0,(%a1)
		addqw	#4,%a1
		movew	%d0,(%a1)
		addqw	#4,%a1
		dbf	%d1,loc_23B75E

locret_23B772:
		rts
/* 75b*/
AIZ2_BGDeformArray:
		.word 0x10, 0x20, 0x38, 0x58, 0x28, 0x40, 0x38, 0x18, 0x18, 0x90, 0x48, 0x10, 0x18
		.word 0x20, 0x38, 0x58, 0x28, 0x40, 0x38, 0x18, 0x18, 0x90, 0x48, 0x10, 0x7FFF
AIZ2_BGDeformMake:
		.byte    1, 0x12, 0x2A
		.byte    3, 0x10, 0x14, 0x28, 0x2C
		.byte    3,  0xE, 0x16, 0x26, 0x2E
		.byte    4,   0,  0xC, 0x18, 0x24, 0x30
		.byte    3,   2,  0xA, 0x1A, 0x22
		.byte    3,   4,   8, 0x1C, 0x20
		.byte    1,   6, 0x1E
		.byte  0xFF,   0
AIZ2_FGDeformDelta:
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
		.word   0,  0,  1,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0
		.word   0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  1,  0,  0
ALZ_AIZ2_BGDeformDelta:
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
		.word  -2,  1,  2,  2, -1,  2,  2,  1,  2, -1, -2, -2, -2,  1, -1, -1
		.word  -1,  0, -2,  0,  0,  0, -2,  0, -2,  2,  0, -2,  2,  2, -1, -2
Pal_AIZBattleship:
		.incbin "Levels/AIZ/Palettes/Battleship.bin"
		.align 2
Pal_AIZBossSmall:
		.incbin "Levels/AIZ/Palettes/Boss Small.bin"
		.align 2
AIZBattleShip_BobbingMotion:
		.byte   4,  4,  3,  3,  2,  1,  1,  0,  0,  0,  1,  1,  2,  3,  3,  4
AIZBattleship_BombScript:
		.word    0x20, 0x3F5C
		.word    0x20, 0x3F2C
		.word    0x20, 0x3F5C
		.word    0x20, 0x3F2C
		.word    0x20, 0x3F5C
		.word    0x38, 0x3F2C
		.word    0x20, 0x3EDC
		.word    0x20, 0x3EAC
		.word    0x20, 0x3EDC
		.word    0x20, 0x3EAC
		.word    0x20, 0x3EDC
		.word    0x38, 0x3EAC
		.word    0x20, 0x3E5C
		.word    0x20, 0x3E2C
		.word    0x20, 0x3E5C
		.word    0x20, 0x3E2C
		.word    0x20, 0x3E5C
		.word    0x38, 0x3E2C
		.word    0x40, 0x3DEC
		.word    0x40, 0x3DEC
		.word    0x40, 0x3DEC
		.word  0xFFFF
AIZBombExplodeDat:
		.word      0, 0xFFC4,     0,    0xA /* X offset, Y offset, animation number, animation delay*/
		.word      0, 0xFFF4,  0x101,     9
		.word  0xFFFC, 0xFFCC,     0,     8
		.word     0xC, 0xFFFC,  0x101,     7
		.word  0xFFF4, 0xFFFC,  0x101,     5
		.word      8, 0xFFDC,     0,     4
		.word  0xFFF8, 0xFFE4,     0,     2
		.word      0, 0xFFF4,     0,     0
AIZMakeTreeScript:
		.word     0, 0x280
		.word   0x32, 0x380
		.word   0x8E, 0x280
		.word  0x103, 0x380
		.word  0x179, 0x280
		.word  0x1C6, 0x380
		.word  0x233, 0x280
		.word  0x2A0, 0x380
		.word  0x30A, 0x280
		.word  0x37C, 0x380
		.word  0x3C7, 0x280
		.word  0x401, 0x380
		.word  0x439, 0x280
		.word  0x46E, 0x380
		.word  0x4CA, 0x280
		.word  0x50C, 0x380
		.word  0x557, 0x280
		.word 0xFFFF
Map_AIZShipPropeller:
		.include "Levels/AIZ/Misc Object Data/Map - Act 2 Ship Propeller.S"
Ani_AIZShipPropeller:
		.include "Levels/AIZ/Misc Object Data/Anim - Act 2 Ship Propeller.S"
Map_AIZ2BombExplode:
		.include "Levels/AIZ/Misc Object Data/Map - Act 2 Bomb Explosion.S"
Ani_AIZ2BombExplode:
		.include "Levels/AIZ/Misc Object Data/Anim - Act 2 Bomb Explosion.S"
Map_AIZ2BGTree:
		.include "Levels/AIZ/Misc Object Data/Map - Act 2 Background Tree.S"
Map_AIZ2BossSmall:
		.include "Levels/AIZ/Misc Object Data/Map - Act 2 Boss Small.S"

HCZ1_BGDeformArray:.word 0x40, 8, 8, 5, 5, 6, 0xF0, 6, 5, 5, 8, 8, 0x30, 0x80C0, 0x7FFF
HCZ2_BGDeformArray:.word 8, 8, 0x90, 0x10, 8, 0x30, 0x18, 8, 8, 0xA8, 0x30, 0x18
		.word 8, 8, 0xA8, 0x30, 0x18, 8, 8, 0xB0, 0x10, 8, 0x7FFF
HCZ2_BGDeformIndex:.byte   3, 0xA
		.byte 0x14,0x1E
		.byte 0x2C,  2
		.byte  0xC,0x16
		.byte 0x20,  5
		.byte   0,  8
		.byte  0xE,0x18
		.byte 0x22,0x2A
		.byte   3,  2
		.byte 0x10,0x1A
		.byte 0x24,  1
		.byte 0x12,0x1C
		.byte   1,  6
		.byte 0x28,  1
		.byte   4,0x26
		.byte 0xFF,  0
/* 75b*/

MGZ1_Deform:
		movew	(Screen_shake_offset),(Camera_Y_pos_BG_copy)
		movew	(Camera_X_pos_copy),%d0
		swap	%d0
		clrw	%d0
		asrl	#2,%d0
		movel	%d0,%d1
		asrl	#4,%d1
		lea	(HScroll_table+0x01C),%a1
		moveq	#8,%d2

loc_23C98A:
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		subl	%d1,%d0
		dbf	%d2,loc_23C98A
		lea	(HScroll_table),%a1
		movel	(HScroll_table+0x01C),%d2
		addil	#0x500,(HScroll_table+0x01C)
		asrl	#1,%d0
		moveq	#4,%d3

loc_23C9AA:
		addl	%d2,%d0
		addil	#0x500,%d2
		swap	%d0
		movew	%d0,(%a1)+
		swap	%d0
		addl	%d1,%d0
		dbf	%d3,loc_23C9AA
		movew	-2(%a1),%d0
		movew	-4(%a1),-2(%a1)
		movew	%d0,-4(%a1)
		rts
/* 75b*/
MGZ1_BGDeformArray:.word 0x10, 4, 4, 8, 8, 8, 0xD, 0x13, 8, 8, 8, 8, 0x18, 0x7FFF
MGZ2_QuakeEventArray:
		.word   0x780,  0x7C0,  0x580,  0x600,  0x5A0,  0x7E0  /* Player X boundaries, Player Y boundaries, Level size reset val*/
		.word  0x31C0, 0x3200,  0x1C0,  0x280,  0x1E0, 0x2F60
		.word  0x3440, 0x3480,  0x680,  0x700,  0x6A0, 0x32C0
MGZ2_ChunkEventArray:
		.word   0xF68,  0xF78,  0x500,  0x580,  0xF00,  0x500  /* Player X boundaries, Player Y boundaries, Screen redraw area*/
		.word  0x3680, 0x3700,  0x2F0,  0x380, 0x3700,  0x280
		.word  0x3000, 0x3080,  0x770,  0x800, 0x3080,  0x700
MGZ2_ScreenRedrawArray:.word   0x40,    3
		.word   0x50,    3
		.word   0x50,    4
		.word   0x60,    4
		.word   0x60,    3
		.word   0x70,    2
		.word   0x70,    3
		.word   0x80,    3
		.word   0x80,    3
		.word   0x80,    4
		.word   0x80,    4
		.word   0x80,    4
		.word   0x80,    5
		.word   0x90,    5
		.word   0xA0,    4
		.word   0x90,    6
		.word   0x80,    6
		.word   0x90,    6
		.word   0xA0,    5
		.word   0xB0,    4
		.word   0xC0,    3
		.word   0xD0,    2
		.word   0xE0,    1
MGZ2_ChunkReplaceArray:.word  0x100, 0x500
		.word  0x180, 0x580
		.word  0x200, 0x600
		.word  0x280, 0x680
		.word  0x300, 0x700
		.word  0x380, 0x780
		.word     0, 0x800
		.word     0, 0x880
		.word     0, 0x900
		.word     0, 0x980
		.word     0, 0xA00
		.word     0, 0xA80
		.word     0, 0xB00
		.word     0, 0xB80
		.word     0, 0xC00
		.word     0, 0xC80
		.word     0, 0xD00
		.word     0, 0xD80
		.word     0, 0xE00
		.word     0, 0xE80
		.word     0, 0xF00
		.word     0, 0xF80
		.word     0,0x1000
		.word   0x80, 0x480
MGZ2_CollapseScrollDelay:.word    0xA,  0x10,    2,    8,   0xE,    6,    0,   0xC,  0x12,    4
MGZ2_FGVScrollArray:.word 0x3CA0,  0x20,  0x20,  0x20,  0x20,  0x20,  0x20,  0x20,  0x20,0x7FFF
/* 75b*/

MGZ2_BGDeform:
		movew	(Events_bg+0x00),%d0
		jmp	loc_23D1D8(%pc,%d0:w)
/* 75b*/

loc_23D1D8:
		braw	loc_23D21E	/* 0 - Normal*/
/* 75b*/
		braw	loc_23D1F4	/* 4 - Knuckles BG move event*/
/* 75b*/
		braw	loc_23D1EA	/* 8 - Sonic BG move event*/
/* 75b*/
		movew	#0x500,%d1	/* C - After BG move event*/
		bras	loc_23D220
/* 75b*/

loc_23D1EA:
		movew	#0x8F0,%d1
		movew	#0x3200,%d2
		bras	loc_23D1FC
/* 75b*/

loc_23D1F4:
		movew	#0x1E0,%d1
		movew	#0x3580,%d2

loc_23D1FC:
		movew	(Camera_Y_pos_copy),%d0
		subw	%d1,%d0
		addw	(Events_bg+0x02),%d0
		movew	%d0,(Camera_Y_pos_BG_copy)		/* Effective BG Y is offset, but otherwise matched in ratio during the special BG events*/
		movew	(Camera_X_pos_copy),%d0
		subw	%d2,%d0
		movew	%d0,(Camera_X_pos_BG_copy)
		movew	%d0,(HScroll_table+0x004)
		movew	%d0,(HScroll_table+0x036)
		bras	loc_23D24C
/* 75b*/

loc_23D21E:
		moveq	#0,%d1

loc_23D220:
		movew	(Camera_Y_pos_copy),%d0		/* Get BG Y camera*/
		movew	(Screen_shake_offset),%d2		/* Get screen shake offset*/
		subw	%d2,%d0
		subw	%d1,%d0					/* Subtract from that and the special offset for MGZ2 events*/
		swap	%d0
		clrw	%d0
		asrl	#4,%d0
		movel	%d0,%d1
		addl	%d0,%d0
		addl	%d1,%d0
		swap	%d0
		addw	%d2,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)		/* Effective BG Y is normal 3/16ths normal BG Y during normal play*/
		clrw	(Camera_X_pos_BG_copy)
		clrw	(HScroll_table+0x004)
		clrw	(HScroll_table+0x036)

loc_23D24C:
		movew	(Camera_X_pos_copy),%d0
		cmpiw	#8,(Events_routine_fg)
		bnes	loc_23D25C
		movew	(Events_bg+0x0C),%d0		/* If playing on the boss, use the special camera scrolling set by MGZ2's screen event*/

loc_23D25C:
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#3,%d1
		movel	%d1,%d2
		asrl	#2,%d2
		lea	(HScroll_table+0x036),%a1
		moveq	#7,%d3

loc_23D270:
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		subl	%d1,%d0
		dbf	%d3,loc_23D270
		tstw	(Events_bg+0x0E)			/* If EEE0 is set, don't bother moving the clouds automatically*/
		bnes	loc_23D28A
		addil	#0x800,(HScroll_table+0x038)

loc_23D28A:
		movel	(HScroll_table+0x038),%d1
		lea	(HScroll_table+0x008),%a1
		lea	MGZ2_BGDeformIndex(%pc),%a5
		movel	%d2,%d0
		asrl	#1,%d2
		moveq	#0xE,%d3

loc_23D29C:
		movew	(%a5)+,%d4
		addl	%d1,%d0
		swap	%d0
		movew	%d0,(%a1,%d4:w)
		swap	%d0
		addl	%d2,%d0
		dbf	%d3,loc_23D29C
		lea	MGZ2_BGDeformOffset(%pc),%a5
		moveq	#0x16,%d0

loc_23D2B4:
		movew	(%a5)+,%d1
		addw	%d1,(%a1)+
		dbf	%d0,loc_23D2B4
		rts
/* 75b*/
MGZ2_BGDrawArray:.word 0x200, 0x7FFF
MGZ2_BGDeformArray:.word 0x10, 0x10, 0x10, 0x10, 0x10, 0x18, 8, 0x10, 8, 8, 0x10, 8
		.word 8, 8, 5, 0x2B, 0xC, 6, 6, 8, 8, 0x18, 0xD8, 0x7FFF
MGZ2_BGDeformIndex:.word  0x1C, 0x18, 0x1A,  0xC,   6, 0x14,   2, 0x10, 0x16, 0x12,  0xA,   0,   8,   4,  0xE
MGZ2_BGDeformOffset:.word   -5,  -8,   9,  0xA,   2, -0xC,   3, 0x10,  -1,  0xD, -0xF,   6, -0xB,  -4,  0xE
		.word   -8, 0x10,   8,   0,  -8, 0x10,   8,   0
/* 75b*/

ICZ1_SetIntroPal:
		tstb	(Game_mode)
		bmis	loc_23DE92
		lea	(Normal_palette_line_4+2),%a1
		bsrs	sub_23DE96

loc_23DE92:
		lea	(Target_palette_line_4+2),%a1

sub_23DE96:
		movel	#0xEEE0EEC,(%a1)+
		movel	#0xEEA0ECA,(%a1)+
		movel	#0xEC80EA6,(%a1)+
		movel	#0xE860E64,(%a1)+
		movel	#0xE400E00,(%a1)+
		movel	#0xC000000,(%a1)+
		movel	#0xAEC0CEA,(%a1)+
		movew	#0xE80,(%a1)
		rts
/* 75b*/

ICZ1_SetIndoorPal:
		tstb	(Game_mode)
		bmis	loc_23DED2
		lea	(Normal_palette_line_4+2),%a1
		bsrs	sub_23DED6

loc_23DED2:
		lea	(Target_palette_line_4+2),%a1

sub_23DED6:
		movel	#0xEC00E40,(%a1)+
		movel	#0xE040C00,(%a1)+
		movel	#0x6000200,(%a1)+
		movel	#0xE64,(%a1)+
		movel	#0xE240A02,(%a1)+
		movew	#0x402,(%a1)
		rts
/* 75b*/
ICZ1_IntroBGDeformArray:.word 0x44, 0xC, 0xB, 0xD, 0x18, 0x50, 2, 6, 8, 0x10, 0x18, 0x20, 0x28, 0x7FFF
/* 75b*/

ICZ2_OutDeform:
		clrw	(Camera_Y_pos_BG_copy)		/* Effective Y is always 0*/
		movew	(Camera_X_pos_copy),%d0
		movew	(Level_frame_counter),%d1
		asrw	#1,%d1
		addw	%d1,%d0
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		andil	#0x7FFFFF,%d0
		movel	%d0,%d1
		asrl	#6,%d1
		lea	(HScroll_table+0x064),%a1
		moveq	#0x27,%d2

loc_23E0E8:
		swap	%d0
		movew	%d0,-(%a1)
		swap	%d0
		subl	%d1,%d0
		dbf	%d2,loc_23E0E8
		lea	(HScroll_table),%a1
		movew	(Camera_X_pos_copy),%d0
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#1,%d0
		addl	%d0,%d1
		movel	%d1,0x64(%a1)
		asrl	#2,%d0
		movel	%d0,%d1
		swap	%d0
		movew	%d0,(%a1)+
		swap	%d0
		addl	%d1,%d0
		swap	%d0
		movew	%d0,(%a1)+
		movew	(Level_frame_counter),%d1
		lsrw	#2,%d1
		andiw	#0x3E,%d1
		lea	ALZ_AIZ2_BGDeformDelta(%pc),%a5
		addaw	%d1,%a5
		moveq	#7,%d1

loc_23E12E:
		movew	(%a5)+,%d2
		addw	%d0,%d2
		movew	%d2,(%a1)+
		dbf	%d1,loc_23E12E
		rts
/* 75b*/

ICZ2_InDeform:
		movew	(Camera_Y_pos_copy),%d0
		subiw	#0x700,%d0
		asrw	#2,%d0
		addiw	#0x118,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)
		lea	(HScroll_table),%a1
		movew	(Camera_X_pos_copy),%d0
		swap	%d0
		clrw	%d0
		asrl	#1,%d0
		movel	%d0,%d1
		asrl	#3,%d1
		swap	%d0
		movew	%d0,(%a1)
		movew	%d0,0x10(%a1)
		swap	%d0
		subl	%d1,%d0
		swap	%d0
		movew	%d0,2(%a1)
		movew	%d0,0xE(%a1)
		swap	%d0
		subl	%d1,%d0
		swap	%d0
		movew	%d0,4(%a1)
		movew	%d0,0xC(%a1)
		swap	%d0
		subl	%d1,%d0
		swap	%d0
		movew	%d0,6(%a1)
		movew	%d0,0xA(%a1)
		swap	%d0
		subl	%d1,%d0
		swap	%d0
		movew	%d0,(Camera_X_pos_BG_copy)
		movew	%d0,8(%a1)
		swap	%d0
		subl	%d1,%d0
		swap	%d0
		movew	%d0,(Events_bg+0x10)
		rts
/* 75b*/

ICZ2_SetOutdoorsPal:
		tstb	(Game_mode)
		bmis	loc_23E-6
		lea	(Normal_palette_line_4+2),%a1
		bsrs	sub_23E-A

loc_23E-6:
		lea	(Target_palette_line_4+2),%a1

sub_23E-A:
		movel	#0xEEE0EEA,(%a1)+
		movel	#0xEC80EA4,(%a1)+
		movel	#0xC820C60,(%a1)+
		movel	#0xC400E20,(%a1)+
		movel	#0xA000E00,(%a1)
		rts
/* 75b*/

ICZ2_SetIndoorsPal:
		tstb	(Game_mode)
		bmis	loc_23E1E6
		lea	(Normal_palette_line_4+2),%a1
		bsrs	sub_23E1EA

loc_23E1E6:
		lea	(Target_palette_line_4+2),%a1

sub_23E1EA:
		movel	#0xEE20E24,(%a1)+
		movel	#0xE040E02,(%a1)+
		movel	#0x4020200,(%a1)+
		movel	#0xE20,(%a1)+
		movel	#0xE400840,(%a1)+
		movew	#0x600,(%a1)
		rts
/* 75b*/

ICZ2_SetICZ1Pal:
		tstb	(Game_mode)
		bmis	loc_23E21A
		lea	(Normal_palette_line_4+2),%a1
		bsrs	sub_23E21E

loc_23E21A:
		lea	(Target_palette_line_4+2),%a1

sub_23E21E:
		movel	#0xEEC0CC6,(%a1)+
		movel	#0xC800C60,(%a1)+
		movel	#0xC400A40,(%a1)+
		movel	#0x8200620,(%a1)+
		movel	#0x2000600,(%a1)
		rts
/* 75b*/
ICZ2_OutBGDeformArray:.word 0x5A, 0x26, 0x8030, 0x7FFF
ICZ2_InBGDeformArray:.word 0x1A0, 0x40, 0x20, 0x18, 0x40, 8, 8, 0x18, 0x7FFF
/* 75b*/

LBZ1_CheckLayoutMod:
		lea	LBZ1_LayoutModRange(%pc),%a1
		moveq	#3,%d3

loc_23E45E:
		lea	(%a1),%a5
		cmpw	(%a5)+,%d0
		bcss	loc_23E480
		cmpw	(%a5)+,%d0
		bhis	loc_23E480
		cmpw	(%a5)+,%d1
		bcss	loc_23E480
		cmpw	(%a5)+,%d1
		bhis	loc_23E480
		tstw	%d2
		bnes	loc_23E48A
		cmpiw	#0x1580,%d0		/* The first layout mod range ignores a small corner on the lower right.*/
		bcss	loc_23E48A
		cmpiw	#0x400,%d1
		bcss	loc_23E48A

loc_23E480:
		addqw	#8,%a1
		addqw	#4,%d2
		dbf	%d3,loc_23E45E
		rts
/* 75b*/

loc_23E48A:
		addqw	#4,%d2
		movew	%d2,(Events_bg+0x00)
		lsrw	#1,%d2
		jmp	LBZ1_LayoutModBranch-2(%pc,%d2:w)
/* 75b*/

LBZ1_LayoutModBranch:
		bras	LBZ1_LayoutMo%d1
/* 75b*/
		bras	LBZ1_LayoutMo%d2
/* 75b*/
		bras	LBZ1_LayoutMo%d3
/* 75b*/
		bras	LBZ1_LayoutMo%d4
/* 75b*/

LBZ1_LayoutMod1:
		moveaw (%a3),%a5
		lea	0x80(%a5),%a5
		braw	LBZ1_DoMo%d1
/* 75b*/

LBZ1_LayoutMod2:
		moveaw 0x24(%a3),%a5
		lea	0x80(%a5),%a5
		bras	LBZ1_DoMo%d2
/* 75b*/

LBZ1_LayoutMod3:
		tstw	(Events_bg+0x02)
		beqs	loc_23E4C0
		clrw	(Events_bg+0x00)
		moveq	#-1,%d3
		rts
/* 75b*/

loc_23E4C0:
		moveaw (%a3),%a5
		lea	0x94(%a5),%a5
		bras	LBZ1_DoMo%d3
/* 75b*/

LBZ1_LayoutMod4:
		moveaw 0x30(%a3),%a5
		lea	0x94(%a5),%a5

LBZ1_DoMod4:
		moveaw (%a3),%a1
		lea	0x7A(%a1),%a1
		movew	-8(%a3),%d0
		subqw	#6,%d0
		moveq	#5,%d1

loc_23E4DE:
		movel	(%a5)+,(%a1)+
		movew	(%a5)+,(%a1)+
		addaw	%d0,%a5
		addaw	%d0,%a1
		dbf	%d1,loc_23E4DE
		rts
/* 75b*/

LBZ1_DoMod3:
		moveaw (%a3),%a1
		lea	0x74(%a1),%a1
		movew	-8(%a3),%d0
		subqw	#4,%d0
		moveq	#0xB,%d1

loc_23E4FA:
		movel	(%a5)+,(%a1)+
		addaw	%d0,%a5
		addaw	%d0,%a1
		dbf	%d1,loc_23E4FA
		rts
/* 75b*/

LBZ1_DoMod2:
		moveaw (%a3),%a1
		lea	0x42(%a1),%a1
		movew	-8(%a3),%d0
		subiw	#0xA,%d0
		moveq	#0xD,%d1

loc_23E516:
		movel	(%a5)+,(%a1)+
		movel	(%a5)+,(%a1)+
		movew	(%a5)+,(%a1)+
		addaw	%d0,%a5
		addaw	%d0,%a1
		dbf	%d1,loc_23E516
		rts
/* 75b*/

LBZ1_DoMod1:
		moveaw 8(%a3),%a1
		lea	0x26(%a1),%a1
		movew	-8(%a3),%d0
		subqw	#8,%d0
		moveq	#8,%d1

loc_23E536:
		movel	(%a5)+,(%a1)+
		movel	(%a5)+,(%a1)+
		addaw	%d0,%a5
		addaw	%d0,%a1
		dbf	%d1,loc_23E536
		rts
/* 75b*/
LBZ1_FGVScrollArray:.word 0x3B60, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x7FFF
LBZ1_LayoutModRange:.word 0x13E0,0x16A0, 0x100, 0x580
		.word 0x2160,0x2520,    0, 0x700
		.word 0x3A60,0x3BA0,    0, 0x600
		.word 0x3DE0,0x3FA0,    0, 0x300
LBZ1_LayoutModExitRange:.word 0x1376,0x170A
		.word 0x20F6,0x258A
		.word 0x39F6,0x3C0A
		.word 0x3D76,0x400A
LBZ1_CollapseScrollSpeed:.word  0x1EE, 0x1F2,  0xC7, 0x-3, 0x-7, 0x198,   0xE, 0x139
/* 75b*/

LBZ1_Deform:
		movew	(Camera_Y_pos_copy),%d0
		movew	(Screen_shake_offset),%d1
		subw	%d1,%d0
		asrw	#4,%d0
		addw	%d1,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)
		movew	(Camera_X_pos_copy),%d0
		swap	%d0
		clrw	%d0
		asrl	#4,%d0
		movel	%d0,%d1
		asrl	#1,%d0
		swap	%d0
		movew	%d0,(Events_bg+0x10)
		swap	%d0
		swap	%d1
		movew	%d1,(Camera_X_pos_BG_copy)
		movew	%d1,(HScroll_table)
		movew	%d1,(HScroll_table+0x008)
		swap	%d1
		lea	(HScroll_table+0x00A),%a1
		addl	%d0,%d1
		addl	%d0,%d1
		asrl	#2,%d0
		moveq	#3,%d2

loc_23E79A:
		swap	%d1
		movew	%d1,(%a1)+
		swap	%d1
		addl	%d0,%d1
		dbf	%d2,loc_23E79A
		moveq	#0xA,%d0
		addw	%d0,(Events_bg+0x10)
		addw	%d0,(Camera_X_pos_BG_copy)
		addw	%d0,(HScroll_table)
		addw	%d0,(HScroll_table+0x008)
		lea	(HScroll_table+0x00A),%a1
		addqw	#4,(%a1)+
		subqw	#2,(%a1)+
		addqw	#7,(%a1)
		rts
/* 75b*/
LBZ2_BGDeformArray:.word 0xC0, 0x40, 0x38, 0x18, 0x28, 0x10, 0x10, 0x10, 0x18, 0x40, 0x20, 0x10, 0x20
		.word 0x70, 0x30, 0x80E0, 0x20, 0x7FFF
LBZ2_DEBGDeformArray:.word 0x38, 0x18, 0x28, 0x10, 0x10, 0x10, 0x18, 0x40, 0x38, 0x18, 0x28, 0x10, 0x10
		.word 0x10, 0x18, 0x40, 0x20, 0x10, 0x20, 0x70, 0x60, 0x10, 0x805F, 0x7FFF
LBZ2_CloudDeformArray:.word  0x16,  0xE,  0xA, 0x14,  0xC,   6, 0x18, 0x10, 0x12,   2,   8,   4,   0
LBZ2_BGUWDeformRange:.word    7,   1,   3,   1,   7
/* 75b*/

Gumball_ScreenInit:
		movew	#0x3FF,(Screen_Y_wrap_value)
		movew	#0x3F0,(Camera_Y_pos_mask)
		movew	#0x1C,(Layout_row_index_mask)
		movew	#4,(Special_V_int_routine)
		movew	#0xC0,%d0
		movew	%d0,%d1
		jsr	Gumball_VScroll(%pc)
		jsr	(Reset_TileOffsetPositionActual)
		movew	%d2,(HScroll_table+0x002)
		movew	%d2,(HScroll_table+0x00A)
		movew	(HScroll_table+0x00E),%d0
		andw	(Camera_Y_pos_mask),%d0
		movew	%d0,(HScroll_table+0x006)
		lea	Gumball_VScrollArray(%pc),%a4
		lea	(HScroll_table),%a5
		movew	(Camera_X_pos_rounded),%d0
		jmp	(RefreshPlaneDirectVScroll)
/* 75b*/

Gumball_ScreenEvent:
		jsr	Gumball_SetUpVScroll(%pc)
		lea	Gumball_VScrollArray(%pc),%a4
		lea	(HScroll_table),%a5
		moveq	#0xF,%d6
		moveq	#3,%d5
		jmp	(DrawTilesVDeform)
/* 75b*/

Gumball_SetUpVScroll:
		movew	(Camera_Y_pos_copy),%d0
		moveaw (_unkFAA4),%a5
		movew	0x14(%a5),%d1
		subiw	#0xC8,%d1
		subw	%d0,%d1
		negw	%d1

Gumball_VScroll:
		lea	(HScroll_table),%a1
		movew	%d0,(%a1)
		movew	%d0,8(%a1)
		movew	%d0,0xC(%a1)
		movew	%d0,0x10(%a1)
		movew	%d1,4(%a1)
		movew	%d1,0xE(%a1)
		rts
/* 75b*/
Gumball_VScrollArray:.word 0xC0, 0x80, 0x7FFF
/* 75b*/

Gumball_BackgroundInit:
		jsr	Gumball_Deform(%pc)
		jsr	(Reset_TileOffsetPositionEff)
		moveq	#0,%d1
		jsr	(Refresh_PlaneFull)
		jmp	(PlainDeformation)
/* 75b*/

Gumball_BackgroundEvent:
		jsr	Gumball_Deform(%pc)
		jsr	(PlainDeformation)
		lea	Gumball_VScrollArray(%pc),%a4
		lea	(HScroll_table+0x00A),%a5
		jmp	(Apply_FGVScroll)
/* 75b*/

Gumball_Deform:
		movew	#0xFFE0,(Camera_X_pos_BG_copy)
		movew	(Camera_Y_pos_copy),%d0
		asrw	#1,%d0
		movew	%d0,(Camera_Y_pos_BG_copy)
		asrw	#1,%d0
		movew	%d0,(Events_bg+0x10)
		rts
/* 75b*/
