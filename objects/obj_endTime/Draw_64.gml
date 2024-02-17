
var minutes = floor(global.elapsedTime / 60000); 
var seconds = floor((global.elapsedTime % 60000) / 1000); 
var milliseconds = global.elapsedTime % 1000; 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(dia);

var timeString = string(minutes) + ":" + string(seconds) + ":" + string(milliseconds);
draw_text(x, y+50, timeString);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(fintTitle);
draw_text(x, y-50, "Your time is ");

draw_set_font(dia);

draw_text_color(x,y+110,"Press space back to home page",c_red,c_red,c_black,c_black,1);