object_size = 0x4A
	.section .bss
.global Chunk_table
Chunk_table:			.space 0x8000		// chunk (128x128) definitions, 0x80 bytes per definition

.global Level_layout_header
Level_layout_header:		.space 8			// first word = chunks per FG row, second word = chunks per BG row, third word = FG rows, fourth word = BG rows
.global Level_layout_main
Level_layout_main:		.space 0xFF8		// 0x40 word-sized line pointers followed by actual layout data
.global Block_table
Block_table:			.space 0x1800		// block (16x16) definitions, 8 bytes per definition, spece for 0x300 blocks
.global HScroll_table
HScroll_table:			.space 0x200		// array of background scroll positions for the level. WARNING: some references are before this label
.global Nem_code_table
Nem_code_table:			.space 0x200		// code table is built up here and then used during decompression
.global Sprite_table_input
Sprite_table_input:		.space 0x400		// 8 priority levels, 0x80 bytes per level
.global Player_1
Player_1:			.space object_size	// main character in 1 player mode, player 1 in Competition mode
.global Player_2
Player_2:			.space object_size	// Tails in a Sonic and Tails game, player 2 in Competition mode
.global Reserved_object_3
Reserved_object_3:		.space object_size	// during a level, an object whose sole purpose is to clear the collision response list is stored here
.global Dynamic_object_RAM
Dynamic_object_RAM:		.space object_size*90	// 0x1A04 bytes // 90 objects
		.space object_size			// unknown
.global Breathing_bubbles
Breathing_bubbles:		.space object_size	// for the main character
.global Breathing_bubbles_P2
Breathing_bubbles_P2:		.space object_size	// for Tails in a Sonic and Tails game
.global Tails_tails_2P
Tails_tails_2P:			.space object_size	// Tails' tails in Competition mode
.global Tails_tails
Tails_tails:			.space object_size	// Tails' tails
.global Dust
Dust:				.space object_size
.global Dust_P2
Dust_P2:				.space object_size
.global Shield
Shield:				.space object_size
.global Shield_P2
Shield_P2:			.space object_size	// left over from Sonic 2 I'm guessing
.global Invincibility_stars
Invincibility_stars:		.space object_size*4
.global Invincibility_stars_P2
Invincibility_stars_P2:		.space object_size*3
.global Wave_Splash
Wave_Splash:			.space object_size	// Obj_HCZWaveSplash is loaded here
			.space 0x14			// unused
.global Conveyor_belt_load_array
Conveyor_belt_load_array:	.space 0xE			// each subtype of hcz conveyor belt uses a different byte to check if it's already loaded. Since they're so wide, the object loader may try loading them multiple times
			.space 0x12			// unused

.global Kos_decomp_buffer
Kos_decomp_buffer:		.space 0x1000		// each module in a KosM archive is decompressed here and then DMAed to VRAM
.global H_scroll_buffer
H_scroll_buffer:			.space 0x380		// horizontal scroll table is built up here and then DMAed to VRAM
.global Collision_response_list
Collision_response_list:		.space 0x80		// only objects in this list are processed by the collision response routines
			// used by Tails' AI in a Sonic and Tails game
.global SStage_scalar_index_0
SStage_scalar_index_0:		.space 2*1			// unknown scalar table index value
.global SStage_scalar_index_1
SStage_scalar_index_1:		.space 2*1			// unknown scalar table index value
.global SStage_scalar_index_2
SStage_scalar_index_2:		.space 2*1			// unknown scalar table index value
.global SStage_scalar_result_0
SStage_scalar_result_0:		.space 4*1			// unknown scalar table results values
.global SStage_scalar_result_1
SStage_scalar_result_1:		.space 4*1			// unknown scalar table results values
.global SStage_scalar_result_2
SStage_scalar_result_2:		.space 4*1			// unknown scalar table results values
	.space 0xA
.global SStage_scalar_result_3
SStage_scalar_result_3:		.space 4*1			// unknown scalar table results values
.global Special_stage_anim_frame
Special_stage_anim_frame:	.space 2*1			// special stage globe's current animation frame, 0x10 and higher is turning
.global Special_stage_X_pos
Special_stage_X_pos:		.space 2*1
.global Special_stage_Y_pos
Special_stage_Y_pos:		.space 2*1
.global Special_stage_angle
Special_stage_angle:		.space 1			// 0x00 = north, 0x40 = west, 0x80 = south, 0xC0 = east
			.space 1				// unused
.global Special_stage_velocity
Special_stage_velocity:		.space 2*1			// player's movement speed, negative when going backwards
.global Special_stage_turning
Special_stage_turning:		.space 1			// direction of next turn, 4 = left, -4 = right
.global Special_stage_bumper_lock
Special_stage_bumper_lock:	.space 1			// if set, the player can't start advancing by pressing up
.global Special_stage_prev_anim_frame
Special_stage_prev_anim_frame:	.space 1
			.space 2				// unused
.global Special_stage_palette_frame
Special_stage_palette_frame:	.space 1			// same as Special_stage_anim_frame, but set to 0 while turning
.global Special_stage_turn_lock
Special_stage_turn_lock:		.space 1			// if set, the player can't turn
.global Special_stage_advancing
Special_stage_advancing:		.space 1			// set when the player player presses up
.global Special_stage_jumping
Special_stage_jumping:		.space 1			// 0x80 = normal jump, 0x81 = spring
.global Special_stage_fade_timer
Special_stage_fade_timer:	.space 1			// counts up when leaving the special stage
.global Special_stage_prev_X_pos
Special_stage_prev_X_pos:	.space 2*1
.global Special_stage_prev_Y_pos
Special_stage_prev_Y_pos:	.space 2*1
.global Special_stage_spheres_left
Special_stage_spheres_left:	.space 2*1
.global Special_stage_ring_count
Special_stage_ring_count:	.space 2*1
.global Special_stage_sphere_HUD_flag
Special_stage_sphere_HUD_flag:	.space 1
.global Special_stage_extra_life_flags
Special_stage_extra_life_flags:	.space 1			// byte // when bit 7 is set, the ring HUD is updated
.global Special_stage_rate_timer
Special_stage_rate_timer:	.space 2*1			// when this reaches 0, the special stage speeds up
.global Special_stage_jumping_P2
Special_stage_jumping_P2:	.space 1			// 0x80 = normal jump, 0x81 = spring
			.space 1				// unused
.global Special_stage_rings_left
Special_stage_rings_left:	.space 2*1
.global Special_stage_rate
Special_stage_rate:		.space 2*1			// player's maximum speed in either direction
.global Special_stage_palette_addr
Special_stage_palette_addr:	.space 4*1			// ROM address of the stage's color palette
.global Special_stage_clear_timer
Special_stage_clear_timer:	.space 2*1			// counts up after getting the last sphere, when it reaches 0x100 the emerald appears
.global Special_stage_clear_routine
Special_stage_clear_routine:	.space 1			// if set, the player can't jump
.global Special_stage_emerald_timer
Special_stage_emerald_timer:	.space 1			// counts down when the emerald appears, when it reaches 0 the emerald sound plays
.global Special_stage_interact
Special_stage_interact:		.space 2*1			// address of the last bumper touched, or the emerald at the end of the stage
.global Special_stage_started
Special_stage_started:		.space 1			// set when the player begins moving at the start of the stage
			.space 0x2F			// unused
.global SStage_extra_sprites 
SStage_extra_sprites:			// some extra sprite info for special stages
				.space 0x70		// Sonic 3 has a different address... So uh... Yes
