//DOES THE PLAYER EXIST?

if !instance_exists(obj_Player)
{
	exit;
}

//Does the enemy detect the player? 

var playerXDistance = abs(obj_Player.x -x); //check left and right
var playerYDistance = abs(obj_Player.y - y); //check up and down!

//CHASE BEHAVIOUR
//IS PLAYER CLOSE?

var playerDetected =
playerXDistance <= detectRange && playerYDistance <= detectHeight;

//Chase the player.
if canChase && playerDetected
{
	//player is right?
	
	if obj_Player.x > x
	{
		moveDir = 1;
	}
	
	//Player is to the left?
	
	if obj_Player.x < x 
	{
		moveDir	= -1;
	}
	
	//Move our player
	xSpeed = chaseSpeed * moveDir;
	
	//Don't walk into walls! 
	
	if !place_meeting(x + xSpeed, y, obj_Wall)
	{
		x += xSpeed
	}
	
	
} 

//ROAM BEHAVIOUR
else if canRoam 
{
	
	xSpeed = moveSpeed * moveDir;
	
	//turn around if we hit a wall
	
	if place_meeting(x + xSpeed, y, obj_Wall)
	{
		moveDir = -moveDir;
		xSpeed = moveSpeed * moveDir;
	}
	
	//MOVE (:
	if !place_meeting(x + xSpeed, y, obj_Wall)
	{
		x += xSpeed;
	}
	
	//TURN AROUND IF AT ROAMING LIMITS
	
	if x >= startX + roamDistance
	{
		moveDir = -1;
	}
	
	if x <= startX - roamDistance
	{
		moveDir= 1;
	}
}
		

	
	
	

