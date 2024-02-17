// 设置速度
var move_speed = 2;


if (global.canMove == true) {
	move_speed = 2;

}
else{
	move_speed = 0;
}

// depth update
depth = -y;


hspeed = 0;
vspeed = 0;

// moving
if (keyboard_check(ord("A"))) {
    hspeed = -move_speed;
    sprite_index = Right; 
    image_xscale = -0.3;
} else if (keyboard_check(ord("D"))) {
    hspeed = move_speed;
    sprite_index = Right; 
    image_xscale = 0.3;
}

if (keyboard_check(ord("W"))) {
    vspeed = -move_speed;
    sprite_index = Up;
} else if (keyboard_check(ord("S"))) {
    vspeed = move_speed;
    sprite_index = down;
}
// speed equalization
if (hspeed != 0 && vspeed != 0) {
    hspeed *= sqrt(0.5);
    vspeed *= sqrt(0.5);
}


if (hspeed == 0 && vspeed == 0) {
    sprite_index = Stand;
}


x += hspeed;
y += vspeed;



if (global.endTime == 0) { // 如果计时器未停止
    global.elapsedTime = current_time - global.startTime;
}





