/// reducing health 
function apply_damage(instance, damageAmount) {
    instance.currentHealth -= damageAmount;
    if (instance.currentHealth <= 0) {
        // 可以在这里添加其他死亡逻辑，比如播放死亡动画
		sprite_index = player_death;
		state = PlayerState.Dead;
        //instance_destroy(instance);
    }
}