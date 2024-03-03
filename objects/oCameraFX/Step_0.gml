var target_x = global.camera_x;
var target_y = global.camera_y;

if(shaketime > 10){
	shaketime = 10;
}

if(shaketime > 0){
	shaketime --;
	r = shaketime/6
	
	target_x += random_range(-shakeamount * r, shakeamount * r);
	target_y += random_range(-shakeamount * r, shakeamount * r);


}

x = lerp(x, target_x, 0.5);
y = lerp(y, target_y, 0.5);
// 检查是否需要应用卡顿效果
if (stutter_duration > 0) {
    // 应用卡顿效果
    game_set_speed(stutter_speed, gamespeed_fps);
    stutter_duration--;
} else {
    // 恢复正常游戏速度
    game_set_speed(original_speed, gamespeed_fps);
}