.global Pos_table
Pos_table: 			.space 0x100		//
.global Competition_saved_data
Competition_saved_data:		.space 0x54		// saved data from Competition Mode
			.space 0xC				// unused
.global Save_pointer 
Save_pointer:			// pointer to the active save slot in 1 player mode
			.space 4*1			// Sonic 3 has a different address... So uh... Yes
			.space 2*1				// unused
.global Emerald_flicker_flag
Emerald_flicker_flag:		.space 2*1			// controls the emerald flicker in save screen and special stage results.
			.space 0x44			// unused
.global Saved_data 
Saved_data:			// saved data from 1 player mode
				.space 0x54		// Sonic 3 has a different address... So uh... Yes
.global Ring_status_table
Ring_status_table:		.space 0x400		// 1 word per ring
.global Object_respawn_table
Object_respawn_table:		.space 0x300		// 1 byte per object, every object in the level gets an entry

			// various camera and scroll-related variables are stored here
.global H_scroll_amount
H_scroll_amount:			.space 2*1			// number of pixels camera scrolled horizontally in the last frame * 0x100
.global V_scroll_amount
V_scroll_amount:			.space 2*1			// number of pixels camera scrolled vertically in the last frame * 0x100
.global H_scroll_amount_P2
H_scroll_amount_P2:		.space 2*1
.global V_scroll_amount_P2
V_scroll_amount_P2:		.space 2*1
.global _unkEE08
_unkEE08:			.space 1			// this is actually unused
			.space 1				// unused
.global Scroll_lock
Scroll_lock:			.space 1			// if this is set scrolling routines aren't called
.global Scroll_lock_P2
Scroll_lock_P2:			.space 1
.global Camera_target_min_X_pos
Camera_target_min_X_pos:		.space 2*1
.global Camera_target_max_X_pos
Camera_target_max_X_pos:		.space 2*1
.global Camera_target_min_Y_pos
Camera_target_min_Y_pos:		.space 2*1
.global Camera_target_max_Y_pos
Camera_target_max_Y_pos:		.space 2*1
.global Camera_min_X_pos
Camera_min_X_pos:		.space 2*1
.global Camera_max_X_pos
Camera_max_X_pos:		.space 2*1
.global Camera_min_Y_pos
Camera_min_Y_pos:		.space 2*1
.global Camera_max_Y_pos
Camera_max_Y_pos:		.space 2*1			// this is the only one which ever differs from its target value
.global Camera_min_X_pos_P2
Camera_min_X_pos_P2:		.space 2*1
.global Camera_max_X_pos_P2
Camera_max_X_pos_P2:		.space 2*1
.global Camera_min_Y_pos_P2
Camera_min_Y_pos_P2:		.space 2*1
.global Camera_max_Y_pos_P2
Camera_max_Y_pos_P2:		.space 2*1
.global H_scroll_frame_offset
H_scroll_frame_offset:		.space 2*1			// if this is non-zero with value x, horizontal scrolling will be based on the player's position x / 0x100 + 1 frames ago
.global Pos_table_index
Pos_table_index:			.space 2*1			// goes up in increments of 4
.global H_scroll_frame_offset_P2
H_scroll_frame_offset_P2:	.space 2*1
.global Pos_table_index_P2
Pos_table_index_P2:		.space 2*1
.global Distance_from_top
Distance_from_top:		.space 2*1			// the vertical scroll manager scrolls the screen until the player's distance from the top of the screen is equal to this (or between this and this + 0x40 when in the air). 0x60 by default
.global Distance_from_top_P2
Distance_from_top_P2:		.space 2*1
.global Deform_lock
Deform_lock:			.space 1
			.space 1				// unused
.global Camera_max_Y_pos_changing
Camera_max_Y_pos_changing:	.space 1			// set when the maximum camera Y pos is undergoing a change
.global Dynamic_resize_routine
Dynamic_resize_routine:		.space 1
			.space 5				// unused
.global Fast_V_scroll_flag
Fast_V_scroll_flag:		.space 1			// if this is set vertical scroll when the player is on the ground and has a speed of less than 0x800 is capped at 24 pixels per frame instead of 6
.global V_scroll_value_P2_copy
V_scroll_value_P2_copy:		.space 4*1			// upper word for foreground, lower word for background
.global Camera_X_diff
Camera_X_diff:			.space 2*1			// difference between Camera_X_pos_copy and Camera_X_pos_BG_copy, used for background collision in SSZ and other levels
.global Camera_Y_diff
Camera_Y_diff:			.space 2*1			// difference between Camera_Y_pos_copy and Camera_Y_pos_BG_copy, used for background collision in SSZ and other levels
.global Ring_start_addr_ROM
Ring_start_addr_ROM:		.space 4*1			// address in the ring layout of the first ring whose X position is >= camera X position - 8
.global Ring_end_addr_ROM
Ring_end_addr_ROM:		.space 4*1			// address in the ring layout of the first ring whose X position is >= camera X position + 328
.global Ring_start_addr_RAM
Ring_start_addr_RAM:		.space 2*1			// address in the ring status table of the first ring whose X position is >= camera X position - 8
			.space 2*1				// unused

.global Apparent_zone
Apparent_zone:			.space 1			// always equal to actual zone
.global Apparent_act
Apparent_act:			.space 1			// for example, after AIZ gets burnt, this indicates act 1 even though it's actually act 2
.global Palette_fade_timer
Palette_fade_timer:		.space 2*1			// the palette gets faded in until this timer expires
.global _unkEE52
_unkEE52:			.space 4*1			// something to do with competition mode
.global _unkEE56
_unkEE56:			.space 4*1			// something to do with competition mode. Wiki said this was to do with demos, but I doubt that's the case
.global _unkEE5A
_unkEE5A:			.space 1
			.space 1				// unused
.global _unkEE5C
_unkEE5C:			.space 2*1
.global Act3_flag
Act3_flag:			.space 1			// set when entering LRZ 3 or DEZ 3 directly from previous act. Prevents title card from loading
			.space 1				// unused
.global Camera_X_pos_P2
Camera_X_pos_P2:			.space 4*1
.global Camera_Y_pos_P2
Camera_Y_pos_P2:			.space 4*1
.global Camera_X_pos_P2_copy
Camera_X_pos_P2_copy:		.space 2*1
			.space 2*1				// unused
.global Camera_Y_pos_P2_copy
Camera_Y_pos_P2_copy:		.space 2*1
			.space 2*1				// unused
.global _unkEE70
_unkEE70:			.space 2*1			// it is unclear how this is used
			.space 2*1				// unused
.global _unkEE74
_unkEE74:			.space 2*1			// it is unclear how this is used
			.space 2*1				// unused
.global Camera_X_pos
Camera_X_pos:			.space 4*1
.global Camera_Y_pos
Camera_Y_pos:			.space 4*1
.global Camera_X_pos_copy
Camera_X_pos_copy:		.space 4*1
.global Camera_Y_pos_copy
Camera_Y_pos_copy:		.space 4*1
.global Camera_X_pos_rounded
Camera_X_pos_rounded:		.space 2*1			// rounded down to the nearest block boundary (0x10th pixel)
.global Camera_Y_pos_rounded
Camera_Y_pos_rounded:		.space 2*1			// rounded down to the nearest block boundary (0x10th pixel)
.global Camera_X_pos_BG_copy
Camera_X_pos_BG_copy:		.space 2*1
.global _unkEE8E
_unkEE8E:			.space 2*1			// various uses in screen/background events and competition mode

