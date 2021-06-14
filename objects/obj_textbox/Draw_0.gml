x = camera_get_view_x(view_camera[0])
y = (camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))-sprite_height
draw_self()
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_font(fnt_textbox)
draw_text_ext(x+indt,y+indt,d_text,8,sprite_width-(2*indt))