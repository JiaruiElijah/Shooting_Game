// Alarm[0] 事件
// 重置玩家位置到初始位置或重生点
x = 100;
y = 500;

global.canMove = true;
// 重置玩家状态为正常
state = PlayerState.Alive;

// 切换回正常的Sprite
sprite_index = Stand;

// 重置其他需要的状态，如血量
currentHealth = maxHealth;

// 可能还需要重置其他游戏状态或逻辑，以适应重生


