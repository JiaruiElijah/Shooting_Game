text = "This is a long textbox which has a lot of words. I hope I could have a better life. I really want it. really hope so...."
page = 0;
charCount = 0; //自动换行计数器


xBuffer = 10;
yBuffer = 10;
box_with = sprite_get_width(spr_Text)- 2*xBuffer;//get the width of textbox
stringHeight = string_height(text);
myTextbox.depth = -1000;

creator = noone;
name = noone;