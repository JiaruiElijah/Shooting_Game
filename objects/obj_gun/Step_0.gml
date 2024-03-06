if(state == PlayerState.Alive){
	x = global.player_x;
	y = global.player_y;


	//image_angle = point_direction(obj_player2.x, obj_player2.y, mouse_x, mouse_y)
}
else{
	image_angle = 0;
}

image_angle = point_direction(x, y, mouse_x, mouse_y)

if (image_angle > 90 && image_angle < 270){
	layer = layer_get_id("gunback")
	image_yscale = - 0.3;
	fixrange_y = 0;
}
else{
	layer = layer_get_id("gunfront")
	image_yscale = 0.3;
	fixrange_y = 12;

}
if(image_angle > 270){
	fixrange_x = 10;

}
else if(90 > image_angle > 0){
	fixrange_x = -10;

}
// shooting varaince
var positionVariance = 10; // 最大位置偏差
// direction
var baseDirection = point_direction(x, y, mouse_x, mouse_y);
var directionVariance = 5; // 最大偏差角度
var actualDirection = baseDirection + random_range(-directionVariance, directionVariance);



if mouse_check_button(mb_left){
	global.shaker.shaketime = 15; //shaking shooting
}
//shooting
if mouse_check_button(mb_left) && allow_shoot {
	show_debug_message("shoot")
	
	//screenshake(2,20)
	var effect_x = global.player_x + lengthdir_x(30, image_angle) +fixrange_x+ random_range(-positionVariance, positionVariance);
	var effect_y = global.player_y + lengthdir_y(30, image_angle) -fixrange_y+ random_range(-positionVariance, positionVariance);
	
	var onbullet = instance_create_depth(effect_x, effect_y,depth,obj_bullet);
	//with (instance_create_depth(effect_x, effect_y, depth, obj_bullet)) {
	    //direction = actualDirection;
	    //speed = 5;
	    //image_angle = direction;
	//}
	with onbullet {
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 5
		image_angle = direction
	}	

	var effect_instance = instance_create_layer(global.player_x + lengthdir_x(40, image_angle), global.player_y + lengthdir_y(40, image_angle), "Effects", obj_effect);//子弹爆炸
	var decal = instance_create_depth(x, y, depth, obj_decal) // 抛弹子弹壳
	with decal {
		direction = random(360)
		knockback_speed = 10
	}
	effect_instance.direction = image_angle;
	effect_instance.image_angle = image_angle;
	
	audio_play_sound(shooting_player,1,false);

	allow_shoot = false;
}

if(!allow_shoot) { 
	shoot_timer++;
	if(shoot_timer > shoot_duration) {
		allow_shoot = true;
		shoot_timer = 0;
	}
}

if(obj_player2.state == PlayerState.Dead){
	allow_shoot = false;

}