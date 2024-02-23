// 设置速度
var move_speed = 5;


if (global.canMove == true) {
	move_speed = 2;

}
else{
	move_speed = 0;
}



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


cd --;

if(cd <= 0 && mouse_check_button(mb_left) && state == PlayerState.Alive){
	cd = cdValue;
	audio_play_sound(aBullet, 1, false);
	with(instance_create_layer(x, y, "bullets", obj_bullet)){
		direction = obj_gun.image_angle;
		speed = 8;
	
	
	}


}

// camera
if (shake_duration > 0) {
    var shake_x = random_range(-shake_intensity, shake_intensity);
    var shake_y = random_range(-shake_intensity, shake_intensity);
    camera_set_view_pos(view_camera[0], view_xview[0] + shake_x, view_yview[0] + shake_y);
    shake_duration -= 1;
} else {
    // 确保视图返回原位
    camera_set_view_pos(view_camera[0], view_xview[0], view_yview[0]);
}


if (currentHealth <= 0) {
		state = PlayerState.Dead;
	    sprite_index = player_death2; 
		//instance_destroy(obj_gun);
		global.canMove = false;
		//show_debug_message("Running")
		if(keyboard_check(vk_space)){
			alarm[0] = room_speed * 3; 
		}
		
	

}

if (currentHealth > 0){
	show_debug_message("NONONO")

}

var numberOfEnemies = 15; 

if (keyboard_check_pressed(vk_enter)) {
    for (var i = 0; i < numberOfEnemies; i++) {
        var enemyX = random_range(0, room_width); // 随机X位置
        var enemyY = random_range(0, room_height); // 随机Y位置

        // 在随机位置生成敌人
        instance_create_layer(enemyX, enemyY, "Enemy", obj_enemy);
    }
}

if (keyboard_check_pressed(vk_tab)) {
    room_goto(Room2); 
}





