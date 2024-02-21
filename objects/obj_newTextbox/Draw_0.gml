// draw textbox

draw_sprite(spr_Text, 0, x, y)

// draw text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

if(charCount < string_length(text[page])){
	charCount += 1;

}




draw_set_font(dia)

draw_text(x + 10, y + yBuffer, name);
textPart = string_copy(text[page], 1, charCount);

draw_text_ext(x + xBuffer, y + yBuffer + stringHeight, textPart, stringHeight, box_with)