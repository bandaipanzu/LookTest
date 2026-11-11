var key_left = keyboard_check(ord("A"))
var key_right = keyboard_check(ord("D"))
var jump = keyboard_check_pressed(vk_space)

x_inp = key_right - key_left
logic.cursor_text = x_inp

xmoment = move_towards(xmoment, xspeedcap*x_inp, 1)	

if place_meeting(x+xmoment,y-clamp(ymoment,slope_height,infinity),platform) || place_meeting(x+xmoment,y,platform) && place_empty(x,y+slope_height,platform){
	xmoment = 0
	
}
x += xmoment


if place_meeting(x,y,platform) {
	while place_meeting(x,y-1,platform){
		y-=1
	}
	ymoment = 0
	logic.fontcolor = c_red
} else if place_meeting(x,y+ymoment,platform){
	logic.fontcolor = c_blue
	while !place_meeting(x,y+1,platform){
		y+=1
	}
	ymoment = 0
} else {
	logic.fontcolor = c_red
	ymoment += 2	
}
if jump && place_meeting(x,y,platform) {
	ymoment = -18
}
y += ymoment


//if xmoment < 0 {
//	var upper = 12	
//} else {
//	var upper = -12	
//}

if x_inp != 0 {
	ydir = abs(abs(xmoment)*-1+12)
}
if dircur == false{
	if x_inp != 0 {
		direction = point_direction(0,0,xmoment,ydir)
	}
} else {
	direction = point_direction(x,y,mouse_x,mouse_y)
}


if direction < 315 && direction > 225{
	image_index = 0
} else if direction <= 45 && direction >= 0 || direction <= 360 && direction >= 315{
	image_index = 1
} else if direction < 135 && direction > 35{
	image_index = 2
} else if direction < 225 && direction > 135 {
	image_index = 3
}