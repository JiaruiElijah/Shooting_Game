
    room_goto(Room3);
	audio_play_sound(Sound1, 1, false); // end
	
	

global.endTime = current_time; // record end time
global.elapsedTime = global.endTime - global.startTime; // record time consumed