.global Camera_Y_pos_BG_copy
Camera_Y_pos_BG_copy:		.space 4*1
.global Camera_X_pos_BG_rounded
Camera_X_pos_BG_rounded:		.space 2*1			// rounded down to the nearest block boundary (0x10th pixel)
.global Camera_Y_pos_BG_rounded
Camera_Y_pos_BG_rounded:		.space 2*1			// rounded down to the nearest block boundary (0x10th pixel)
.global _unkEE98
_unkEE98:			.space 4*1			// various uses in screen/background events and competition mode
.global _unkEE9C
_unkEE9C:			.space 4*1			// various uses in screen/background events and competition mode
.global _unkEEA0
_unkEEA0:			.space 2*1			// various uses in screen/background events and competition mode
.global _unkEEA2
_unkEEA2:			.space 2*1			// various uses in screen/background events and competition mode
.global Plane_double_update_flag
Plane_double_update_flag:	.space 2*1			// set when two block are to be updated instead of one (i.e. the camera's scrolled by more than 0x10 pixels)
.global Special_V_int_routine
Special_V_int_routine:		.space 2*1
.global Screen_X_wrap_value
Screen_X_wrap_value:		.space 2*1			// set to 0xFFFF
.global Screen_Y_wrap_value
Screen_Y_wrap_value:		.space 2*1			// either 0x7FF or 0xFFF
.global Camera_Y_pos_mask
Camera_Y_pos_mask:		.space 2*1			// either 0x7F0 or 0xFF0
.global Layout_row_index_mask
Layout_row_index_mask:		.space 2*1			// either 0x3C or 0x7C

.global _unkEEB0
_unkEEB0:			.space 2*1			//
.global Special_events_routine
Special_events_routine:		.space 2*1			// routine counter for various special events. Used for example with LBZ2 Death Egg sequence
.global Events_fg_0
Events_fg_0:			.space 2*1			// various flags used by screen events
.global Events_fg_1
Events_fg_1:			.space 2*1			// various flags used by screen events
.global Events_fg_2
Events_fg_2:			.space 2*1			// various flags used by screen events
.global _unkEEBA
_unkEEBA:			.space 2*1			// only used in Sonic 3
.global Level_repeat_offset
Level_repeat_offset:		.space 2*1			// the number of pixels the screen was moved this frame, used to offset level objects horizontally. Used only for level repeat sections, such as AIZ airship.
.global Events_fg_3
Events_fg_3:			.space 2*1			// various flags used by screen events
.global Events_routine_fg
Events_routine_fg:		.space 2*1			// screen events routine counter
.global Events_routine_bg
Events_routine_bg:		.space 2*1			// background events routine counter
.global Events_fg_4
Events_fg_4:			.space 2*1			// various flags used by screen events
.global Events_fg_5
Events_fg_5:			.space 2*1			// various flags used by screen events
.global Draw_delayed_position
Draw_delayed_position:		.space 2*1			// position to redraw screen from. Screen is reloaded 1 row at a time to avoid game lag
.global Draw_delayed_rowcount
Draw_delayed_rowcount:		.space 2*1			// number of rows for screen redrawing. Screen is reloaded 1 row at a time to avoid game lag
.global Screen_shake_flag
Screen_shake_flag:		.space 2*1			// flag for enabling screen shake. Negative values cause screen to shake infinitely, positive values make the screen shake for a short amount of time
.global Screen_shake_offset
Screen_shake_offset:		.space 2*1			// vertical offset when screen_shake_flag is enabled. This is added to camera position later
.global Screen_shake_last_offset
Screen_shake_last_offset:	.space 2*1			// value of Screen_shake_offset for the previous frame

.global Events_bg
Events_bg:			.space 0x18		// 0x18 bytes // various flags used by background events
		// word // RAM address of the special stage results object
			// 0x14 bytes // addresses for cloud objects in FBZ2
			// 0x50 bytes // vertical scroll buffer used in various levels
.global _unkEEEA
_unkEEEA:			.space 2*1			// various unknown uses for EEEA
			.space 2*1				// used in some instances (see above)
.global _unkEEEE
_unkEEEE:			.space 2*1			// used exclusively in SSZ background events code
			.space 2*1				// used in some instances (see above)
.global _unkEEF2
_unkEEF2:			.space 2*1			// used exclusively in SSZ background events code
.global _unkEEF4
_unkEEF4:			.space 2*1			// used exclusively in SSZ background events code
.global _unkEEF6
_unkEEF6:			.space 4*1			// used exclusively in SSZ background events code
.global _unkEEFA
_unkEEFA:			.space 2*1			// used exclusively in SSZ background events code
			.space 0x3E			// used in some instances (see above)

.global Spritemask_flag
Spritemask_flag:			.space 2*1			// when set, indicates that special sprites are used for sprite masking
.global Use_normal_sprite_table
Use_normal_sprite_table:		.space 2*1			// if this is set Sprite_table_buffer and Sprite_table_buffer_P2 will be DMAed instead of Sprite_table_buffer_2 and Sprite_table_buffer_P2_2
.global Switch_sprite_table
Switch_sprite_table:		.space 2*1			// if set, switches the state of Use_normal_sprite_table
			// if set, Launch Base 2 Death Egg is currently rising
.global _unkEF40_1
_unkEF40_1:			.space 4*1			// used as a part of calculating decimal scores
			// used as a jump pointer in vint 1E, unknown why this is used
.global _unkEF44_2
_unkEF44_2:			.space 4*1			// used as a part of calculating decimal scores
.global Competition_menu_selection
Competition_menu_selection:	.space 1			// 0 = Grandprix, 1 = Matchrace, 2 = Timeattack. 3 = Exit
.global Not_ghost_flag
Not_ghost_flag:			.space 1			// set if Player 2 in competition mode isn't a ghost of player 1
.global Competition_menu_zone
Competition_menu_zone:		.space 1			// competition mode zone id. This is different from the zone order in game
.global Dataselect_entry
Dataselect_entry:		.space 1			// the selected save entry in data select menu. This includes no save and delete options, too
.global Dataselect_nosave_player
Dataselect_nosave_player:	.space 2*1			// Player mode for NO SAVE option in data select menu
.global Competition_menu_monitors
Competition_menu_monitors:	.space 1			// 0 = Enabled, FF = Disabled
			.space 1				// unused
.global Demo_start_button
Demo_start_button:		.space 1			// keeps track of whether controller 1 has pressed the start button. May be used by the demo data itself
			.space 1				// unused
.global Demo_data_addr
Demo_data_addr:			.space 4*1			// keeps getting incremented as the demo progresses
.global SRAM_mask_interrupts_flag
SRAM_mask_interrupts_flag:	.space 2*1			// if this is set SRAM routines will mask all interrupts (by setting the SR to 0x2700)
			.space 2*1				// unused
.global Object_index_addr
Object_index_addr:		.space 4*1			// points to either the object index for S3 levels or that for S&K levels
.global Act3_ring_count
Act3_ring_count:			.space 2*1			// stores ring count during act 3 transition
.global Act3_timer
Act3_timer:			.space 4*1			// stores timer during act 3 transition
.global Camera_Y_pos_coarse_back
Camera_Y_pos_coarse_back:	.space 2*1			// Camera_Y_pos_coarse - 0x80
.global Glide_screen_shake
Glide_screen_shake:		.space 2*1			// alternate screen shaking flag only used when hyper knuckles hits a wall after gliding
.global _unkEF68
_unkEF68:			.space 2*1			// stores a tile used in special stage results screen, unknown purpose
.global Special_stage_zone_and_act
Special_stage_zone_and_act:	.space 2*1			// stored zone and act during special stage results screen?
.global HPZ_special_stage_completed
HPZ_special_stage_completed:	.space 2*1			// set if special stage was completed. This determines which cutscene to play when entering HPZS
.global Current_special_stage_2
Current_special_stage_2:		.space 1			// seems to be just a copy of Current_special_stage
			.space 1				// unused
