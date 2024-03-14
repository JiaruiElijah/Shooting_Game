enum PlayerState {
    Alive,
    Dead
}


state = PlayerState.Alive;


global.canMove = true;
// could let camera or other obj to get player's position
global.player_x = x;
global.player_y = y;
global.hasCollectedItem = false;

// initialize timmer
global.startTime = current_time; // 记录游戏开始的时间
global.endTime = 0; // 初始化结束时间
global.elapsedTime = 0; // 初始化流逝的时间

//cdValue = 10;
//cd = 0;



shake_duration = 0;
shake_intensity = 0;
knockback_speed = 0;
knockback_direction = 0;

//health system
maxHealth = 100; // 玩家的最大血量
currentHealth = maxHealth; // 玩家当前血量

musicplay = true;
/// @func apply_damage(instance, damageAmount)
/// @desc Apply damage to the given instance and check for death
/// @arg instance The instance to apply damage to
/// @arg damageAmount The amount of damage to apply

dash_speed = 10; // 冲刺速度
dash_duration = 15; // 冲刺持续的步数
isDashing = false; // 是否正在冲刺
dash_timer = 0; // 冲刺计时器
dash_cooldown = 60; // 冲刺冷却时间，以步为单位，这里设为1秒（假设游戏运行在60FPS）
dash_cooldown_timer = 0; // 冲刺冷却计时器

