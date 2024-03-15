///colects the powerups


audio_play_sound(snd_PowerUp, 1, false);


if(image_index == 0){
	with(obj_Bat){
		image_xscale = 1.5;
		alarm[0] = 10 * room_speed;
	}
} else {
	with(obj_Ball){
		speed = spd;
	}
}
instance_destroy();