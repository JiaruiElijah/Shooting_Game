if(!other.dead && state == PlayerState.Alive){
	audio_play_sound(hit, 1, false);
	// 触发震动
	//shake_duration = 10; // 震动持续的步数
	//shake_intensity = 5; // 震动的强度
	global.shaker.shaketime = 15; 

	apply_damage(obj_player2, 10); // 玩家受到10点伤害
	with (oCameraFX) {
	    stutter_duration = 15; // 假设卡顿持续5步
	}


}

var knockback_strength = 85;
var direction2 = point_direction(obj_enemy.x, obj_enemy.y, obj_player2.x, obj_player2.y);
var knockback_x = lengthdir_x(knockback_strength, direction2);
var knockback_y = lengthdir_y(knockback_strength, direction2);

// 应用击退
if(!other.dead && state == PlayerState.Alive){
	obj_player2.x += knockback_x;
	obj_player2.y += knockback_y;

}