.global HPZ_current_special_stage
HPZ_current_special_stage:	.space 1			// seems to be just a copy of Current_special_stage used specifically for HPZS
			.space 1				// unused
.global Ending_running_flag
Ending_running_flag:		.space 2*1			// the only thing this does is prevent the game from pausing
.global Plane_buffer_2_addr
Plane_buffer_2_addr:		.space 4*1			// the address of the second plane buffer to process, if applicable
.global Demo_hold_counter
Demo_hold_counter:		.space 1			// the number of frames to hold the current buttons. This only applies to S&K demos
.global Demo_hold_buttons
Demo_hold_buttons:		.space 1			// the buttons to hold. This only applies to S&K demos
.global Demo_number
Demo_number:			.space 2*1			// the currently running demo
			.space 4*1				// unused

			// 0x80 bytes // stores the addresses of all rings currently being consumed
.global Ring_consumption_count
Ring_consumption_count:		.space 2*1			// the number of rings being consumed currently
.global Ring_consumption_list
Ring_consumption_list:		.space 2*0x3F		// the remaining part of the ring consumption table

			// 0x600 bytes // yes, this area is used to for special stage layouts!
.global Target_water_palette
Target_water_palette:		.space 0x80		// used by palette fading routines
.global Water_palette
Water_palette:			.space 0x80		// this is what actually gets displayed
	// 0x20 bytes
	// 0x20 bytes
	// 0x20 bytes
.global Plane_buffer
Plane_buffer:			.space 0x480		// used by level drawing routines
.global VRAM_buffer
VRAM_buffer:			.space 0x80		// used to temporarily hold data while it is being transferred from one VRAM location to another

.global Game_mode
Game_mode:			.space 1
			.space 1				// unused
			// both held and pressed
.global Ctrl_1_held_logical
Ctrl_1_held_logical:		.space 1
.global Ctrl_1_pressed_logical
Ctrl_1_pressed_logical:		.space 1
			// both held and pressed
.global Ctrl_1_held
Ctrl_1_held:			.space 1			// all held buttons
.global Ctrl_1_pressed
Ctrl_1_pressed:			.space 1			// buttons being pressed newly this frame
			// both held and pressed
.global Ctrl_2_held
Ctrl_2_held:			.space 1
.global Ctrl_2_pressed
Ctrl_2_pressed:			.space 1
.global _tempF608
_tempF608:		.space 6				// this is used in Sonic 3 Alone, but unused in Sonic & Knuckles and Sonic 3 Complete

.global VDP_reg_1_command
VDP_reg_1_command:		.space 2*1			// AND the lower byte by 0xBF and write to VDP control port to disable display, OR by 0x40 to enable
			.space 4*1				// unused
.global Demo_timer
Demo_timer:			.space 2*1			// the time left for a demo to start/run
			// both foreground and background
.global V_scroll_value_FG
V_scroll_value_FG:		.space 2*1
.global V_scroll_value_BG
V_scroll_value_BG:		.space 2*1
.global _unkF61A
_unkF61A:			.space 4*1			// unused

.global V_scroll_value_FG_P2
V_scroll_value_FG_P2:		.space 2*1
.global V_scroll_value_BG_P2
V_scroll_value_BG_P2:		.space 2*1
.global Teleport_active_timer
Teleport_active_timer:		.space 1			// left over from Sonic 2
.global Teleport_active_flag
Teleport_active_flag:		.space 1			// left over from Sonic 2
.global H_int_counter_command
H_int_counter_command:		.space 2*1			// contains a command to write to VDP register 0x0A (line interrupt counter)
	// just the counter part of the command
			// both index and count
.global Palette_fade_index
Palette_fade_index:		.space 1			// colour to start fading from
.global Palette_fade_count
Palette_fade_count:		.space 1			// the number of colours to fade
.global Lag_frame_count
Lag_frame_count:			.space 2*1			// more specifically, the number of times V-int routine 0 has run. Reset at the end of a normal frame
.global V_int_routine
V_int_routine:			.space 1
			.space 1				// unused
.global Sprites_drawn
Sprites_drawn:			.space 1			// used to ensure the sprite limit isn't exceeded
			.space 1				// unused
.global Water_palette_data_addr
Water_palette_data_addr:		.space 4*1			// points to the water palette data for the current level
.global Palette_cycle_counter0
Palette_cycle_counter0:		.space 2*1			// various counters and variables for palette cycles
.global Palette_cycle_counter1
Palette_cycle_counter1:		.space 2*1			// various counters and variables for palette cycles
.global RNG_seed
RNG_seed:			.space 4*1			// used by the random number generator
.global Game_paused
Game_paused:			.space 2*1
			.space 4*1				// unused
.global DMA_trigger_word
DMA_trigger_word:		.space 2*1			// transferred from RAM to avoid crashing the Mega Drive
			.space 2*1				// unused
.global H_int_flag
H_int_flag:			.space 2*1			// unless this is set H-int will return immediately

.global Water_level
Water_level:			.space 2*1			// keeps fluctuating
.global Mean_water_level
Mean_water_level:		.space 2*1			// the steady central value of the water level
.global Target_water_level
Target_water_level:		.space 2*1
.global Water_speed
Water_speed:			.space 1			// this is added to or subtracted from Mean_water_level every frame till it reaches Target_water_level
.global Water_entered_counter
Water_entered_counter:		.space 1			// incremented when entering and exiting water, read by the the floating AIZ spike log, cleared on level initialisation and dynamic events of certain levels
.global Water_full_screen_flag
Water_full_screen_flag:		.space 1			// set if water covers the entire screen (i.e. the underwater pallete should be DMAed during V-int rather than the normal palette)
.global Do_Updates_in_H_int
Do_Updates_in_H_int:		.space 1			// if this is set Do_Updates will be called from H-int instead of V-int
.global Palette_cycle_counters
Palette_cycle_counters:		.space 0xC			// various counters and variables for palette cycles
.global Palette_frame
Palette_frame:			.space 2*1
.global Palette_timer
Palette_timer:			.space 1
.global Super_palette_status
Super_palette_status:		.space 1			 // appears to be a flag for the palette's current status: '0' for 'off', '1' for 'fading', -1 for 'fading done'
.global _unkF660
_unkF660:			.space 2*1
.global _unkF662
_unkF662:			.space 2*1			 // unused
.global Background_collision_flag
Background_collision_flag:	.space 1			 // if set, background collision is enabled
.global Disable_death_plane
Disable_death_plane:		.space 1			 // if set, going below the screen wont kill the player
.global Hyper_Sonic_flash_timer
Hyper_Sonic_flash_timer:		.space 1			 // used for Hyper Sonic's double jump move
.global Super_Tails_flag
Super_Tails_flag:		.space 1
.global Palette_frame_Tails
Palette_frame_Tails:		.space 1			 // Tails would use Palette_frame and Palette_timer, but they're reserved for his Super Flickies
.global Palette_timer_Tails
Palette_timer_Tails:		.space 1
			 // both held and pressed
.global Ctrl_2_held_logical
Ctrl_2_held_logical:		.space 1
.global Ctrl_2_pressed_logical
Ctrl_2_pressed_logical:		.space 1
.global _unkF66C
_unkF66C:			.space 1
			.space 3				// unused
.global Super_frame_count
Super_frame_count:		.space 2*1
			.space 4*1				// unused
.global Scroll_force_positions
Scroll_force_positions:		.space 1			// if this is set scrolling will be based on the two variables below rather than the player's actual position
			.space 1				// unused
