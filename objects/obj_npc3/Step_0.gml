/// @description Insert description here
// You can write your code in this editor

image_xscale = -0.3;

if(place_meeting(x, y, obj_player2)){
	if(keyboard_check_pressed(vk_space)){
		if(myTextbox == noone && global.enemyCount != 0){
			myTextbox = instance_create_layer(x -150, y - 100, "Text", obj_newTextbox);
			myTextbox.text = myText;
			myTextbox.depth = -1000;
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
		
		if(myTextbox == noone && global.enemyCount == 0){
			myTextbox = instance_create_layer(x -150, y - 100, "Text", obj_newTextbox);
			myTextbox.text = myText2;
			myTextbox.depth = -1000;
			myTextbox.creator = self;
			myTextbox.name = myName;
		
		
		}
	}

}

else{
	if(myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		
	}


}
