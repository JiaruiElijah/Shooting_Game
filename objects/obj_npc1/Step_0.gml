/// @description Insert description here
// You can write your code in this editor

image_xscale = -0.3;

if (global.hasCollectedItem == true){
	
	textNumber = 1;


}

if(place_meeting(x, y, obj_player)){
	if(keyboard_check_pressed(vk_space) && myTextbox == noone && textNumber == 0){
			myTextbox = instance_create_layer(x - 150, y - 100, "Text", obj_newTextbox);
			myTextbox.text = myText;
			myTextbox.depth = -1000;
			myTextbox.creator = self;
			myTextbox.name = myName;
	}
	
	if(keyboard_check_pressed(vk_space) && myTextbox == noone && textNumber == 1){
			myTextbox = instance_create_layer(x - 150, y - 100, "Text", obj_newTextbox);
			myTextbox.text = myText2;
			myTextbox.depth = -1000;
			myTextbox.creator = self;
			myTextbox.name = myName;
	}

}

else{
	if(myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		
	}


}

//if (keyboard_check_pressed(vk_space)) { // 检测到玩家与NPC的距离足够近
    //startDialogue("Example");
//}