.global Scroll_forced_X_pos
Scroll_forced_X_pos:		.space 2*1
			.space 2*1				// unused
.global Scroll_forced_Y_pos
Scroll_forced_Y_pos:		.space 2*1			// note: must be exactly 4 bytes after Scroll_forced_X_pos
			.space 2*1				// unused

.global Nem_decomp_queue
Nem_decomp_queue:		.space 6*0x10		// 6 bytes per entry, first longword is source location and next word is VRAM destination
	// long // the compressed data location for the first entry in the queue
	// word // destination in VRAM for the first entry in the queue
			// 0x20 bytes // various variables used by the Nemesis decompression queue processor
.global Nem_write_routine
Nem_write_routine:		.space 4*1			// points to either Nem_PCD_WriteRowToVDP or Nem_PCD_WriteRowToVDP_XOR
.global Nem_repeat_count
Nem_repeat_count:		.space 4*1			// stored repeat count for the current palette index
.global Nem_palette_index
Nem_palette_index:		.space 4*1			// the current palette index
.global Nem_previous_row
Nem_previous_row:		.space 4*1			// used in XOR mode
.global Nem_data_word
Nem_data_word:			.space 4*1			// contains the current compressed word being processed
.global Nem_shift_value
Nem_shift_value:			.space 4*1			// the number of bits the data word needs to be shifted by
.global Nem_patterns_left
Nem_patterns_left:		.space 2*1			// the number of patterns remaining to be decompressed
.global Nem_frame_patterns_left
Nem_frame_patterns_left:		.space 2*1			// the number of patterns remaining to be decompressed in the current frame
			.space 4*1				// unused?

.global Tails_CPU_interact
Tails_CPU_interact:		.space 2*1			// RAM address of the last object Tails stood on while controlled by AI
.global Tails_CPU_idle_timer
Tails_CPU_idle_timer:		.space 2*1			// counts down while controller 2 is idle, when it reaches 0 the AI takes over
.global Tails_CPU_flight_timer
Tails_CPU_flight_timer:		.space 2*1			// counts up while Tails is respawning, when it reaches 300 he drops into the level
			.space 2*1				// unused
.global Tails_CPU_routine
Tails_CPU_routine:		.space 2*1			// Tails' current AI routine in a Sonic and Tails game
.global Tails_CPU_target_X
Tails_CPU_target_X:		.space 2*1			// Tails' target x-position
.global Tails_CPU_target_Y
Tails_CPU_target_Y:		.space 2*1			// Tails' target y-position
.global _unkF70E
_unkF70E:			.space 1
.global _unkF70F
_unkF70F:			.space 1
.global Rings_manager_routine
Rings_manager_routine:		.space 1
.global Level_started_flag
Level_started_flag:		.space 1
.global _unkF712
_unkF712:			.space 0x1C		// ??? // unknown object respawn table
.global AIZ1_palette_cycle_flag
AIZ1_palette_cycle_flag:		.space 1			// selects which palette cycles are used in AIZ1
			.space 1				// unused
.global Water_flag
Water_flag:			.space 1
			.space 0xD				// unused
.global Flying_carrying_Sonic_flag
Flying_carrying_Sonic_flag:	.space 1			// set when Tails carries Sonic in a Sonic and Tails game
.global Flying_picking_Sonic_timer
Flying_picking_Sonic_timer:	.space 1			// until this is 0 Tails can't pick Sonic up
.global _unkF740
_unkF740:			.space 2*1
			.space 2*1				// unused
.global _unkF744
_unkF744:			.space 2*1
.global Tails_CPU_star_post_flag
Tails_CPU_star_post_flag:	.space 1			// copy of Last_star_post_hit, sets Tails' starting behavior in a Sonic and Tails game
			.space 1				// unused
			// copy of Ctrl_1, used on the title screen
.global Ctrl_1_held_title
Ctrl_1_held_title:		.space 1
.global Ctrl_1_pressed_title
Ctrl_1_pressed_title:		.space 1
.global _unkF74A
_unkF74A:			.space 1
.global _unkF74B
_unkF74B:			.space 1
.global _unkF74C
_unkF74C:			.space 2*1
.global _unkF74E
_unkF74E:			.space 1
.global Disable_wall_grab
Disable_wall_grab:		.space 1			// if set, disables Knuckles wall grab
			.space 0x10			// unused
.global Max_speed
Max_speed:			.space 2*1
.global Acceleration
Acceleration:			.space 2*1
.global Deceleration
Deceleration:			.space 2*1
.global Player_prev_frame
Player_prev_frame:		.space 1			// used by DPLC routines to detect whether a DMA transfer is required
			.space 1				// unused
.global Primary_Angle
Primary_Angle:			.space 1
			.space 1				// unused
.global Secondary_Angle
Secondary_Angle:			.space 1
			.space 1				// unused

.global Object_load_routine
Object_load_routine:		.space 1			// routine counter for the object loading manager
			.space 1				// unused
.global Camera_X_pos_coarse
Camera_X_pos_coarse:		.space 2*1			// rounded down to the nearest chunk boundary (128th pixel)
.global Camera_Y_pos_coarse
Camera_Y_pos_coarse:		.space 2*1			// rounded down to the nearest chunk boundary (128th pixel)
.global Object_load_addr_front
Object_load_addr_front:		.space 4*1			// the address inside the object placement data of the first object whose X pos is >= Camera_X_pos_coarse + 0x280
.global Object_load_addr_back
Object_load_addr_back:		.space 4*1			// the address inside the object placement data of the first object whose X pos is >= Camera_X_pos_coarse - 0x80
.global Object_respawn_index_front
Object_respawn_index_front:	.space 2*1			// the object respawn table index for the object at Obj_load_addr_front
.global Object_respawn_index_back
Object_respawn_index_back:	.space 2*1			// the object respawn table index for the object at Obj_load_addr_back
			.space 0x16			// unused
.global Pal_fade_delay
Pal_fade_delay:			.space 2*1			// timer for palette fade routines
.global Collision_addr
Collision_addr:			.space 4*1			// points to the primary or secondary collision data as appropriate
			.space 0x10			// unused
.global Boss_flag
Boss_flag:			.space 1			// set if a boss fight is going on
			.space 5				// unused
.global _unkF7B0
_unkF7B0:			.space 4

.global Primary_collision_addr
Primary_collision_addr:		.space 4*1
.global Secondary_collision_addr
Secondary_collision_addr:	.space 4*1
			.space 4*1				// unused
.global MHZ_pollen_counter
MHZ_pollen_counter:		.space 1			// number of currently active pollen or leaves in MHZ
.global _unkF7C1
_unkF7C1:			.space 1
.global _unkF7C2
_unkF7C2:			.space 1
.global _unkF7C3
_unkF7C3:			.space 1
.global _unkF7C4
_unkF7C4:			.space 2*1
.global Reverse_gravity_flag
Reverse_gravity_flag:		.space 1
.global _unkF7C7
_unkF7C7:			.space 1
.global WindTunnel_flag
WindTunnel_flag:			.space 1
.global WindTunnel_flag_P2
WindTunnel_flag_P2:		.space 1
.global Ctrl_1_locked
Ctrl_1_locked:			.space 1
.global Ctrl_2_locked
Ctrl_2_locked:			.space 1
			.space 4*1				// unused
.global Chain_bonus_counter
Chain_bonus_counter:		.space 2*1
.global Time_bonus_countdown
Time_bonus_countdown:		.space 2*1			// used on the results screen
.global Ring_bonus_countdown
Ring_bonus_countdown:		.space 2*1			// used on the results screen
			.space 4*1				// unused
