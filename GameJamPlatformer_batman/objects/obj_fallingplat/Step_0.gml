//if the player touches us... start the time... then fall


if place_meeting(x, y -1, obj_Player)
{
	playerTouched = true;
}

if playerTouched
{
	fallTimer +=1;
	
	//WAIT 2 seconds
	
	if fallTimer >= fallDelay
	{
		//start falling
		fallSpeed += fallGravity
		
		y += fallSpeed;
		
		//reset  position
		if fallSpeed >= 50 
		{
			playerTouched = false;
			y = startY
			;
			fallTimer = 0;
			fallSpeed = 0;
		}
	}
	
}