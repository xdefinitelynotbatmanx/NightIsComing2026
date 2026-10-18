//ENEMY MOVEMENT

moveSpeed = 1; //enemy normal movement speed
xSpeed = 0; //H speed
moveDir = 1; //starting movement - 0 + 1

//set enemy position

startX = x;
startY = y;


//ROAM VARIABLES - BEHAVIOUR
//ENEMY TO MOVE FROM PLACE TO PLACE~ 
canRoam = true; //Can we roam - is this our behaviour?
roamDistance = 50; //how far can the enemy move before turning around?


//CHASE 
canChase = true; // can we chase the player? - is this our behaviour?

//PLAYER DETECTION
detectRange = 100; //how far left and right
detectHeight = 20; // how far up and down?


chaseSpeed = 2; //what is our speed when I am chasing you?