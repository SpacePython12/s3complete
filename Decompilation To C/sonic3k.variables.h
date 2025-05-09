#ifndef SONIC3K_VARS_H
#define SONIC3K_VARS_H 1

// ---------------------------------------------------------------------------
// Object Status Table offsets
// ---------------------------------------------------------------------------

// universally followed object conventions:
#define render_flags 4 // bitfield // refer to SCHG for details
#define height_pixels 6 // byte
#define width_pixels 7 // byte
#define priority 8 // word // in units of 0x80
#define art_tile 0xA // word // PCCVH AAAAAAAAAAA // P = priority, CC = palette line, V = y-flip, H = x-flip, A = starting cell index of art
#define mappings 0xC // long
#define x_pos 0x10 // word, or long when extra precision is required
#define y_pos 0x14 // word, or long when extra precision is required
#define mapping_frame 0x22 // byte
// ---------------------------------------------------------------------------
// conventions followed by most objects:
#define routine 5 // byte
#define x_vel 0x18 // word
#define y_vel 0x1A // word
#define y_radius 0x1E // byte // collision height / 2
#define x_radius 0x1F // byte // collision width / 2
#define anim 0x20 // byte
#define prev_anim 0x21 // byte // when this isn't equal to anim the animation restarts
#define anim_frame 0x23 // byte
#define anim_frame_timer 0x24 // byte
#define angle 0x26 // byte // angle about axis into plane of the screen (00 = vertical, 360 degrees = 256)
#define status 0x2A // bitfield // refer to SCHG for details
// ---------------------------------------------------------------------------
// conventions followed by many objects but not Sonic/Tails/Knuckles:
#define x_pixel x_pos // word // x-coordinate for objects using screen positioning
#define y_pixel y_pos // word // y-coordinate for objects using screen positioning
#define collision_flags 0x28 // byte // TT SSSSSS // TT = collision type, SSSSSS = size
#define collision_property 0x29 // byte // usage varies, bosses use it as a hit counter
#define shield_reaction 0x2B // byte // bit 3 = bounces off shield, bit 4 = negated by fire shield, bit 5 = negated by lightning shield, bit 6 = negated by bubble shield
#define subtype 0x2C // byte
#define ros_bit 0x3B // byte // the bit to be cleared when an object is destroyed if the ROS flag is set
#define ros_addr 0x3C // word // the RAM address whose bit to clear when an object is destroyed if the ROS flag is set
#define routine_secondary 0x3C // byte // used by monitors for this purpose at least
#define vram_art 0x40 // word // address of art in VRAM (same as art_tile * 0x20)
#define parent 0x42 // word // address of the object that owns or spawned this one, if applicable
#define child_dx 0x42 // byte // X offset of child relative to parent
#define child_dy 0x43 // byte // Y offset of child relative to parent
#define parent3 0x46 // word // parent of child objects
#define parent2 0x48 // word // several objects use this instead
#define respawn_addr 0x48 // word // the address of this object's entry in the respawn table
// ---------------------------------------------------------------------------
// conventions specific to Sonic/Tails/Knuckles:
#define ground_vel 0x1C // word // overall velocity along ground, not updated when in the air
#define double_jump_property 0x25 // byte // remaining frames of flight / 2 for Tails, gliding-related for Knuckles
#define flip_angle 0x27 // byte // angle about horizontal axis (360 degrees = 256)
#define status_secondary 0x2B // byte // see SCHG for details
#define air_left 0x2C // byte
#define flip_type 0x2D // byte // bit 7 set means flipping is inverted, lower bits control flipping type
#define object_control 0x2E // byte // bit 0 set means character can jump out, bit 7 set means he can't
#define double_jump_flag 0x2F // byte // meaning depends on current character, see SCHG for details
#define flips_remaining 0x30 // byte
#define flip_speed 0x31 // byte
#define move_lock 0x32 // word // horizontal control lock, counts down to 0
#define invulnerability_timer 0x34 // byte // decremented every frame
#define invincibility_timer 0x35 // byte // decremented every 8 frames
#define speed_shoes_timer 0x36 // byte // decremented every 8 frames
#define status_tertiary 0x37 // byte // see SCHG for details
#define character_id 0x38 // byte // 0 for Sonic, 1 for Tails, 2 for Knuckles
#define scroll_delay_counter 0x39 // byte // incremented each frame the character is looking up/down, camera starts scrolling when this reaches 120
#define next_tilt 0x3A // byte // angle on ground in front of character
#define tilt 0x3B // byte // angle on ground
#define stick_to_convex 0x3C // byte // used to make character stick to convex surfaces such as the rotating discs in CNZ
#define spin_dash_flag 0x3D // byte // bit 1 indicates spin dash, bit 7 indicates forced roll
#define spin_dash_counter 0x3E // word
#define jumping 0x40 // byte
#define interact 0x42 // word // RAM address of the last object the character stood on
#define default_y_radius 0x44 // byte // default value of y_radius
#define default_x_radius 0x45 // byte // default value of x_radius
#define top_solid_bit 0x46 // byte // the bit to check for top solidity (either 0xC or 0xE)
#define lrb_solid_bit 0x47 // byte // the bit to check for left/right/bottom solidity (either 0xD or 0xF)
// ---------------------------------------------------------------------------
// conventions followed by some/most bosses:
#define boss_hitcount2 0x29
// ---------------------------------------------------------------------------
// when childsprites are activated (i.e. bit #6 of render_flags set)
#define mainspr_childsprites 0x16	// amount of child sprites
#define sub2_x_pos 0x18	//x_vel
#define sub2_y_pos 0x1A	//y_vel
#define sub2_mapframe 0x1D
#define sub3_x_pos 0x1E	//y_radius
#define sub3_y_pos 0x20	//anim
#define sub3_mapframe 0x23	//anim_frame
#define sub4_x_pos 0x24	//anim_frame_timer
#define sub4_y_pos 0x26	//angle
#define sub4_mapframe 0x29	//collision_property
#define sub5_x_pos 0x2A	//status
#define sub5_y_pos 0x2C	//subtype
#define sub5_mapframe 0x2F
#define sub6_x_pos 0x30
#define sub6_y_pos 0x32
#define sub6_mapframe 0x35
#define sub7_x_pos 0x36
#define sub7_y_pos 0x38
#define sub7_mapframe 0x3B
#define sub8_x_pos 0x3C
#define sub8_y_pos 0x3E
#define sub8_mapframe 0x41
#define sub9_x_pos 0x42
#define sub9_y_pos 0x44
#define sub9_mapframe 0x47
#define next_subspr 0x6
// ---------------------------------------------------------------------------
// property of all objects:
#define object_size 0x4A // the size of an object's status table entry
#define next_object object_size
// ---------------------------------------------------------------------------
// unknown or inconsistently used offsets that are not applicable to sonic/tails:
#define objoff_12 2+x_pos
#define objoff_16 2+y_pos

