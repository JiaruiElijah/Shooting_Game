//global.does_sleep = does_sleep;
global.shaker = self;

shaketime = 0;
shakeamount = 10;// the upper range of shaking

// 初始化卡顿效果变量\

stutter_duration = 0;
//stutter_duration = global.shutter_duration; // 卡顿持续的步数
stutter_speed = 20; // 卡顿期间的游戏速度（较低的值表示更慢的速度）
original_speed = room_speed; // 存储原始游戏速度


//function sleep(){
	//game_set_speed(12, gamespeed_fps);
	//alarm_set(0, 1);

//}
