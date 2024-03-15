/// bounces off and brakes bricks


audio_play_sound(snd_Break, 1, false);


move_bounce_all(true);


global.player_score += 100;
if(speed > 30) speed += 0.2;


instance_destroy(other);