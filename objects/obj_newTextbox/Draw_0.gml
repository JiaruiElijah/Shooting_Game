// draw textbox

//draw_sprite(spr_Text, 0, x, y)

// 使用draw_sprite_ext来绘制并调整尺寸
var scale = 0.7; // 缩放因子，小于1为缩小，大于1为放大
draw_sprite_ext(spr_Text, 0, x, y, scale, scale, 0, c_white, 1);

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