.global Camera_X_pos_coarse_back
Camera_X_pos_coarse_back:	.space 2*1			// Camera_X_pos_coarse - 0x80
.global _unkF7DC
_unkF7DC:			.space 2*1
.global Player_prev_frame_P2
Player_prev_frame_P2:		.space 1			// used by DPLC routines to detect whether a DMA transfer is required
.global Player_prev_frame_P2_tail
Player_prev_frame_P2_tail:	.space 1			// used by DPLC routines to detect whether a DMA transfer is required
.global Level_trigger_array
Level_trigger_array:		.space 0x10		// used by buttons, etc.
.global Anim_Counters
Anim_Counters:			.space 0x10		// each word stores data on animated level art, including duration and current frame

.global Sprite_table_buffer
Sprite_table_buffer:		.space 0x280
.global _unkFA80
_unkFA80:			.space 2*1			// unused
.global _unkFA82
_unkFA82:			.space 1
.global _unkFA83
_unkFA83:			.space 1
.global _unkFA84
_unkFA84:			.space 2*1
.global _unkFA86
_unkFA86:			.space 2*1
.global _unkFA88
_unkFA88:			.space 1
.global _unkFA89
_unkFA89:			.space 1
.global _unkFA8A
_unkFA8A:			.space 2*1
.global _unkFA8C
_unkFA8C:			.space 2*1			// unused?
.global _unkFA8E
_unkFA8E:			.space 2*1
.global _unkFA90
_unkFA90:			.space 2*1
.global Target_camera_max_X_pos
Target_camera_max_X_pos:		.space 2*1			// the target camera maximum x-position
.global Target_camera_min_X_pos
Target_camera_min_X_pos:		.space 2*1			// the target camera minimum x-position
.global Target_camera_min_Y_pos
Target_camera_min_Y_pos:		.space 2*1			// the target camera minimum y-position
.global Target_camera_max_Y_pos
Target_camera_max_Y_pos:		.space 2*1			// the target camera maximum y-position
.global Slotted_object_bits
Slotted_object_bits:		.space 2*1			// bits to determine which slots are used for slotted objects
			.space 6				// unused
.global _unkFAA2
_unkFAA2:			.space 1
.global _unkFAA3
_unkFAA3:			.space 1
.global _unkFAA4
_unkFAA4:			.space 2*1
.global Signpost_addr
Signpost_addr:			.space 2*1			// address of the currently active signpost object. Hidden monitors use this for bouncing
.global _unkFAA8
_unkFAA8:			.space 1
.global _unkFAA9
_unkFAA9:			.space 1
.global End_of_level_flag
End_of_level_flag:		.space 1			// set if end of level is current active, for example after beating a boss
.global _unkFAAB
_unkFAAB:			.space 1
.global _unkFAAC
_unkFAAC:			.space 1
.global _unkFAAD
_unkFAAD:			.space 1
.global _unkFAAE
_unkFAAE:			.space 2*1
.global _unkFAB0
_unkFAB0:			.space 2*1
.global _unkFAB2
_unkFAB2:			.space 2*1
.global _unkFAB4
_unkFAB4:			.space 2*1
.global _unkFAB6
_unkFAB6:			.space 2*1
.global _unkFAB8
_unkFAB8:			.space 1
.global _unkFAB9
_unkFAB9:			.space 1
.global _unkFABA
_unkFABA:			.space 2*1
.global _unkFABC
_unkFABC:			.space 1
.global _unkFABD
_unkFABD:			.space 1
.global _unkFABE
_unkFABE:			.space 1			// unused?
.global Palette_rotation_disable
Palette_rotation_disable:	.space 1			// if set, palette rotation scripts are disabled
.global _unkFAC0
_unkFAC0:			.space 1
.global _unkFAC1
_unkFAC1:			.space 1
.global _unkFAC2
_unkFAC2:			.space 2*1
.global _unkFAC4
_unkFAC4:			.space 2*1
			.space 2*1				// unused
.global _unkFAC8
_unkFAC8:			.space 2*1
			.space 2*1				// unused
.global _unkFACC
_unkFACC:			.space 1
.global _unkFACD
_unkFACD:			.space 1
.global Pal_fade_delay2
Pal_fade_delay2:			.space 2*1			// timer for palette fade from white routine
			.space 0xA				// unused
.global Palette_rotation_custom
Palette_rotation_custom:		.space 4*1			// custom routine for palette rotation scripts
.global Palette_rotation_data
Palette_rotation_data:		.space 2*9			// data used by palette rotation scripts. Last word must always be 0
.global _unkFAF0
_unkFAF0:			.space 2*1
			.space 2*1				// unused
.global _unkFAF4
_unkFAF4:			.space 2*1
			.space 2*1				// unused
.global _unkFAF8
_unkFAF8:			.space 2*1
.global _unkFAFA
_unkFAFA:			.space 2*1
.global _unkFAFC
_unkFAFC:			.space 2*1
			.space 2*1				// unused

.global DMA_queue
DMA_queue:			.space 2*0x12*7		// stores all the VDP commands necessary to initiate a DMA transfer
.global DMA_queue_slot
DMA_queue_slot:			.space 4*1			// points to the next free slot on the queue

.global Normal_palette
Normal_palette:			.space 0x80
	// 0x20 bytes
	// 0x20 bytes
	// 0x20 bytes
.global Target_palette
Target_palette:			.space 0x80		// used by palette fading routines
	// 0x20 bytes
	// 0x20 bytes
	// 0x20 bytes
.global Restart_level_flag
Restart_level_flag:		.space 2*1
.global Level_frame_counter
Level_frame_counter:		.space 2*1			// the number of frames which have elapsed since the level started
.global Debug_object
Debug_object:			.space 1			// the current position in the debug mode object list
			.space 1				// unused
			// both routine and type
.global Debug_placement_routine
Debug_placement_routine:		.space 1
.global Debug_placement_type
Debug_placement_type:		.space 1			// 0 = normal gameplay, 1 = normal object placement, 2 = frame cycling
.global Debug_camera_delay
Debug_camera_delay:		.space 1
.global Debug_camera_speed
Debug_camera_speed:		.space 1
.global V_int_run_count
V_int_run_count:			.space 4*1			// the number of times V-int has run

.global Current_zone
Current_zone:			.space 1
.global Current_act
Current_act:			.space 1
.global Life_count
Life_count:			.space 1
			.space 3				// unused
.global Current_special_stage
Current_special_stage:		.space 1
			.space 1				// unused
.global Continue_count
Continue_count:			.space 1
.global Super_Sonic_Knux_flag
Super_Sonic_Knux_flag:		.space 1
.global Time_over_flag
Time_over_flag:			.space 1
.global Extra_life_flags
Extra_life_flags:		.space 1
.global Update_HUD_life_count
Update_HUD_life_count:		.space 1
.global Update_HUD_ring_count
Update_HUD_ring_count:		.space 1
.global Update_HUD_timer
Update_HUD_timer:		.space 1
.global Update_HUD_score
Update_HUD_score:		.space 1
.global Ring_count
Ring_count:			.space 2*1
.global Timer
Timer:				.space 4*1


			// the second gets incremented when this reaches 60
.global Score
Score:				.space 4*1
.global Last_star_post_hit
Last_star_post_hit:		.space 1

