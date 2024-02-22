enum PlayerState {
    Alive,
    Dead
}


// 在Create事件中初始化状态为Alive
state = PlayerState.Alive;


global.canMove = true;

global.hasCollectedItem = false;

// initialize timmer
global.startTime = current_time; // 记录游戏开始的时间
global.endTime = 0; // 初始化结束时间
global.elapsedTime = 0; // 初始化流逝的时间

cdValue = 10;
cd = 0;

shake_duration = 0;
shake_intensity = 0;

//health system
maxHealth = 100; // 玩家的最大血量
currentHealth = maxHealth; // 玩家当前血量


/// @func apply_damage(instance, damageAmount)
/// @desc Apply damage to the given instance and check for death
/// @arg instance The instance to apply damage to
/// @arg damageAmount The amount of damage to apply