typedef enum objoff {
    objoff_1C=0x1C,
    objoff_1D=0x1D,
    objoff_27=0x27,
    objoff_2E=0x2E,
    objoff_2F=0x2F,
    objoff_30=0x30,
    objoff_31=0x31,
    objoff_32=0x32,
    objoff_33=0x33,
    objoff_34=0x34,
    objoff_35=0x35,
    objoff_36=0x36,
    objoff_37=0x37,
    objoff_38=0x38,
    objoff_39=0x39,
    objoff_3A=0x3A,
    objoff_3B=0x3B,
    objoff_3C=0x3C,
    objoff_3D=0x3D,
    objoff_3E=0x3E,
    objoff_3F=0x3F,
    objoff_40=0x40,
    objoff_41=0x41,
    objoff_42=0x42,
    objoff_43=0x43,
    objoff_44=0x44,
    objoff_45=0x45,
    objoff_46=0x46,
    objoff_47=0x47,
    objoff_48=0x48,
    objoff_49=0x49,
} objoff;

 // ---------------------------------------------------------------------------
// Bits 3-6 of an object's status after a SolidObject call is a
// bitfield with the following meaning:
#define p1_standing_bit 3
#define p2_standing_bit p1_standing_bit + 1

#define p1_standing 1<<p1_standing_bit
#define p2_standing 1<<p2_standing_bit

#define pushing_bit_delta 2
#define p1_pushing_bit p1_standing_bit + pushing_bit_delta
#define p2_pushing_bit p1_pushing_bit + 1

#define p1_pushing 1<<p1_pushing_bit
#define p2_pushing 1<<p2_pushing_bit


#define standing_mask p1_standing|p2_standing
#define pushing_mask p1_pushing|p2_pushing

// ---------------------------------------------------------------------------
// Controller Buttons
//
// Buttons bit numbers
#define button_up 0
#define button_down 1
#define button_left 2
#define button_right 3
#define button_B 4
#define button_C 5
#define button_A 6
#define button_start 7
// Buttons masks (1 << x == pow(2,x))
#define button_up_mask (1<<button_up)	// 0x01
#define button_down_mask (1<<button_down)	// 0x02
#define button_left_mask (1<<button_left)	// 0x04
#define button_right_mask (1<<button_right)	// 0x08
#define button_B_mask (1<<button_B)	// 0x10
#define button_C_mask (1<<button_C)	// 0x20
#define button_A_mask (1<<button_A)	// 0x40
#define button_start_mask (1<<button_start)	// 0x80

// ---------------------------------------------------------------------------
// Player Status Variables
#define Status_Facing 0
#define Status_InAir 1
#define Status_Roll 2
#define Status_OnObj 3
#define Status_RollJump 4
#define Status_Push 5
#define Status_Underwater 6

// ---------------------------------------------------------------------------
// Player status_secondary variables
#define Status_Shield 0
#define Status_Invincible 1
#define Status_SpeedShoes 2

#define Status_FireShield 4
#define Status_LtngShield 5
#define Status_BublShield 6

// ---------------------------------------------------------------------------
// Elemental Shield DPLC variables
#define LastLoadedDPLC 0x34
#define Art_Address 0x38
#define DPLC_Address 0x3C

// ---------------------------------------------------------------------------
// Address equates
// ---------------------------------------------------------------------------

// Z80 addresses
#define Z80_RAM 0xA00000 // start of Z80 RAM
#define Z80_RAM_end 0xA02000 // end of non-reserved Z80 RAM
#define Z80_bus_request 0xA11100
#define Z80_reset 0xA11200

#define SRAM_access_flag 0xA130F1
#define Security_addr 0xA14000
// ---------------------------------------------------------------------------

// I/O Area
#define HW_Version 0xA10001
#define HW_Port_1_Data 0xA10003
#define HW_Port_2_Data 0xA10005
#define HW_Expansion_Data 0xA10007
#define HW_Port_1_Control 0xA10009
#define HW_Port_2_Control 0xA1000B
#define HW_Expansion_Control 0xA1000D
#define HW_Port_1_TxData 0xA1000F
#define HW_Port_1_RxData 0xA10011
#define HW_Port_1_SCtrl 0xA10013
#define HW_Port_2_TxData 0xA10015
#define HW_Port_2_RxData 0xA10017
#define HW_Port_2_SCtrl 0xA10019
#define HW_Expansion_TxData 0xA1001B
#define HW_Expansion_RxData 0xA1001D
#define HW_Expansion_SCtrl 0xA1001F
// ---------------------------------------------------------------------------

