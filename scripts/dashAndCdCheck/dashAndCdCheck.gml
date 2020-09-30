//Определяет, можно ли сделать дэш

var dash_cooldown_max = 80;

if (dash_cooldown == 0) {
    dash_cooldown = dash_cooldown_max
    return true;
}
return false;