/*Основной класс дэшей*/
//argument0 - игрок (1 - первый, 2 - второй)
//click_counters - массив с количеством нажатий на кнопку
//click_timers - массив с таймером нажатий на кнопку

//Проверка, кнопка какого игрока нажата
keys = array_create(0, 0)
if (argument0 = "1") {
    keys[0] = ord("W")
    keys[1] = ord("A")
    keys[2] = ord("S")
    keys[3] = ord("D")
} else {
    keys[0] = vk_up
    keys[1] = vk_left
    keys[2] = vk_down
    keys[3] = vk_right
}

//Если во время таймера не произошел дабл клик, счетчик кликов сбрасывается
for (var i = 0; i < 4; ++i)
	if (click_counters[i] > 0 && click_timers[i] == 0) click_counters[i] = 0;

if (dash_cooldown = 0) {
	//Счетчик кликов
	for (var i = 0; i < 4; ++i)
	      click_counters[i] += dashClickCheck(keys[i])

    //Таймер. Стартует после первого клика
	for (var i = 0; i < 4; ++i)
	      click_timers[i] += dashTimer(click_counters[i], click_timers[i])

    //Проверка на даблклик
	for (var i = 0; i < 4; ++i) {
		if (doubleClickCheck(click_counters[i], click_timers[i])) {
		    switch (i) {
			    case 0:
			        y -= dashAndCdCheck()
			        break;
				case 1:
					x -= dashAndCdCheck()
					break;
				case 2:
					y += dashAndCdCheck()
					break;
				case 3:
					x += dashAndCdCheck()
					break;
			}
		click_counters[i] = 0;    
		}
	}
}

//Уменьшение таймера со временем
for (var i = 0; i < 4; ++i)
    if (click_timers[i] > 0) click_timers[i]--;

//Уменьшение кд со временем
if (dash_cooldown > 0)
    dash_cooldown--;
	