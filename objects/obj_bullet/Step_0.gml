if(place_meeting(x+hspeed+1,y+vspeed,obj_solid)){
	hspeed *=-1
	audio_play_sound(snd_ricochet,1,false)
}
if(place_meeting(x+hspeed,y+vspeed+1,obj_solid)){
	vspeed *=-1
	audio_play_sound(snd_ricochet,1,false)
}
depth = -y
age++
if(age>180){
	instance_destroy()
}