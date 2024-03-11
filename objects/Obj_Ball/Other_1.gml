/// bounces off the walls


if(bbox_left < 0 or bbox_right > room_width){
	hspeed = hspeed * -1;	
}


if(bbox_top < 0){
	vspeed *= -1;
}


if(bbox_bottom > room_height){
	global.player_lives -= 1;
	instance_destroy();
	if(global.player_lives <= 0){
		obj_Control.gameover = true;
		if(global.player_score > global.high_score){
			global.high_score = global.player_score;
		}
	} else {
		instance_create_layer(xstart, ystart, "instances", obj_Ball);
	}
}