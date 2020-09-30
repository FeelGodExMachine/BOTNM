/*Все переменные, константы для обоих игроков здесь*/

//Константы
maximum_speed = 5
dash_max_speed = 40
ostanovka = 0.9
dash_ostanovka = 0.70

//Переменные
click_counters = array_create(4, 0)
click_timers = array_create(4, 0)

x_speed = 0
y_speed = 0
dash_speed_x = 0
dash_speed_y = 0

in_attack_sphere = false
is_attacked = false

block_disable = 0
dash_cooldown = 0