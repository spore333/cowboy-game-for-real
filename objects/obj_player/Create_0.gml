instance_create_depth(x,y,depth,obj_view)
time = 0
movespeed = 1.5
state = scr_player_movement

switch(room){
	case rm_start:
		global.encounter = "Unknown"
		room = rm_combat
		var txt
		txt[0] = "I'm gettin thirsty, I best be gettin' to the nearest town."
		txt[1] = "Too bad my horse conked out, guess I gotta walk usin' the WASD keys"
		var text = scr_init_text(txt,"player")
		scr_auto_textbox(text)
		break;
}