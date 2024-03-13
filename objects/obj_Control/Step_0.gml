/// creates a gameover state

if(instance_number(obj_Brick) <= 0){
	room_restart();
	global.player_lives += 1;
	global.player_score += 1000;
}
if(gameover){
	if(keyboard_check_pressed(vk_anykey)){
		room_restart();
		global.player_score = 0;
		global.player_lives = 3;
	}
}