// VDP addresses
#define VDP_data_port 0xC00000
#define VDP_control_port 0xC00004
#define PSG_input 0xC00011
// ---------------------------------------------------------------------------

extern void * Chunk_table;
extern void * Level_layout_header;
extern void * Level_layout_main;
extern void * Object_respawn_table_2 ;
extern void * Ring_status_table_2 ;
extern void * Block_table;
extern void * SStage_collision_response_list ;
extern void * SStage_unkA500 ;
extern void * SStage_unkA600 ;
extern void * HScroll_table;
extern void * _unkA880 ;
extern void * _unkA8E0 ;
extern void * Nem_code_table;
extern void * Sprite_table_input;
extern void * Player_1;
extern void * Player_2;
extern void * Reserved_object_3;
extern void * Dynamic_object_RAM;
extern void * Breathing_bubbles;
extern void * Breathing_bubbles_P2;
extern void * Tails_tails_2P;
extern void * Tails_tails;
extern void * Dust;
extern void * Dust_P2;
extern void * Shield;
extern void * Shield_P2;
extern void * Invincibility_stars;
extern void * Invincibility_stars_P2;
extern void * Wave_Splash;
extern void * Conveyor_belt_load_array;
extern void * Kos_decomp_buffer;
extern void * H_scroll_buffer;
extern void * Collision_response_list;
extern void * Pos_table_P2;
extern void * Pos_table;
extern void * Competition_saved_data;
extern void * Save_pointer ;
extern void * Emerald_flicker_flag;
extern void * Saved_data ;
extern void * Ring_status_table;
extern void * Object_respawn_table;
extern void * H_scroll_amount;
extern void * V_scroll_amount;
extern void * H_scroll_amount_P2;
extern void * V_scroll_amount_P2;
extern void * _unkEE08;
extern void * Scroll_lock;
extern void * Scroll_lock_P2;
extern void * Camera_target_min_X_pos;
extern void * Camera_target_max_X_pos;
extern void * Camera_target_min_Y_pos;
extern void * Camera_target_max_Y_pos;
extern void * Camera_min_X_pos;
extern void * Camera_max_X_pos;
extern void * Camera_min_Y_pos;
extern void * Camera_max_Y_pos;
extern void * Camera_min_X_pos_P2;
extern void * Camera_max_X_pos_P2;
extern void * Camera_min_Y_pos_P2;
extern void * Camera_max_Y_pos_P2;
extern void * H_scroll_frame_offset;
extern void * Pos_table_index;
extern void * H_scroll_frame_offset_P2;
extern void * Pos_table_index_P2;
extern void * Distance_from_top;
extern void * Distance_from_top_P2;
extern void * Deform_lock;
extern void * Camera_max_Y_pos_changing;
extern void * Dynamic_resize_routine;
extern void * Fast_V_scroll_flag;
extern void * V_scroll_value_P2_copy;
extern void * Camera_X_diff;
extern void * Camera_Y_diff;
extern void * Ring_start_addr_ROM;
extern void * Ring_end_addr_ROM;
extern void * Ring_start_addr_RAM;
extern void * Apparent_zone;
extern void * Apparent_act;
extern void * Palette_fade_timer;
extern void * _unkEE52;
extern void * _unkEE56;
extern void * _unkEE5A;
extern void * _unkEE5C;
extern void * Act3_flag;
extern void * Camera_X_pos_P2;
extern void * Camera_Y_pos_P2;
extern void * Camera_X_pos_P2_copy;
extern void * Camera_Y_pos_P2_copy;
extern void * _unkEE70;
extern void * _unkEE74;
extern void * Camera_X_pos;
extern void * Camera_Y_pos;
extern void * Camera_X_pos_copy;
extern void * Camera_Y_pos_copy;
extern void * Camera_X_pos_rounded;
extern void * Camera_Y_pos_rounded;
extern void * Camera_X_pos_BG_copy;
extern void * _unkEE8E;
extern void * Camera_Y_pos_BG_copy;
extern void * Camera_X_pos_BG_rounded;
extern void * Camera_Y_pos_BG_rounded;
extern void * _unkEE98;
extern void * _unkEE9C;
extern void * _unkEEA0;
extern void * _unkEEA2;
extern void * Plane_double_update_flag;
extern void * Special_V_int_routine;
extern void * Screen_X_wrap_value;
extern void * Screen_Y_wrap_value;
extern void * Camera_Y_pos_mask;
extern void * Layout_row_index_mask;
extern void * _unkEEB0;
extern void * Special_events_routine;
extern void * Events_fg_0;
extern void * Events_fg_1;
extern void * Events_fg_2;
extern void * _unkEEBA;
extern void * Level_repeat_offset;
extern void * Events_fg_3;
extern void * Events_routine_fg;
extern void * Events_routine_bg;
extern void * Events_fg_4;
extern void * Events_fg_5;
extern void * Draw_delayed_position;
extern void * Draw_delayed_rowcount;
extern void * Screen_shake_flag;
extern void * Screen_shake_offset;
extern void * Screen_shake_last_offset;
extern void * Events_bg;
extern void * _unkEEEA;
extern void * _unkEEEE;
extern void * _unkEEF2;
extern void * _unkEEF4;
extern void * _unkEEF6;
extern void * _unkEEFA;
extern void * Spritemask_flag;
extern void * Use_normal_sprite_table;
extern void * Switch_sprite_table;
extern void * _unkEF40_1;
extern void * _unkEF44_2;
extern void * Competition_menu_selection;
extern void * Not_ghost_flag;
extern void * Competition_menu_zone;
extern void * Dataselect_entry;
extern void * Dataselect_nosave_player;
extern void * Competition_menu_monitors;
extern void * Demo_start_button;
extern void * Demo_data_addr;
extern void * SRAM_mask_interrupts_flag;
extern void * Object_index_addr;
extern void * Act3_ring_count;
extern void * Act3_timer;
extern void * Camera_Y_pos_coarse_back;
extern void * Glide_screen_shake;
extern void * _unkEF68;
extern void * Special_stage_zone_and_act;
extern void * HPZ_special_stage_completed;
extern void * Current_special_stage_2;
extern void * HPZ_current_special_stage;
extern void * Ending_running_flag;
extern void * Plane_buffer_2_addr;
extern void * Demo_hold_counter;
extern void * Demo_hold_buttons;
extern void * Demo_number;
extern void * Ring_consumption_count;
extern void * Ring_consumption_list;
extern void * Target_water_palette;
extern void * Water_palette;
extern void * Plane_buffer;
extern void * VRAM_buffer;
extern void * Game_mode;
extern void * Ctrl_1_held_logical;
extern void * Ctrl_1_pressed_logical;
extern void * Ctrl_1_held;
extern void * Ctrl_1_pressed;
extern void * Ctrl_2_held;
extern void * Ctrl_2_pressed;
extern void * _tempF608;
extern void * VDP_reg_1_command;
extern void * Demo_timer;
extern void * V_scroll_value_FG;
extern void * V_scroll_value_BG;
extern void * _unkF61A;
extern void * V_scroll_value_FG_P2;
extern void * V_scroll_value_BG_P2;
extern void * Teleport_active_timer;
extern void * Teleport_active_flag;
extern void * H_int_counter_command;
extern void * Palette_fade_index;
extern void * Palette_fade_count;
extern void * Lag_frame_count;
extern void * V_int_routine;
extern void * Sprites_drawn;
extern void * Water_palette_data_addr;
extern void * Palette_cycle_counter0;
extern void * Palette_cycle_counter1;
extern void * RNG_seed;
extern void * Game_paused;
extern void * DMA_trigger_word;
extern void * H_int_flag;
extern void * Water_level;
extern void * Mean_water_level;
extern void * Target_water_level;
extern void * Water_speed;
extern void * Water_entered_counter;
extern void * Water_full_screen_flag;
extern void * Do_Updates_in_H_int;
extern void * Palette_cycle_counters;
extern void * Palette_frame;
extern void * Palette_timer;
extern void * Super_palette_status;
extern void * _unkF660;
extern void * _unkF662;
extern void * Background_collision_flag;
extern void * Disable_death_plane;
extern void * Hyper_Sonic_flash_timer;
extern void * Super_Tails_flag;
extern void * Palette_frame_Tails;
extern void * Palette_timer_Tails;
extern void * Ctrl_2_held_logical;
extern void * Ctrl_2_pressed_logical;
extern void * _unkF66C;
extern void * Super_frame_count;
extern void * Scroll_force_positions;
extern void * Scroll_forced_X_pos;
extern void * Scroll_forced_Y_pos;
extern void * Nem_decomp_queue;
extern void * Nem_write_routine;
extern void * Nem_repeat_count;
extern void * Nem_palette_index;
extern void * Nem_previous_row;
extern void * Nem_data_word;
extern void * Nem_shift_value;
extern void * Nem_patterns_left;
extern void * Nem_frame_patterns_left;
extern void * Tails_CPU_interact;
extern void * Tails_CPU_idle_timer;
extern void * Tails_CPU_flight_timer;
extern void * Tails_CPU_routine;
extern void * Tails_CPU_target_X;
extern void * Tails_CPU_target_Y;
extern void * _unkF70E;
extern void * _unkF70F;
extern void * Rings_manager_routine;
extern void * Level_started_flag;
extern void * _unkF712;
extern void * AIZ1_palette_cycle_flag;
extern void * Water_flag;
extern void * Flying_carrying_Sonic_flag;
extern void * Flying_picking_Sonic_timer;
extern void * _unkF740;
extern void * _unkF744;
extern void * Tails_CPU_star_post_flag;
extern void * Ctrl_1_held_title;
extern void * Ctrl_1_pressed_title;
extern void * _unkF74A;
extern void * _unkF74B;
extern void * _unkF74C;
extern void * _unkF74E;
extern void * Disable_wall_grab;
extern void * Max_speed;
extern void * Acceleration;
extern void * Deceleration;
extern void * Player_prev_frame;
extern void * Primary_Angle;
extern void * Secondary_Angle;
extern void * Object_load_routine;
extern void * Camera_X_pos_coarse;
extern void * Camera_Y_pos_coarse;
extern void * Object_load_addr_front;
extern void * Object_load_addr_back;
extern void * Object_respawn_index_front;
extern void * Object_respawn_index_back;
extern void * Pal_fade_delay;
extern void * Collision_addr;
extern void * Boss_flag;
extern void * _unkF7B0;
extern void * Primary_collision_addr;
extern void * Secondary_collision_addr;
extern void * MHZ_pollen_counter;
extern void * _unkF7C1;
extern void * _unkF7C2;
extern void * _unkF7C3;
extern void * _unkF7C4;
extern void * Reverse_gravity_flag;
extern void * _unkF7C7;
extern void * WindTunnel_flag;
extern void * WindTunnel_flag_P2;
extern void * Ctrl_1_locked;
extern void * Ctrl_2_locked;
extern void * Chain_bonus_counter;
extern void * Time_bonus_countdown;
extern void * Ring_bonus_countdown;
extern void * Camera_X_pos_coarse_back;
extern void * _unkF7DC;
extern void * Player_prev_frame_P2;
extern void * Player_prev_frame_P2_tail;
extern void * Level_trigger_array;
extern void * Anim_Counters;
extern void * Sprite_table_buffer;
extern void * _unkFA80;
extern void * _unkFA82;
extern void * _unkFA83;
extern void * _unkFA84;
extern void * _unkFA86;
extern void * _unkFA88;
extern void * _unkFA89;
extern void * _unkFA8A;
extern void * _unkFA8C;
extern void * _unkFA8E;
extern void * _unkFA90;
extern void * Target_camera_max_X_pos;
extern void * Target_camera_min_X_pos;
extern void * Target_camera_min_Y_pos;
extern void * Target_camera_max_Y_pos;
extern void * Slotted_object_bits;
extern void * _unkFAA2;
extern void * _unkFAA3;
extern void * _unkFAA4;
extern void * Signpost_addr;
extern void * _unkFAA8;
extern void * _unkFAA9;
extern void * End_of_level_flag;
extern void * _unkFAAB;
extern void * _unkFAAC;
extern void * _unkFAAD;
extern void * _unkFAAE;
extern void * _unkFAB0;
extern void * _unkFAB2;
extern void * _unkFAB4;
extern void * _unkFAB6;
extern void * _unkFAB8;
extern void * _unkFAB9;
extern void * _unkFABA;
extern void * _unkFABC;
extern void * _unkFABD;
extern void * _unkFABE;
extern void * Palette_rotation_disable;
extern void * _unkFAC0;
extern void * _unkFAC1;
extern void * _unkFAC2;
extern void * _unkFAC4;
extern void * _unkFAC8;
extern void * _unkFACC;
extern void * _unkFACD;
extern void * Pal_fade_delay2;
extern void * Palette_rotation_custom;
extern void * Palette_rotation_data;
extern void * _unkFAF0;
extern void * _unkFAF4;
extern void * _unkFAF8;
extern void * _unkFAFA;
extern void * _unkFAFC;
extern void * DMA_queue;
extern void * DMA_queue_slot;
extern void * Normal_palette;
extern void * Target_palette;
extern void * Stack_contents;
extern void * Restart_level_flag;
extern void * Level_frame_counter;
extern void * Debug_object;
extern void * Debug_placement_routine;
extern void * Debug_placement_type;
extern void * Debug_camera_delay;
extern void * Debug_camera_speed;
extern void * V_int_run_count;
extern void * Current_zone;
extern void * Current_act;
extern void * Life_count;
extern void * Current_special_stage;
extern void * Continue_count;
extern void * Super_Sonic_Knux_flag;
extern void * Time_over_flag;
extern void * Extra_life_flags;
extern void * Update_HUD_life_count;
extern void * Update_HUD_ring_count;
extern void * Update_HUD_timer;
extern void * Update_HUD_score;
extern void * Ring_count;
extern void * Timer;
extern void * Score;
extern void * Last_star_post_hit;
extern void * Saved_last_star_post_hit;
extern void * Saved_zone_and_act;
extern void * Saved_X_pos;
extern void * Saved_Y_pos;
extern void * Saved_ring_count;
extern void * Saved_timer;
extern void * Saved_art_tile;
extern void * Saved_solid_bits;
extern void * Saved_camera_X_pos;
extern void * Saved_camera_Y_pos;
extern void * Saved_mean_water_level;
extern void * Saved_water_full_screen_flag;
extern void * Saved_extra_life_flags;
extern void * Saved_camera_max_Y_pos;
extern void * Saved_dynamic_resize_routine;
extern void * Saved_status_secondary;
extern void * Special_bonus_entry_flag;
extern void * Saved2_last_star_post_hit;
extern void * Saved2_zone_and_act;
extern void * Saved2_X_pos;
extern void * Saved2_Y_pos;
extern void * Saved2_ring_count;
extern void * Saved2_timer;
extern void * Saved2_art_tile;
extern void * Saved2_solid_bits;
extern void * Saved2_camera_X_pos;
extern void * Saved2_camera_Y_pos;
extern void * Saved2_mean_water_level;
extern void * Saved2_water_full_screen_flag;
extern void * Saved2_extra_life_flags;
extern void * Saved2_camera_max_Y_pos;
extern void * Saved2_dynamic_resize_routine;
extern void * LRZ_rocks_routine;
extern void * LRZ_rocks_addr_front;
extern void * LRZ_rocks_addr_back;
extern void * Oscillating_table;
extern void * _unkFEB0;
extern void * _unkFEB1;
extern void * Rings_frame_timer;
extern void * Rings_frame;
extern void * _unkFEB4;
extern void * _unkFEB5;
extern void * Ring_spill_anim_counter;
extern void * Ring_spill_anim_frame;
extern void * Ring_spill_anim_accum;
extern void * AIZ_vine_angle;
extern void * _unkFEBE;
extern void * Extra_life_flags_P2;
extern void * Max_speed_P2;
extern void * Acceleration_P2;
extern void * Deceleration_P2;
extern void * Life_count_P2;
extern void * _unkFEC7;
extern void * Total_ring_count;
extern void * Total_ring_count_P2;
extern void * Monitors_broken;
extern void * Monitors_broken_P2;
extern void * Ring_count_P2;
extern void * Timer_P2;
extern void * Score_P2;
extern void * _unkFEDA;
extern void * _unkFEDC;
extern void * _unkFEDD;
extern void * _unkFEDE;
extern void * Results_screen_2P;
extern void * Perfect_rings_left;
extern void * _unkFF06;
extern void * Player_mode;
extern void * Player_option;
extern void * Kos_decomp_queue_count;
extern void * Kos_decomp_stored_registers;
extern void * Kos_decomp_stored_SR;
extern void * Kos_decomp_bookmark;
extern void * Kos_description_field;
extern void * Kos_decomp_queue;
extern void * Kos_modules_left;
extern void * Kos_last_module_size;
extern void * Kos_module_queue;
extern void * _unkFF7C;
extern void * _unkFF7E;
extern void * Level_select_repeat;
extern void * Level_select_option;
extern void * Sound_test_sound;
extern void * Title_screen_option;
extern void * _tempFF88;
extern void * Competition_mode_monitors;
extern void * Competition_mode_type;
extern void * _tempFF8C;
extern void * Total_bonus_countup;
extern void * Level_music;
extern void * Collected_special_ring_array;
extern void * Saved2_status_secondary;
extern void * Respawn_table_keep;
extern void * _tempFF98;
extern void * Saved_apparent_zone_and_act;
extern void * Saved2_apparent_zone_and_act;
extern void * Blue_spheres_header_flag;
extern void * Blue_spheres_mode;
extern void * Blue_spheres_menu_flag;
extern void * Blue_spheres_current_stage;
extern void * Blue_spheres_current_level;
extern void * Blue_spheres_option;
extern void * Blue_spheres_progress_flag;
extern void * Blue_spheres_difficulty;
extern void * Blue_spheres_target_difficulty;
extern void * SK_alone_flag;
extern void * Chaos_emerald_count;
extern void * Super_emerald_count;
extern void * Collected_emeralds_array;
extern void * Emeralds_converted_flag;
extern void * SK_special_stage_flag;
extern void * Title_anim_buffer;
extern void * Title_anim_delay;
extern void * Title_anim_frame;
extern void * Next_extra_life_score;
extern void * Next_extra_life_score_P2;
extern void * Debug_P1_mappings;
extern void * Debug_P2_mappings;
extern void * Demo_mode_flag ;
extern void * Next_demo_number ;
extern void * Blue_spheres_stage_flag ;
extern void * V_blank_cycles ;
extern void * Graphics_flags ;
extern void * Debug_mode_flag ;
extern void * Level_select_flag ;
extern void * Slow_motion_flag ;
extern void * Debug_cheat_flag ;
extern void * Level_select_cheat_counter ;
extern void * Debug_mode_cheat_counter ;
extern void * Competition_mode ;
extern void * P1_character ;
extern void * P2_character ;
extern void * V_int_jump ;
extern void * H_int_jump ;
extern void * Checksum_string ;
extern void * SStage_scalar_index_0;
extern void * SStage_scalar_index_1;
extern void * SStage_scalar_index_2;
extern void * SStage_scalar_result_0;
extern void * SStage_scalar_result_1;
extern void * SStage_scalar_result_2;
extern void * SStage_scalar_result_3;
extern void * Special_stage_anim_frame;
extern void * Special_stage_X_pos;
extern void * Special_stage_Y_pos;
extern void * Special_stage_angle;
extern void * Special_stage_velocity;
extern void * Special_stage_turning;
extern void * Special_stage_bumper_lock;
extern void * Special_stage_prev_anim_frame;
extern void * Special_stage_palette_frame;
extern void * Special_stage_turn_lock;
extern void * Special_stage_advancing;
extern void * Special_stage_jumping;
extern void * Special_stage_fade_timer;
extern void * Special_stage_prev_X_pos;
extern void * Special_stage_prev_Y_pos;
extern void * Special_stage_spheres_left;
extern void * Special_stage_ring_count;
extern void * Special_stage_sphere_HUD_flag;
extern void * Special_stage_extra_life_flags;
extern void * Special_stage_rate_timer;
extern void * Special_stage_jumping_P2;
extern void * Special_stage_rings_left;
extern void * Special_stage_rate;
extern void * Special_stage_palette_addr;
extern void * Special_stage_clear_timer;
extern void * Special_stage_clear_routine;
extern void * Special_stage_emerald_timer;
extern void * Special_stage_interact;
extern void * Special_stage_started;
extern void * SStage_extra_sprites;

