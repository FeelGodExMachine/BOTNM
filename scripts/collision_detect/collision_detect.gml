if (place_meeting(x + x_speed + dash_speed_x, y, Wall)){
	x_speed = 0
	dash_speed_x = 0
}
if (place_meeting(x, y + y_speed + dash_speed_y, Wall)){
	y_speed = 0
	dash_speed_y = 0
}