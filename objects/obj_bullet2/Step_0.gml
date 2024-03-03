if place_meeting(x,y,obj_tree) {
	//audio_play_sound(sdBulletHitWall,1,false)
	var _effect = instance_create_layer(x, y, "Effects", obj_effect);
	instance_destroy()
}
if place_meeting(x,y,obj_wall) {
	audio_play_sound(hitwall,1,false)
	var _effect = instance_create_layer(x, y, "Effects", obj_effect);
	instance_destroy()
}
if place_meeting(x,y,obj_wall2) {
	audio_play_sound(hitwall,1,false)
	var _effect = instance_create_layer(x, y, "Effects", obj_effect);
	instance_destroy()
}
if place_meeting(x,y,obj_wall3) {
	audio_play_sound(hitwall,1,false)
	var _effect = instance_create_layer(x, y, "Effects", obj_effect);
	instance_destroy()
}
if place_meeting(x,y, obj_player2) {
	audio_play_sound(hitbody,1,false)
	audio_play_sound(hitwall,1,false)
	//hit player and shake
	global.shaker.shaketime = 25;
}


