/*Собственно, страшный код из повторений, 
его можно переписать используя какие-нибудь enum, но мне лень (Тимофей)*/

var teleport_length = 150;
var timing = 22;
var dash_cooldown_max = 80;

if (argument0 = "1"){  //Проверка, кнопка какого игрока нажата
	var up = ord("W")
	var left = ord("A")
	var down =  ord("S")
	var right =  ord("D")
} else {
	var up = vk_up
	var left = vk_left
	var down =  vk_down
	var right =  vk_right
}
	
if (dash_cooldown = 0) {
	if (keyboard_check_pressed(up)) {
		double_click_W += +1;
		if (double_click_W == 1) {
			double_click_W_timer = timing;
		}
		else {
			if (double_click_W == 2) {
				if (double_click_W_timer > 0) {
					double_click_W += 0;
					y -= teleport_length;
					dash_cooldown = dash_cooldown_max;
				}
			}
			double_click_W = 0;
		}
	}

	if (keyboard_check_pressed(left)) {
		double_click_A += +1;
		if (double_click_A == 1) {
			double_click_A_timer = timing;
		}

		else {
			if (double_click_A == 2) {
				if (double_click_A_timer > 0) {
					double_click_A += 0;
					x -= teleport_length;
					dash_cooldown = dash_cooldown_max;
				}
			}
			double_click_A = 0;
		}
	}

	if (keyboard_check_pressed(down)) {
		double_click_S += +1;
		if (double_click_S == 1) {
			double_click_S_timer = timing;
		}
		else {
			if (double_click_S == 2) {
				if (double_click_S_timer > 0) {
					double_click_S += 0;
					y += teleport_length;
					dash_cooldown = dash_cooldown_max;
				}
			}
			double_click_S = 0;
		}
	}

	if (keyboard_check_pressed(right)) {
		double_click_D += 1;
		if (double_click_D == 1) {
			double_click_D_timer = timing;
		}
		else {
			if (double_click_D == 2) {
				if (double_click_D_timer > 0) {
					double_click_D += 0;
					x += teleport_length;
					dash_cooldown = dash_cooldown_max;
				}
			}
			double_click_D = 0;
		}
	}
}
	
double_click_W_timer--;
double_click_A_timer--;
double_click_S_timer--;
double_click_D_timer--;

if (dash_cooldown > 0) {
	dash_cooldown--;
}


