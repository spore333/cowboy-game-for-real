//repeat(irandom_range(10,30)){
//	xoff = random(8)
//	yoff = random(8)
//	instance_create_depth(x+xoff,y+yoff,depth,obj_xp)
//}
//instance_destroy()

global.xp+=irandom_range(10,30)
instance_destroy()