//Has the player touched us? If yes - bounce

if place_meeting(x, y -1, obj_Player)
{
	obj_Player.ySpeed = bounceSpeed;
	audio_play_sound(snd_hover, 1, false); //set loop to false
}