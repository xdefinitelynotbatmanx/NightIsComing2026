//INPUT

rightMove = keyboard_check(ord("D")); //CHECK have we pressed D?
leftMove = keyboard_check(ord("A")); // CHECK have we pressed A?

jumpKeyPressed = keyboard_check_pressed(vk_space); //SPACE = Jump
jumpKeyPressed = clamp(jumpKeyPressed, 0,1); 

moveDir = rightMove - leftMove; //this will move us!

xSpeed = moveDir * moveSpeed;

// X Collision

var _subPixel = .5; 

if place_meeting(x + xSpeed, y, obj_Wall) ||
place_meeting(x + xSpeed, y, obj_parent_platform)
{
	var _pixelCheck = _subPixel * sign(xSpeed);
	
	while !place_meeting( x + _pixelCheck, y, obj_Wall)
	&& !place_meeting(x + _pixelCheck, y, obj_parent_platform)
	{
		x += _pixelCheck; //keep moving until the next small step is going to hit a wall.
	}
	
	xSpeed =0;
} 

x += xSpeed;

//JUMP JUMP JUMP JUMP JUMPING THIS IS FOR JUMPING JUMP JUMP JUMP JUMP JUMP JUMP JUMP!!! BOING

//Gravity - always add gravity so we fall
	ySpeed += grav; //always add gravity to our y speed. We fall.
	
	if ySpeed > fallVel {ySpeed = fallVel;} //smooth falling. 


if jumpKeyPressed 
{
	if jumpsLeft > 0 
	{
		ySpeed = jumpSpeed;
		jumpsLeft -= 1;
		audio_play_sound(snd_jump, 1, false);
	}
	
}


// Y (Jump) Collision Check

if place_meeting(x, y + ySpeed, obj_Wall) ||
place_meeting(x, y +ySpeed, obj_parent_platform)
{
	var _pixelCheck = _subPixel * sign(ySpeed);
	while !place_meeting(x, y + _pixelCheck, obj_Wall)
	&& !place_meeting(x, y + _pixelCheck, obj_parent_platform)
	{
		y += _pixelCheck;
	}
	
	if ySpeed > 0
	{
		jumpsLeft =2;
		
	}
	
	ySpeed = 0; //we have collided with wall/floor
}


y += ySpeed; // fall

//DEATH AND LIFE

if place_meeting(x,y, obj_parent_death) || place_meeting(x,y, obj_parent_enemy)
{
	playerLives -= 1;
	playerDeath += 1;
	audio_play_sound(snd_death, 1, false);
	
	if (playerLives <= 0)
	{
		room_goto(rm_ending);
	}
	
	else 
	{
		x = startX;
		y = startY;
		
		xSpeed = 0;
		ySpeed = 0;
		
		//reset our obj_enemyparent object
		
		with (obj_parent_enemy)
		{
			x = startX;
			y = startY;
			
			xSpeed = 0;
			moveDir = 1;
			
		}
		
	}
	
	
}

if (playerLives < previousLives)
{
	x = startX;
		y = startY;
		
		xSpeed = 0;
		ySpeed = 0;
		
		//reset all enemies 
		with (obj_parent_enemy)
		{
			x = startX;
			y = startY;
			
			xSpeed = 0;
			moveDir = 1;
			
		}
}

previousLives = playerLives;


