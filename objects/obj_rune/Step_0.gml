repeat(30){
	var px = irandom(sprite_width-1)
	var py = irandom(sprite_height-1)
	var arr = sprite_getpixel(spr_test_rune, 0, px, py)
	while(arr[3] = 0){
		var px = irandom(sprite_width-1)
		var py = irandom(sprite_height-1)
		var arr = sprite_getpixel(spr_test_rune, 0, px, py)
	}
	with(instance_create_depth(x+(px-(sprite_width/2)),y+(py-(sprite_height/2)),depth,obj_particle)){
		decay = 0.08
		color = make_color_rgb(arr[0],arr[1],arr[2])
	}
}