x = owner.x
y = owner.y
var _angle = 0

image_angle = _angle




if(allow_shoot == true) && instance_exists(obj_player2) && obj_player2.state == PlayerState.Alive{
	_angle = point_direction(x,y,obj_player2.x,obj_player2.y)
	var effect_x = x + lengthdir_x(30, _angle);
	var effect_y = y + lengthdir_y(30, _angle);
	var _enemy_bullet = instance_create_layer(effect_x, effect_y, "Instances_2", obj_bullet2);
	var effect_instance = instance_create_layer(effect_x, effect_y, "Effects", obj_effect);
	var decal = instance_create_depth(x, y, depth, obj_enemydecal)
	with decal {
		direction = random(360)
		knockback_speed = 10
	}
	effect_instance.direction = _angle;
	effect_instance.image_angle = _angle;
	audio_play_sound(shooting_player,1,false)
	with(_enemy_bullet){
		speed = 1;
		direction = point_direction(x,y,obj_player2.x,obj_player2.y); 
		image_angle = direction
		}
	allow_shoot = false;
	alarm[0]= 160;
	if(_angle > 90 && _angle < 270) {
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	

	}


	
} else {
	
}



