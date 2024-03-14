// 设置速度
var move_speed = 5;

// could let camera or other obj to get player's position
global.player_x = x;
global.player_y = y;

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
if (isDashing) {
	if(mouse_x > x){
		sprite_index = dash; 
	}
	else{
		sprite_index = dash;
		image_xscale =-0.3;
		
	}
    
	
}

x += hspeed;
y += vspeed;

if place_meeting(x,y,obj_bullet2 and !isDashing) {
	gothit = true
	//hit_point-=1
	var _effect = instance_create_layer(x, y, "Effects", obj_effect2);
	apply_damage(obj_player2, 20);
	//show_debug_message(hit_point)
	sprite_index = gothitPlayer;
	var onbullet2 = instance_place(x, y, obj_bullet2);
	if (onbullet2 != noone) {
		    // Collision detected, now apply knockback
			 knockback_speed = 5;
		     knockback_direction = point_direction(obj_bullet2.x, obj_bullet2.y, x, y);

		}
	instance_destroy(onbullet2)
	alarm[1] = 20
	with (oCameraFX) {
	    stutter_duration = 15; // 假设卡顿持续5步
	}


}
if (knockback_speed > 0) {
    // Apply movement in the knockback direction
    x += lengthdir_x(knockback_speed, knockback_direction);
    y += lengthdir_y(knockback_speed, knockback_direction);

    // Gradually reduce the knockback speed to simulate friction or resistance
    knockback_speed -= 1; 

    // Prevent knockback speed from becoming negative
    if (knockback_speed < 0) {
        knockback_speed = 0;
		
    }
}

if (global.endTime == 0) { 
    global.elapsedTime = current_time - global.startTime;
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
	//show_debug_message("NONONO")

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
if (state == PlayerState.Dead && musicplay){
	audio_stop_sound(bgm);
    audio_play_sound(stop_and, 1, true);
	musicplay = false;
}


if (dash_cooldown_timer > 0) {
    dash_cooldown_timer--;
}
if (mouse_check_button_pressed(mb_right) && !isDashing && dash_cooldown_timer <= 0) {
    isDashing = true;
    dash_timer = dash_duration;
	dash_cooldown_timer = dash_cooldown;
    dash_direction = point_direction(x, y, mouse_x, mouse_y); // 或使用玩家的移动方向
}


if (isDashing) {
    x += lengthdir_x(dash_speed, dash_direction);
    y += lengthdir_y(dash_speed, dash_direction);
    dash_timer--;
    
    if (dash_timer <= 0) {
        isDashing = false;
    }
}


if (isDashing && place_meeting(x + lengthdir_x(dash_speed, dash_direction), y + lengthdir_y(dash_speed, dash_direction), obj_tree)) {

    isDashing = false;
    dash_timer = 0;
}
