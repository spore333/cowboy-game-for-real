v_x = camera_get_view_x(view_camera[0])
v_y = camera_get_view_y(view_camera[0])

x=v_x
y=v_y

var t_x = x+16
var t_y = y+16


//xp bar
var xp_len = 100
var xp_width = 3
var xp_x = t_x+7

var xp_bar = (global.xp/lvlup_xp)*xp_len

draw_set_color(make_color_rgb(51,44,25))
draw_line_width(xp_x,t_y,xp_x+xp_len,t_y,xp_width)
draw_set_color(make_color_rgb(240,255,25))
draw_line_width(xp_x,t_y,xp_x+xp_bar,t_y,xp_width)
draw_set_color(c_white)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_small)
draw_text(t_x+12,t_y+xp_width,string(global.xp)+"/"+string(lvlup_xp))


//draw self and lvl
draw_self()
if(lvl_points>0){
	draw_sprite(sprite_index,1,x,y)
}


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnt_fancy)
draw_set_color(c_black)
draw_text(t_x,t_y,global.level)
