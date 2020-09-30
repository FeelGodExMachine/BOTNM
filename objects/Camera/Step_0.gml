distanceBetweenPlayersX = (Pl1.x - Pl2.x) / 2;
distanceBetweenPlayersY = (Pl1.y - Pl2.y) / 2;

minPlayerX = Pl2.x;
minPlayerY = Pl2.y;

camera_set_view_pos(view_camera[1],  minPlayerX + distanceBetweenPlayersX - camera_get_view_width(view_camera[1]) / 2,
					minPlayerY + distanceBetweenPlayersY - camera_get_view_height(view_camera[1]) / 2);
	
//var zoom_factor1 = abs(distanceBetweenPlayersX) / (1280 / 3);
//var zoom_factor2 = abs(distanceBetweenPlayersY) / (720 / 3);
//var zoom_factor = min(max(max(zoom_factor1, zoom_factor2), 0.45), 1,5);
zoom_factor1 = abs(distanceBetweenPlayersX) / (window_get_width() / 3);
zoom_factor2 = abs(distanceBetweenPlayersY) / (window_get_height() / 3);
var new_zoom_factor = min(max(max(zoom_factor1, zoom_factor2), min_zoom), max_zoom);
zoom_factor += (new_zoom_factor - zoom_factor)  * smooth



view_set_wport(view_camera[1], 1280);
view_set_hport(view_camera[1], 720);
camera_set_view_size(view_camera[1], 1280 * zoom_factor, 720 * zoom_factor);