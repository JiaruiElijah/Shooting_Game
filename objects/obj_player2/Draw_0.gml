var shadowOffsetY = 10; // 根据需要调整影子的垂直偏移
draw_sprite(spr_shadow, 0, x, y + shadowOffsetY);
draw_self(); // 绘制物体本身


var healthBarWidth = 100;
var healthBarHeight = 10;
var xStart = x - healthBarWidth / 2;
var yStart = y - sprite_get_height(sprite_index) / 2 - healthBarHeight * 2;
draw_healthbar(xStart, yStart, xStart + healthBarWidth, yStart + healthBarHeight, currentHealth, c_red, c_gray, c_green, 0, true, true);


if (state == PlayerState.Dead) {

    var message = "Press space to rebirth!";

    draw_set_color(c_white);
    draw_set_font(dia); 
    draw_text(obj_player2.x, obj_player2.y + 50, message);
}

