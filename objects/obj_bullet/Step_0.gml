if(place_meeting(x+hspeed+sign(hspeed)*3,y+vspeed,obj_solid)){
	hspeed *=-1
	audio_play_sound(snd_ricochet,1,false)
}
if(place_meeting(x+hspeed,y+vspeed+sign(vspeed)*3,obj_solid)){
	vspeed *=-1
	audio_play_sound(snd_ricochet,1,false)
}
depth = -y
age++
if(age>180){
	instance_destroy()
}

if(place_meeting(x,y,obj_enemy)){
	alarm[0]=1
	visible = false
}