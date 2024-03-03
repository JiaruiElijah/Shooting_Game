if place_meeting(x,y,obj_tree) {
	audio_play_sound(hitwall,1,false)
	instance_destroy()
}

if place_meeting(x,y,obj_wall) {
	audio_play_sound(hitwall,1,false)
	instance_destroy()
}
if place_meeting(x,y,obj_wall2) {
	audio_play_sound(hitwall,1,false)
	instance_destroy()
}
if place_meeting(x,y,obj_wall3) {
	audio_play_sound(hitwall,1,false)
	instance_destroy()
}
if place_meeting(x,y, obj_enemy) {
	audio_play_sound(hitbody,1,false)
	alarm[0] = 1
	
}



