dead = false;
//global.enemyCount += 1;


//maxHealth = 50; // 敌人的最大血量
//currentHealth = maxHealth; // 敌人当前血量
enum EnemyState{
	Idle,
	Moving
}

state = EnemyState.Idle	

close = 150
far = 300
next_time_I_think = 5

hit_point = 2
knockback_speed = 0;
knockback_direction = 0;

gun = instance_create_layer(x,y,"Instances_2",obj_enemygun)
gun.owner = id
function takeDamage() {
	if hit_point>1 {
		hit_point-=1
		show_debug_message(hit_point)
		var onbullet1 = instance_place(x, y, obj_bullet);
		if (onbullet1 != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 10;
		    knockback_direction = point_direction(onbullet1.x, onbullet1.y, x, y);
		    var hit_by_bullet_id = onbullet1.bullet_id; 

		}
	}
	else {
		var onbullet = instance_place(x, y, obj_bullet);
		if (onbullet != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 10;
		    knockback_direction = point_direction(obj_bullet.x, obj_bullet.y, x, y);
		    var hit_by_bullet_id = onbullet.bullet_id; 

		}
		instance_create_layer(x,y,"Enemy",obj_enemyd)
		instance_destroy()
		instance_destroy(gun)
	}
}
alarm[0] = room_speed * 3;
invicible = false;
invicible_timer = 0;
invicible_duration = 20;
gothit = false