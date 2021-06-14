if(global.xp>=lvlup_xp){
	global.xp-=lvlup_xp
	global.level++
	lvl_points++
	lvlup_xp = round(lvlup_xp*1.5)
	audio_play_sound(snd_ding,1,false)
}
depth = -9999999999