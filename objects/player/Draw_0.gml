draw_self()

draw_sprite(gibson,image_index,x,y)

draw_arrow(x,y,x+lengthdir_x(60,direction),y+lengthdir_y(60,direction),15)
draw_circle(x,y,15,true)
draw_circle(player.x+xmoment,player.y+ydir,8,true)
