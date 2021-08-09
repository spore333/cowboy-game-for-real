
if(place_meeting(x,y,obj_player)){
	
}else{
	x+=(sign(obj_player.x-x)*10)/distance_to_object(obj_player)
	y+=(sign((obj_player.y-20)-y)*10)/distance_to_object(obj_player)
}
depth = -y

if (place_meeting(x,y,obj_player)){
	instance_destroy(self)
}