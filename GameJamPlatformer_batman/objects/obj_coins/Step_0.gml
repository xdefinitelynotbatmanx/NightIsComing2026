//IF players touch - add coin to a counter!

if place_meeting( x,y, obj_Player)
{
	//add a coin to the player
	obj_Player.coins += 1;
	audio_play_sound(snd_hover, 1, false); //play sound
	
	//remove the coin
	
	instance_destroy();
}


//WIN CONDITION BASED ON NUMBER OF COINS

if obj_Player.coins >= 3
{
	obj_win.playerWin = true;
}