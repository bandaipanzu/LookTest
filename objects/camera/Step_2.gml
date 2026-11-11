camx = player.x
camy = player.y
if camlerp == false{
	x = camx
	y = camy
} else {
	x += (camx - x)/4
	y += (camy - y)/4
}

camera_set_view_pos(view_camera[0],x-camera_get_view_width(0)/2,y-camera_get_view_height(0)/2)