// the following variables are all saved when hitting a star post
.global Saved_last_star_post_hit
Saved_last_star_post_hit:	.space 1
.global Saved_zone_and_act
Saved_zone_and_act:		.space 2*1
.global Saved_X_pos
Saved_X_pos:			.space 2*1
.global Saved_Y_pos
Saved_Y_pos:			.space 2*1
.global Saved_ring_count
Saved_ring_count:		.space 2*1
.global Saved_timer
Saved_timer:			.space 4*1
.global Saved_art_tile
Saved_art_tile:			.space 2*1
.global Saved_solid_bits
Saved_solid_bits:		.space 2*1			// copy of Player 1's top_solid_bit and lrb_solid_bit
.global Saved_camera_X_pos
Saved_camera_X_pos:		.space 2*1
.global Saved_camera_Y_pos
Saved_camera_Y_pos:		.space 2*1
.global Saved_mean_water_level
Saved_mean_water_level:		.space 2*1
.global Saved_water_full_screen_flag
Saved_water_full_screen_flag:	.space 1
.global Saved_extra_life_flags
Saved_extra_life_flags:		.space 1
.global Saved_camera_max_Y_pos
Saved_camera_max_Y_pos:		.space 2*1
.global Saved_dynamic_resize_routine
Saved_dynamic_resize_routine:	.space 1
.global Saved_status_secondary
Saved_status_secondary:		.space 1
.global Special_bonus_entry_flag
Special_bonus_entry_flag:	.space 1			// 1 for entering a Special Stage, 2 for entering a Bonus Stage

// the following variables are all saved when entering a special stage
.global Saved2_last_star_post_hit
Saved2_last_star_post_hit:	.space 1
.global Saved2_zone_and_act
Saved2_zone_and_act:		.space 2*1
.global Saved2_X_pos
Saved2_X_pos:			.space 2*1
.global Saved2_Y_pos
Saved2_Y_pos:			.space 2*1
.global Saved2_ring_count
Saved2_ring_count:		.space 2*1
.global Saved2_timer
Saved2_timer:			.space 4*1
.global Saved2_art_tile
Saved2_art_tile:			.space 2*1
.global Saved2_solid_bits
Saved2_solid_bits:		.space 2*1
.global Saved2_camera_X_pos
Saved2_camera_X_pos:		.space 2*1
.global Saved2_camera_Y_pos
Saved2_camera_Y_pos:		.space 2*1
.global Saved2_mean_water_level
Saved2_mean_water_level:		.space 2*1
.global Saved2_water_full_screen_flag
Saved2_water_full_screen_flag:	.space 1
.global Saved2_extra_life_flags
Saved2_extra_life_flags:		.space 1
.global Saved2_camera_max_Y_pos
Saved2_camera_max_Y_pos:		.space 2*1
.global Saved2_dynamic_resize_routine
Saved2_dynamic_resize_routine:	.space 1

.global LRZ_rocks_routine
LRZ_rocks_routine:		.space 1			// routine counter for lrz special rocks
.global LRZ_rocks_addr_front
LRZ_rocks_addr_front:		.space 4*1			// the address inside the lrz rocks data of the first rock whose X pos is >= Camera_X_pos_coarse + 0x280
.global LRZ_rocks_addr_back
LRZ_rocks_addr_back:		.space 4*1			// the address inside the lrz rocks data of the first rock whose X pos is >= Camera_X_pos_coarse - 0x80
.global Oscillating_table
Oscillating_table:		.space 0x42		// various oscillating variables
			// end of oscillating data array
.global _unkFEB0
_unkFEB0:			.space 1
.global _unkFEB1
_unkFEB1:			.space 1
.global Rings_frame_timer
Rings_frame_timer:		.space 1
.global Rings_frame
Rings_frame:			.space 1
.global _unkFEB4
_unkFEB4:			.space 1
.global _unkFEB5
_unkFEB5:			.space 1
.global Ring_spill_anim_counter
Ring_spill_anim_counter:		.space 1
.global Ring_spill_anim_frame
Ring_spill_anim_frame:		.space 1
.global Ring_spill_anim_accum
Ring_spill_anim_accum:		.space 1
			.space 1				// unused
.global AIZ_vine_angle
AIZ_vine_angle:			.space 2*1			// controls the angle of AIZ giant vines
			.space 2*1				// unused
.global _unkFEBE
_unkFEBE:			.space 1			// unused
.global Extra_life_flags_P2
Extra_life_flags_P2:		.space 1
.global Max_speed_P2
Max_speed_P2:			.space 2*1
.global Acceleration_P2
Acceleration_P2:			.space 2*1
.global Deceleration_P2
Deceleration_P2:			.space 2*1
.global Life_count_P2
Life_count_P2:			.space 1			// left over from Sonic 2
.global _unkFEC7
_unkFEC7:			.space 1			// used in competition mode
.global Total_ring_count
Total_ring_count:		.space 2*1			// left over from Sonic 2
.global Total_ring_count_P2
Total_ring_count_P2:		.space 2*1			// left over from Sonic 2
.global Monitors_broken
Monitors_broken:			.space 2*1			// left over from Sonic 2. Apparently Sonic 3 developers liked copypasting, since gaining a life from rings also increments this counter
.global Monitors_broken_P2
Monitors_broken_P2:		.space 2*1			// left over from Sonic 2
.global Ring_count_P2
Ring_count_P2:			.space 2*1			// left over from Sonic 2
.global Timer_P2
Timer_P2:			.space 4*1			// left over from Sonic 2
		// left over from Sonic 2
.global Score_P2
Score_P2:			.space 4*1			// left over from Sonic 2
.global _unkFEDA
_unkFEDA:			.space 1
			.space 1				// unused
.global _unkFEDC
_unkFEDC:			.space 1
.global _unkFEDD
_unkFEDD:			.space 1
.global _unkFEDE
_unkFEDE:			.space 1			// unused
			.space 0x23			// unused
.global Results_screen_2P
Results_screen_2P:		.space 2*1			// left over from Sonic 2
.global Perfect_rings_left
Perfect_rings_left:		.space 2*1			// left over from Sonic 2
.global _unkFF06
_unkFF06:			.space 2*1			// uknown
.global Player_mode
Player_mode:			.space 2*1			// 0 = Sonic and Tails, 1 = Sonic alone, 2 = Tails alone, 3 = Knuckles alone, 4 = Knuckles and Tails
.global Player_option
Player_option:			.space 2*1			// option selected on level select, data select screen or Sonic & Knuckles title screen
			.space 2*1				// unused

.global Kos_decomp_queue_count
Kos_decomp_queue_count:		.space 2*1			// the number of pieces of data on the queue. Sign bit set indicates a decompression is in progress
.global Kos_decomp_stored_registers
Kos_decomp_stored_registers:	.space 2*20			// allows decompression to be spread over multiple frames
.global Kos_decomp_stored_SR
Kos_decomp_stored_SR:		.space 2*1
.global Kos_decomp_bookmark
Kos_decomp_bookmark:		.space 4*1			// the address within the Kosinski queue processor at which processing is to be resumed
.global Kos_description_field
Kos_description_field:		.space 2*1			// used by the Kosinski queue processor the same way the stack is used by the normal Kosinski decompression routine
.global Kos_decomp_queue
Kos_decomp_queue:		.space 4*2*4		// 2 longwords per entry, first is source location and second is decompression location
	// long // the compressed data location for the first entry in the queue
	// long // the decompression location for the first entry in the queue
.global Kos_modules_left
Kos_modules_left:		.space 1			// the number of modules left to decompresses. Sign bit set indicates a module is being decompressed/has been decompressed
			.space 1				// unused
