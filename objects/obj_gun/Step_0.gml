if(state == PlayerState.Alive){
	x = obj_player2.x;
	y = obj_player2.y;


	image_angle = point_direction(obj_player2.x, obj_player2.y, mouse_x, mouse_y)
}
else{
	image_angle = Right;


}

if (image_angle > 0 && image_angle < 180){
	layer = layer_get_id("gunback")

}
else{
	layer = layer_get_id("gunfront")

}