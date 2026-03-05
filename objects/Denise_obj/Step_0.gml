//prirazeni klaves u chozeni
var pressed_up = keyboard_check(vk_up) || keyboard_check (ord("W"));
var pressed_down = keyboard_check(vk_down) || keyboard_check (ord("S"));
var pressed_left = keyboard_check(vk_left) || keyboard_check (ord("A"));
var pressed_right = keyboard_check(vk_right) || keyboard_check (ord("D"));
//vytvareni smeru dx a dy
var dx = pressed_right - pressed_left;
var dy = pressed_down - pressed_up;
//vydeleni chozeni do sikma pomoci pythagorky
var len = point_distance(0,0,dx,dy);
if len > 0 {
	dx/=len
	dy/=len
}
//zavedeni pohybu rychlost krat smer
x+=move_speed * dx;
y+=move_speed * dy; 

//animace
//kdyz se hybes (len>0), tak ziskas smer dir
if(len>0){
	var dir = point_direction(0,0,dx,dy)
	//ale ten smer je ve stupnich, tak reknes, ze face je smer ale deleno 90 abys mel 1 az 4, 
	face=round(dir/90)
	//tady to upravis na 0, protoze mame face v create eventu 0 az 3, takze tam budou ty vsechny animace
	if (face==4)face=0
	sprite_index = sprites_walk[face]
}
else {
	sprite_index = sprites_idle[face]
}
	