.global Kos_last_module_size
Kos_last_module_size:		.space 2*1			// the uncompressed size of the last module in words. All other modules are 0x800 words
.global Kos_module_queue
Kos_module_queue:		.space 2*3*4		// 6 bytes per entry, first longword is source location and next word is VRAM destination
	// long // the compressed data location for the first module in the queue
	// word // the VRAM destination for the first module in the queue

.global _unkFF7C
_unkFF7C:			.space 2*1
.global _unkFF7E
_unkFF7E:			.space 2*1
.global Level_select_repeat
Level_select_repeat:		.space 2*1			// delay counter for repeating the button press. Allows the menu move even when up/down is held down
.global Level_select_option
Level_select_option:		.space 2*1			// the current selected option in the level select
.global Sound_test_sound
Sound_test_sound:		.space 2*1
.global Title_screen_option
Title_screen_option:		.space 1
			.space 1				// unused
.global _tempFF88
_tempFF88:		.space 2*1				// this is used in Sonic 3 Alone, but unused in Sonic & Knuckles and Sonic 3 Complete
.global Competition_mode_monitors
Competition_mode_monitors:	.space 1			// 0 = Enabled, FF = Disabled.
.global Competition_mode_type
Competition_mode_type:		.space 1			// 0 = grand prix, 3 = match race, -1 = time attack
.global _tempFF8C
_tempFF8C:		.space 1				// this is used in Sonic 3 Alone, but unused in Sonic & Knuckles and Sonic 3 Complete
			.space 1				// unused
.global Total_bonus_countup
Total_bonus_countup:		.space 2*1			// the total points to be added due to various bonuses this frame in the end of level results screen
.global Level_music
Level_music:			.space 2*1
.global Collected_special_ring_array
Collected_special_ring_array:	.space 4*1			// each bit indicates a special stage entry ring in the current zone
.global Saved2_status_secondary
Saved2_status_secondary:		.space 1
.global Respawn_table_keep
Respawn_table_keep:		.space 1			// if set, respawn table is not reset during level load
.global _tempFF98
_tempFF98:		.space 2*1				// this is used in Sonic 3 Alone, but unused in Sonic & Knuckles and Sonic 3 Complete
.global Saved_apparent_zone_and_act
Saved_apparent_zone_and_act:	.space 2*1
.global Saved2_apparent_zone_and_act
Saved2_apparent_zone_and_act:	.space 2*1
			.space 1				// unused

.global Blue_spheres_header_flag
Blue_spheres_header_flag:	.space 1			// 0 = SEGA GENESIS, 1 = SEGA MEGA DRIVE
.global Blue_spheres_mode
Blue_spheres_mode:		.space 1			// 0 = single stage, 1 = full game
.global Blue_spheres_menu_flag
Blue_spheres_menu_flag:		.space 1			// 0 = NO WAY!, 1 = normal, bit 7 set = entering a code
.global Blue_spheres_current_stage
Blue_spheres_current_stage:	.space 4			// the layout parts that make up the current stage
.global Blue_spheres_current_level
Blue_spheres_current_level:	.space 4*1			// number shown at the top of the full game menu
.global Blue_spheres_option
Blue_spheres_option:		.space 1			// 0 = level, 1 = start, 2 = code
.global Blue_spheres_progress_flag
Blue_spheres_progress_flag:	.space 1			// 0 = normal, -1 = disabled (single stage mode or using a code from single stage mode)
.global Blue_spheres_difficulty
Blue_spheres_difficulty:		.space 1			// value currently displayed
.global Blue_spheres_target_difficulty
Blue_spheres_target_difficulty:	.space 1			// byte // value read from the layout
.global SK_alone_flag
SK_alone_flag:			.space 2*1			// -1 if Sonic 3 isn't locked on
			// both chaos and super emeralds
.global Chaos_emerald_count
Chaos_emerald_count:		.space 1
.global Super_emerald_count
Super_emerald_count:		.space 1
.global Collected_emeralds_array
Collected_emeralds_array:	.space 7			// 1 byte per emerald, 0 = not collected, 1 = chaos emerald collected, 2 = grey super emerald, 3 = super emerald collected
			.space 1				// unused

.global Emeralds_converted_flag
Emeralds_converted_flag:		.space 1			// set if at least one emerald has been converted to a super emerald
.global SK_special_stage_flag
SK_special_stage_flag:		.space 1			// set if a Sonic & Knuckles special stage is being run
.global Title_anim_buffer
Title_anim_buffer:		.space 1			// status of the title animation buffer. Changes 2 different nametables in VDP while the other is being processed
.global Title_anim_delay
Title_anim_delay:		.space 1			// title animation delay counter
.global Title_anim_frame
Title_anim_frame:		.space 1			// title animation frame number
			.space 1				// unused
.global Next_extra_life_score
Next_extra_life_score:		.space 4*1
.global Next_extra_life_score_P2
Next_extra_life_score_P2:	.space 4*1			// left over from Sonic 2
			.space 2*1				// unused
.global Debug_P1_mappings
Debug_P1_mappings:		.space 4*1			// player 1 mappings while in debug mode
.global Debug_P2_mappings
Debug_P2_mappings:		.space 2*1			// long! // player 2 mappings while in debug mode
.global Demo_mode_flag 
Demo_mode_flag: .space 2*1			// Sonic 3 has a different address... So uh... Yes
.global Next_demo_number 
Next_demo_number: .space 2*1			// Sonic 3 has a different address... So uh... Yes
.global Blue_spheres_stage_flag 
Blue_spheres_stage_flag: .space 1	// set if a Blue Sphere special stage is being run 
                                    // Sonic 3 has a different address... So uh... Yes
			.space 1				// unused
.global V_blank_cycles 
V_blank_cycles:	.space 2*1		// the number of cycles between V-blanks
.global Graphics_flags 
Graphics_flags: .space 1			// bit 7 set := English system, bit 6 set := PAL system
							        // Sonic 3 has a different address... So uh... Yes
			.space 1				// unused
.global Debug_mode_flag 
Debug_mode_flag: .space 2*1
							// Sonic 3 has a different address... So uh... Yes
			.space 4*1				// unused
.global Level_select_flag 
Level_select_flag: .space 1
							// Sonic 3 has a different address... So uh... Yes
.global Slow_motion_flag 
Slow_motion_flag: .space 1			// Sonic 3 has a different address... So uh... Yes
.global Debug_cheat_flag 
Debug_cheat_flag: .space 2*1				// set if the debug cheat's been entered
			// Sonic 3 has a different address... So uh... Yes
.global Level_select_cheat_counter 
Level_select_cheat_counter: .space 2*1			// progress entering level select cheat, unused
							// Sonic 3 has a different address... So uh... Yes
.global Debug_mode_cheat_counter 
Debug_mode_cheat_counter: .space 2*1			// progress entering debug mode cheat, unused
							// Sonic 3 has a different address... So uh... Yes
.global Competition_mode 
Competition_mode: .space 2*1			// Sonic 3 has a different address... So uh... Yes
.global P1_character 
P1_character: .space 1			// 0 := Sonic, 1 := Tails, 2 := Knuckles
							// Sonic 3 has a different address... So uh... Yes
.global P2_character 
P2_character: .space 1
							// Sonic 3 has a different address... So uh... Yes
	.space 4*1				// unused

.global V_int_jump 
V_int_jump:	.space 6		// contains an instruction to jump to the V-int handler
							// Sonic 3 has a different address... So uh... Yes

.global H_int_jump 
H_int_jump: .space 6		// contains an instruction to jump to the H-int handler
							// Sonic 3 has a different address... So uh... Yes
.global Checksum_string 
Checksum_string:			// set to 'SM&K' once the checksum routine has run
				.space 4*1			// Sonic 3 has a different address... So uh... Yes
