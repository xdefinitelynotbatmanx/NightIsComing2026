//This is my camera manager! We are going to create an invisible box to track. 
var cam = view_camera[0]; //get camera

var cam_w = camera_get_view_width(cam); //get camera width
var cam_h = camera_get_view_height(cam); //get camera height

//get our cameras position!
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam); 

//dead zone - how large is our no movement box?
var box_w = 300; //CHANGE THIS VALUE FOR A BIGGER BOX
var box_h = 180; 
 
var player_x = obj_Player.x; //grab the players position relative to the camera
var player_y = obj_Player.y;

//move the camera target ONLY when player leaves the box
if (player_x < cam_x + (cam_w - box_w) /2) //left boundary
{
	cam_x = player_x - (cam_w - box_w) / 2 ;
}

//right boundary
if (player_x > cam_x + (cam_w + box_w) / 2)
{
	cam_x = player_x - (cam_w + box_w) /2;
}

// Dead zone Y axis
if (player_y < cam_y + (cam_h - box_h) /2)
{
	cam_y = player_y - (cam_h - box_h)/ 2;
}

if (player_y > cam_y + (cam_h + box_h) /2)
{
	cam_y = player_y - (cam_h + box_h) /2;
}

//keep camera in room
cam_x  = clamp(cam_x, 0, room_width - cam_w);
cam_y = clamp(cam_y, 0, room_height - cam_h);

// Smooth camera movement - smaller number = slower / larger number = faster 
var smooth = 0.12;

var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);

//set our current x and y
current_x = lerp(current_x, cam_x, smooth);
current_y = lerp(current_y, cam_y, smooth);

//MOVE THE CAMERA
camera_set_view_pos(cam, current_x, current_y);


	