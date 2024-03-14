var shadowOffsetY = 10; // 根据需要调整影子的垂直偏移
draw_sprite(spr_shadow, 0, x, y + shadowOffsetY);
draw_self(); // 绘制物体本身


var healthBarWidth = 100;
var healthBarHeight = 10;
var xStart = x - healthBarWidth / 2;
var yStart = y - sprite_get_height(sprite_index) / 2 - healthBarHeight;
draw_healthbar(xStart, yStart, xStart + healthBarWidth, yStart + healthBarHeight, currentHealth, c_red, c_gray, c_green, 0, true, true);


if (state == PlayerState.Dead) {

    var message = "Press space to rebirth!";

    draw_set_color(c_white);
    draw_set_font(dia); 
    draw_text(obj_player2.x, obj_player2.y + 50, message);
}

if (dash_cooldown_timer > 0) {
    var bar_width = 32; // 冷却条宽度
    var bar_height = 4; // 冷却条高度
    var x_offset = -16; // 冷却条相对于玩家中心的X偏移
    var y_offset = -40; // 冷却条相对于玩家中心的Y偏移（确保它在头顶上方）
    
    var cooldown_ratio = 1 - (dash_cooldown_timer / dash_cooldown);
    var bar_fill_width = bar_width * cooldown_ratio;
    
    draw_rectangle_color(x + x_offset, y + y_offset, x + x_offset + bar_width, y + y_offset + bar_height, c_gray, c_gray, c_gray, c_gray, false);
    draw_rectangle_color(x + x_offset, y + y_offset, x + x_offset + bar_fill_width, y + y_offset + bar_height, c_blue, c_blue, c_blue, c_blue, false);
}