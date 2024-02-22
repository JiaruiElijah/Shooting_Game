if(!dead){
	

	//apply_damage(obj_enemy, 20); // 敌人受到20点伤害
	dead = true;
	layer = layer_get_id("bodies")
	// KICK OFF	
	//var knockback_strength = 35;
	//var direction3 = point_direction(obj_player2.x, obj_player2.y, obj_enemy.x, obj_enemy.y);
	//var knockback_x = lengthdir_x(knockback_strength, direction3);
	//var knockback_y = lengthdir_y(knockback_strength, direction3);

	//obj_enemy.x += knockback_x;
	//obj_enemy.y += knockback_y;
	audio_play_sound(aDeath, 1, false);
	
	// death

	//instance_destroy(other);

}