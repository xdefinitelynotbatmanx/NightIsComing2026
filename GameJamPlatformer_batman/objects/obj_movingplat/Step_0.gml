//Move the platform

var oldX = x; //x position

x += moveSpeed * moveDir; //move the platform

//Can we carry the player?
//Is the player standing on us?

if place_meeting(x, y -1, obj_Player)
{
	obj_Player.x += x - oldX; 
}

if x >= startX + moveDist 
{
	moveDir = -1;
}

if x <= startX - moveDist
{
	moveDir = 1;
}
	