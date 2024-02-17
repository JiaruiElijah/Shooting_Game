var distanceToNPC = point_distance(x, y, obj_npc1.x, obj_npc1.y);
var distanceToNPC2 = point_distance(x, y, obj_npc2.x, obj_npc2.y);
var triggerDistance = 50;


if (distanceToNPC <= triggerDistance) {
	if(global.hasCollectedItem == false){
		//startDialogue("Example");
		
	}
	
	else{
		//startDialogue("Conversation2");
	
	}
	//global.canMove = false;
}

if (distanceToNPC2 <= triggerDistance) {
	//startDialogue("Conversation3");
}