#define Sprite_table_buffer_2 ramaddr( 0xFF7880 ) // 0x280 bytes // alternate sprite table for player 1 in competition mode
#define Sprite_table_buffer_P2 ramaddr( 0xFF7B00 ) // 0x280 bytes // sprite table for player 2 in competition mode
#define Sprite_table_buffer_P2_2 ramaddr( 0xFF7D80 ) // 0x280 bytes // alternate sprite table for player 2 in competition mode

#define RAM_start 0xFF0000
#define Object_respawn_table_2 Level_layout_header+0x400
#define Ring_status_table_2 Level_layout_header+0x600
#define SStage_collision_response_list Block_table+0x1400
#define SStage_unkA500 Block_table+0x1500
#define SStage_unkA600 Block_table+0x1600
#define _unkA880 HScroll_table+0x80
#define _unkA8E0 HScroll_table+0xE0
#define Object_RAM Player_1
#define Dynamic_object_RAM_end Breathing_bubbles
#define Level_object_RAM Dynamic_object_RAM_end
#define Super_stars Tails_tails_2P
#define Object_RAM_end Wave_Splash+object_size
#define Pos_table_P2 SStage_scalar_index_0
#define Stat_table Pos_table_P2
#define Camera_RAM H_scroll_amount
#define Apparent_zone_and_act Apparent_zone
#define SStage_results_object_addr Events_bg+0xE
#define FBZ_cloud_addr _unkEEEA
#define Vscroll_buffer _unkEEEA
#define Event_LBZ2_DeathEgg _unkEF40_1
#define _unkEF44_1 _unkEF44_2
#define Ring_consumption_table Ring_consumption_count
#define SStage_layout_buffer Target_water_palette
#define Water_palette_line_2 Water_palette+0x20
#define Water_palette_line_3 Water_palette+0x40
#define Water_palette_line_4 Water_palette+0x60
#define Ctrl_1_logical Ctrl_1_held_logical
#define Ctrl_1 Ctrl_1_held
#define Ctrl_2 Ctrl_2_held
#define V_scroll_value V_scroll_value_FG
#define V_scroll_value_P2 V_scroll_value_FG_P2
#define H_int_counter H_int_counter_command+1
#define Palette_fade_info Palette_fade_index
#define Ctrl_2_logical Ctrl_2_held_logical
#define Nem_decomp_source Nem_decomp_queue
#define Nem_decomp_destination Nem_decomp_queue+4
#define Nem_decomp_vars Nem_write_routine
#define Ctrl_1_title Ctrl_1_held_title
#define Normal_palette_line_2 Normal_palette+0x20
#define Normal_palette_line_3 Normal_palette+0x40
#define Normal_palette_line_4 Normal_palette+0x60
#define Target_palette_line_2 Target_palette+0x20
#define Target_palette_line_3 Target_palette+0x40
#define Target_palette_line_4 Target_palette+0x60
#define System_stack Stack_contents+0x100
#define Debug_placement_mode Debug_placement_routine
#define Current_zone_and_act Current_zone
#define Timer_minute Timer+1
#define Timer_second Timer+2
#define Timer_frame Timer+3
#define Oscillating_table_end _unkFEB0
#define Timer_minute_P2 Timer_P2+1
#define Kos_decomp_source Kos_decomp_queue
#define Kos_decomp_destination Kos_decomp_queue+4
#define Kos_module_source Kos_module_queue
#define Kos_module_destination Kos_module_queue+4
#define Emerald_count Chaos_emerald_count
#define V_int_addr V_int_jump+2
#define H_int_addr H_int_jump+2
#define SStage_extra_sprites *
#define palette_line_0 (0<<13)
#define palette_line_1 (1<<13)
#define palette_line_2 (2<<13)
#define palette_line_3 (3<<13)
#define high_priority (1<<15)
#define tile_mask 0x07FF
#define drawing_mask 0x7FFF
#define VRAM_Plane_A_Name_Table 0xC000
#define VRAM_Plane_B_Name_Table 0xE000
#define ArtTile_ArtKos_S3MenuBG 0x0001
#define ArtTile_ArtKos_Competition_LevSel 0x029F
#define ArtTile_ArtKos_Competition_ModeSel 0x034A
#define ArtTile_ArtKos_Competition_Results 0x034A
#define ArtTile_ArtKos_Competition_CharSel 0x05C9
#define ArtTile_ArtKos_Save_Misc 0x029F
#define ArtTile_ArtKos_Save_Extra 0x0454
#define ArtTile_Monitors 0x04C4
#define ArtTile_CutsceneKnux 0x04DA
#define ArtTile_Player_1 0x0680
#define ArtTile_Player_2 0x06A0
#define ArtTile_Player_2_Tail 0x06B0
#define ArtTile_Ring 0x06BC
#define ArtTile_Shield 0x079C
#define ArtTile_Shield_Sparks 0x07BB
#define ArtTile_DashDust 0x07E0
#define ArtTile_DashDust_P2 0x07F0
#define Mus__First *
#define Mus__End *
#define sfx_First *
#define sfx__FirstContinuous *
#define sfx__End *

