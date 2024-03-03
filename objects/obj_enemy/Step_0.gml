//if(dead){
	//sprite_index = enemydead;
	///speed = 0;

	//global.enemyCount -= 1;

	///if (global.enemyCount <= 0) {
		
	//}
//
//}

//else{
	
	//direction = point_direction(x, y, obj_player2.x, obj_player2.y);
	//speed = random_range(0.5, 1.5);

	//if(direction > 90 && direction < 270) {
		//image_xscale = -1;

	//}
	//else{
		//image_xscale = 1;
	

	//}
//}
randomize()
switch state {
	//chase state
	case EnemyState.Idle:
	speed = 0
	break;
	
	case EnemyState.Moving:
	var dir = point_direction(x, y, target_x, target_y);
        direction = dir;
        speed = 2; // Adjust speed as needed
        
        // Check if near the target point to switch back to idle sooner
        if (point_distance(x, y, target_x, target_y) < 10) {
            state = EnemyState.Idle;
            speed = 0;
            alarm[0] = room_speed * random_range(0, 1.5); // Idle for 2 to 4 seconds
        }
		if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_tree)) {
            // If a collision is detected, switch to idle state and reset the alarm
			knockback_direction *=-1
            state = EnemyState.Idle;
            speed = 0;
            alarm[0] = room_speed * (random_range(0, 1.5)); // Go idle before trying to move again
        }
	break;
}

if place_meeting(x,y,obj_bullet) && !invicible {
	var _effect = instance_create_layer(x, y, "Effects", obj_effect2);
	takeDamage()
	invicible = true
}
if(invicible) { 
	invicible_timer++;
	if(invicible_timer > invicible_duration) {
		invicible = false;
		invicible_timer = 0;
	}
}
image_speed = 1
if speed != 0 image_xscale = sign(speed)
if speed != 0 && gothit == false{
		sprite_index = enemy
		/*if !audio_is_playing(sdStep) {
			audio_play_sound(sdStep,1,false)
		}*/
	} else if gothit != true{
		sprite_index = enemy
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

if place_meeting(x,y,obj_bullet) {
	gothit = true
	sprite_index = enemydead;
	alarm[1] = 20	
}




