xdist = x-obj_player.x
ydist = y-obj_player.y
if(max(abs(xdist),abs(ydist))>4){
	x-=xdist/20
	y-=ydist/20
}