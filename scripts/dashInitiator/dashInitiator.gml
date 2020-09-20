/*Основной класс дэшей*/

//Проверка, кнопка какого игрока нажата
if (argument0 = "1") {
    var up = ord("W")
    var left = ord("A")
    var down = ord("S")
    var right = ord("D")
} else {
    var up = vk_up
    var left = vk_left
    var down = vk_down
    var right = vk_right
}

//Если во время таймера не произошел дабл клик, счетчик кликов сбрасывается
if (double_click_up > 0 && double_click_up_timer == 0) double_click_up = 0;
if (double_click_left > 0 && double_click_left_timer == 0) double_click_left = 0;
if (double_click_down > 0 && double_click_down_timer == 0) double_click_down = 0;
if (double_click_right > 0 && double_click_right_timer == 0) double_click_right = 0;

if (dash_cooldown = 0) {
    //Счетчик кликов
    double_click_up += dashClickCheck(up);
    double_click_left += dashClickCheck(left);
    double_click_down += dashClickCheck(down);
    double_click_right += dashClickCheck(right);

    //Таймер. Стартует после первого клика
    double_click_up_timer += dashTimer(double_click_up, double_click_up_timer)
    double_click_left_timer += dashTimer(double_click_left, double_click_left_timer)
    double_click_down_timer += dashTimer(double_click_down, double_click_down_timer)
    double_click_right_timer += dashTimer(double_click_right, double_click_right_timer)

    //Проверка на даблклик
    if (doubleClickCheck(double_click_up, double_click_up_timer)) {
        y -= dashAndCdCheck()
        double_click_up = 0;
    }
    if (doubleClickCheck(double_click_left, double_click_left_timer)) {
        x -= dashAndCdCheck()
        double_click_left = 0;
    }
    if (doubleClickCheck(double_click_down, double_click_down_timer)) {
        y += dashAndCdCheck()
        double_click_down = 0;
    }
    if (doubleClickCheck(double_click_right, double_click_right_timer)) {
        x += dashAndCdCheck()
        double_click_right = 0;
    }
}

//Уменьшение таймера со временем
if (double_click_up_timer > 0) double_click_up_timer--;
if (double_click_left_timer > 0) double_click_left_timer--;
if (double_click_down_timer > 0) double_click_down_timer--;
if (double_click_right_timer > 0) double_click_right_timer--;

//Уменьшение кд со временем
if (dash_cooldown > 0) {
    dash_cooldown--;
}