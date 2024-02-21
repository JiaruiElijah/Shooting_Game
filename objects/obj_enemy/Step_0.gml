if(dead){
	sprite_index = enemydead;
	speed = 0;
}

else{
	
	direction = point_direction(x, y, obj_player2.x, obj_player2.y);
	speed = random_range(0.5, 1.5);

	if(direction > 90 && direction < 270) {
		image_xscale = -1;

	}
	else{
		image_xscale = 1;
	

	}
}