typedef enum mus_Command {
     mus_FadeOut = 0xE1,
     mus_Stop,
     mus_MutePSG,
     mus_StopSFX,
     mus_FadeOut2,
     mus_FA = 0xFA,
     mus_StopSEGA = 0xFE,
     mus_PlaySEGA,
} mus_Command;

typedef enum mus_IDs {
     mus_Invalid,
     mus_AIZ1,
     mus_AIZ2,
     mus_HCZ1,
     mus_HCZ2,
     mus_MGZ1,
     mus_MGZ2,
     mus_CNZ1,
     mus_CNZ2,
     mus_FBZ1,
     mus_FBZ2,
     mus_ICZ1,
     mus_ICZ2,
     mus_LBZ1,
     mus_LBZ2,
     mus_MHZ1,
     mus_MHZ2,
     mus_SOZ1,
     mus_SOZ2,
     mus_LRZ1,
     mus_HPZ,
     mus_SSZ,
     mus_DEZ1,
     mus_DEZ2,
     mus_MinibossK,
     mus_EndBoss,
     mus_DDZ,
     mus_MagneticOrbs,
     mus_SpecialStage,
     mus_SlotMachine,
     mus_Gumball,
     mus_Knuckles,
     mus_ALZ,
     mus_BPZ,
     mus_DPZ,
     mus_CGZ,
     mus_EMZ,
     mus_TitleScreen,
     mus_Credits3,
     mus_GameOver,
     mus_Continue,
     mus_GotThroughAct,
     mus_ExtraLife,
     mus_Emerald,
     mus_Invincibility,
     mus_CompetitionMenu,
     mus_Super,
     mus_DataSelect,
     mus_FinalBoss,
     mus_Drowning,
     mus_Ending,
     mus_CreditsK,
} mus_IDs;

