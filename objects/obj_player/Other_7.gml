if(state=scr_player_shoot){
	state = scr_player_movement
	sprite_index = asset_get_index(string_copy(sprite_get_name(sprite_index),1,12))
}