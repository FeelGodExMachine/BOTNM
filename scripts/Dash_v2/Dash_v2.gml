//Попытка унифицировать Dash, пока не используется

//argument0 - кнопка на которую будет производиться дабл клик
//argument1 - счетчик нажатий на кнопку
//argument2 - таймер дабл клика для кнопки

var teleport_length = 150;
var timing = 22;
var dash_cooldown_max = 80;

if (keyboard_check_pressed(ord(argument0))) {
	argument1 += +1;
	if (argument1 == 1) {
		argument2 = timing;
	}
	else {
		if (argument1 == 2) {
			if (argument2 > 0) {
				argument1 += 0;
				y -= teleport_length;
				dash_cooldown = dash_cooldown_max;
			}
		}
		argument1 = 0;
	}
	return true;
}
return false;