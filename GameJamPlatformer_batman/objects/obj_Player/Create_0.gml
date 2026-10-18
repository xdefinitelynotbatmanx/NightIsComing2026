//This is for storing player data: movement and speed.
//Moving

moveDir = 0;

//Speed

moveSpeed = 2; //how fast can we move?
xSpeed = 0; //left and right
ySpeed = 0; //up and down 

//Jumping 

grav = .3; //this is our gravity.
fallVel= 4; //velocity - how quickly are we falling?
jumpSpeed = -4.5; //jump height/speed CRANK UP if needed. 
jumpsLeft = 2; //double jump variable



//DEATH AND LIFE
playerLives = 3;
playerDeath = 0;
previousLives = playerLives;

//STARTING POSITION
startX = x;
startY = y; 

//COLLECTIBLES COUNTER

coins = 0;
persistent = false ;//false = no reset each level... true = keep values

