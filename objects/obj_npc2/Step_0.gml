/// @description Insert description here
// You can write your code in this editor

image_xscale = -0.3;

if(place_meeting(x, y, obj_player)){
	if(keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x, y, "Text", obj_newTextbox);
			myTextbox.text = myText;
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
