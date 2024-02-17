// draw textbox

draw_sprite(spr_Text, 0, x, y)

// draw text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

draw_set_font(dia)
draw_text_ext(x, y, text[page], stringHeight, box_with)