typedef enum sfx_IDs {
     sfx_RingRight = 0x33,
     sfx_RingLeft,
     sfx_Death,
     sfx_Skid,
     sfx_SpikeHit,
     sfx_Bubble,
     sfx_Splash,
     sfx_Shield,
     sfx_Drown,
     sfx_Roll,
     sfx_Break,
     sfx_FireShield,
     sfx_BubbleShield,
     sfx_UnknownShield,
     sfx_ElectricShield,
     sfx_InstaAttack,
     sfx_FireAttack,
     sfx_BubbleAttack,
     sfx_ElectricAttack,
     sfx_SuperAlt,
     sfx_SandwallRise,
     sfx_Blast,
     sfx_Thump,
     sfx_Grab,
     sfx_WaterfallSplash,
     sfx_GlideLand,
     sfx_Projectile,
     sfx_MissileExplode,
     sfx_FlamethrowerQuiet,
     sfx_BossActivate,
     sfx_MissileThrow,
     sfx_SpikeMove,
     sfx_Charging,
     sfx_BossLazer,
     sfx_BlockConveyor,
     sfx_FlipBridge,
     sfx_Geyser,
     sfx_FanLatch,
     sfx_Collapse,
     sfx_UnknownCharge,
     sfx_Switch,
     sfx_MetalSpark,
     sfx_FloorThump,
     sfx_Lazer,
     sfx_Crash,
     sfx_BossZoom,
     sfx_BossHitFloor,
     sfx_Jump,
     sfx_Starpost,
     sfx_PulleyGrab,
     sfx_BlueSphere,
     sfx_AllSpheres,
     sfx_LevelProjectile,
     sfx_Perfect,
     sfx_PushBlock,
     sfx_Goal,
     sfx_ActionBlock,
     sfx_Splash2,
     sfx_UnknownShift,
     sfx_BossHit,
     sfx_Rumble2,
     sfx_LavaBall,
     sfx_Shield2,
     sfx_Hoverpad,
     sfx_Transporter,
     sfx_TunnelBooster,
     sfx_BalloonPlatform,
     sfx_TrapDoor,
     sfx_Balloon,
     sfx_GravityMachine,
     sfx_Lightning,
     sfx_BossMagma,
     sfx_SmallBumpers,
     sfx_ChainTension,
     sfx_UnknownPump,
     sfx_GroundSlide,
     sfx_FrostPuff,
     sfx_IceSpikes,
     sfx_TubeLauncher,
     sfx_SandSplash,
     sfx_BridgeCollapse,
     sfx_UnknownPowerUp,
     sfx_UnknownPowerDown,
     sfx_Alarm,
     sfx_MushroomBounce,
     sfx_PulleyMove,
     sfx_WeatherMachine,
     sfx_Bouncy,
     sfx_ChopTree,
     sfx_ChopStuck,
     sfx_UnknownFlutter,
     sfx_UnknownRevving,
     sfx_DoorOpen,
     sfx_DoorMove,
     sfx_DoorClose,
     sfx_GhostAppear,
     sfx_BossRecovery,
     sfx_ChainTick,
     sfx_BossHand,
     sfx_MetalLand,
     sfx_EnemyBreath,
     sfx_BossProjectile,
     sfx_UnknownPlink,
     sfx_SpringLatch,
     sfx_ThumpBoss,
     sfx_SuperEmerald,
     sfx_Targeting,
     sfx_Clank,
     sfx_SuperTransform,
     sfx_MissileShoot,
     sfx_UnknownOminous,
     sfx_FloorLauncher,
     sfx_GravityLift,
     sfx_MetalTransform,
     sfx_UnknownRise,
     sfx_LaunchGrab,
     sfx_LaunchReady,
     sfx_EnergyZap,
     sfx_AirDing,
     sfx_Bumper,
     sfx_Spindash,
     sfx_Continue,
     sfx_LaunchGo,
     sfx_Flipper,
     sfx_EnterSS,
     sfx_Register,
     sfx_Spring,
     sfx_Error,
     sfx_BigRing,
     sfx_Explode,
     sfx_Diamonds,
     sfx_Dash,
     sfx_SlotMachine,
     sfx_Signpost,
     sfx_RingLoss,
     sfx_Flying,
     sfx_FlyTired,
     sfx_SlideSkidLoud,
     sfx_LargeShip,
     sfx_EggmanSiren,
     sfx_BossRotate,
     sfx_FanBig,
     sfx_FanSmall,
     sfx_FlamethrowerLoud,
     sfx_GravityTunnel,
     sfx_BossPanic,
     sfx_UnknownSpin,
     sfx_WaveHover,
     sfx_CannonTurn,
     sfx_SlideSkidQuiet,
     sfx_SpikeBalls,
     sfx_LightTunnel,
     sfx_Rumble,
     sfx_BigRumble,
     sfx_DeathEggRiseLoud,
     sfx_WindQuiet,
     sfx_WindLoud,
     sfx_Rising,
     sfx_UnknownFlutter2,
     sfx_GumballTab,
     sfx_DeathEggRiseQuiet,
     sfx_TurbineHum,
     sfx_LavaFall,
     sfx_UnknownZap,
     sfx_ConveyorPlatform,
     sfx_UnknownSaw,
     sfx_MagneticSpike,
     sfx_LeafBlower,
     sfx_WaterSkid,
} sfx_IDs;

#endif