//Проверяет, был ли дабл клик на кнопку

//argument0 - счетчик нажатий на кнопку
//argument1 - таймер даблклика

if (argument0 == 2) {
    if (argument1 > 0)
        return true;
}
return false;