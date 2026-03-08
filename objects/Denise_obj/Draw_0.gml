// 1. Nejdřív vykreslíme stín (aby byl vespod)
// x + 4 a y + 4 znamená, že stín bude posunutý o 4 pixely doprava a 4 dolů.
draw_sprite_ext(sprite_index, image_index, x, y + 5, image_xscale, image_yscale, image_angle, c_black, 0.4);

// 2. Potom vykreslíme samotnou postavu (aby byla nahoře, přes stín)
draw_self();